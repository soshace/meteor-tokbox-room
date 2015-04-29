Template.home.events
    'click tr': (event) ->
        Router.go 'room', _id: @_id

    'submit .room-create': (event) ->
        event.preventDefault()
        form = event.currentTarget
        Meteor.call 'roomCreate', form.topic.value, (error, result) ->
            console.log arguments
