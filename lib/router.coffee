Router.configure
    layoutTemplate: 'layout'

Router.map ->
    @route 'home',
        path: '/'
        waitOn: ->
            @subscribe 'rooms'
        data: ->
            rooms: Rooms.find()

    @route 'room',
        path: '/rooms/:_id'
        waitOn: ->
            @subscribe 'rooms'
        data: ->
            Rooms.findOne @params._id
