App.message = App.cable.subscriptions.create "MessageChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#messages').append data['message']

  speak: (message) ->
    @perform 'speak', message: message

#$(document).on 'click', '[data-behavior~=message_speaker]', (event) ->
  # if event.click # return = send
  #App.message.speak event.target.value
  #event.target.value = ''
  #event.preventDefault()