class Notifications {
  constructor() {}

  recieveInterest(ids, names) {
    const templateID = "REC-INTEREST";
    const notificationParams = {
      fromUserId: ids.fromUserId,
      toUserId: ids.toUserId,
      shortMessage: `${names.toUserName}! You have received interest from ${names.fromUserName}`,
    };
    return { templateID, notificationParams };
  }

  acceptInterest(ids, names) {
    const templateID = "SEND-INTEREST";
    const notificationParams = {
      fromUserId: ids.fromUserId,
      toUserId: ids.toUserId,
      shortMessage: `${names.toUserName}! You have accepted interest from ${names.fromUserName}`,
    };
    return { templateID, notificationParams };
  }

  shortlist(ids, names) {
    const templateID = "SHORTLIST";
    const notificationParams = {
      fromUserId: ids.fromUserId,
      toUserId: ids.toUserId,
      shortMessage: `${names.toUserName}! ${names.fromUserName} has shortlisted your profile`,
    };
    return { templateID, notificationParams };
  }

  eventPurchase(id, name, details) {
    const templateID = "EVENT-PURCH";
    const notificationParams = {
      eventId: id,
      eventName: name,
      eventDetails: details,
      shortMessage: `You have booked your slots for ${name} event. Details are ${details}`,
    };
    return { templateID, notificationParams };
  }

  packagePurchase(id, name, details) {
    const templateID = "PACKAGE-PURCH";
    const notificationParams = {
      packageId: id,
      packageName: name,
      packageDetails: details,
      shortMessage: `You have purchased/upgraded ${name}. Details are ${details}`,
    };
    return { templateID, notificationParams };
  }
}

module.exports = Notifications;
