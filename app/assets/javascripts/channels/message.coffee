App.message = App.cable.subscriptions.create "MessageChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    user_id = data['user_id']
    #class_name = "#messages"
    class_name = "#opposite_id_is_" + user_id
    $(class_name).append data['message']

  speak: (message) ->