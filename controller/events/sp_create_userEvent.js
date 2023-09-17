const { executeStoredProcedure } = require("../../helpers/storedProcedure");

const createUserEvent = (req, res) => {
  const values = [
    req.body.eventID,         // INT
    req.body.userId,          // INT
    req.body.userGuestCount,  // INT
    req.body.userEventStatus, // CHAR -- I:Interested; S: Start Payment,P:Purchased,F:Payment Failed, A:Attended,N:Not Attended,C: Raised Cancellation,R:Refunded
];

  executeStoredProcedure("sp_create_userEvent", [values]).then((result) => {
    if (result["0"]["output"] < 0) {
      res.json(result);
    } else {
      try {
        res.json({
          ...result["0"],
          jsonResponse: JSON.parse(result["0"].jsonResponse),
          status: 200,
        });
      } catch (error) {
        throw error;
      }
    }
  });
};

module.exports = createUserEvent;
