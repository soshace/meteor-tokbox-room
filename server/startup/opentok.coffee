Meteor.startup ->
    @openTokClient = new OpenTokClient Meteor.settings.public.opentok.apiKey, Meteor.settings.opentok.secret
