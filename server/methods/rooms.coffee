Meteor.methods
    'roomCreate': (topic) ->
        throw new Meteor.Error '400' unless topic
        throw new Meteor.Error '403' unless Meteor.userId()
        sessionId = openTokClient.createSession()
        Rooms.insert topic: topic, authorId: Meteor.userId(), sessionId: sessionId
