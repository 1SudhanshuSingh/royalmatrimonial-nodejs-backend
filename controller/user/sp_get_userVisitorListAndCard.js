const { executeStoredProcedure } = require("../../helpers/storedProcedure");

const getUserVisitorListAndCard = (req, res) => {
  const values = [
    req.body.userId,
    req.body.maxVisitorId,
    req.body.limit,
  ];
  executeStoredProcedure("sp_get_userVisitorListAndCard", [values]).then((result) => {
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

module.exports = getUserVisitorListAndCard;
