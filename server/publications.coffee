Meteor.publish 'rooms', ->
    Rooms.find()
