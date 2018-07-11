App.pi_commands = App.cable.subscriptions.create "PiCommandsChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
   console.log 'Pi commands connected'
  disconnected: ->
    # Called when the subscription has been terminated by the server
    console.log 'Pi commands disconnected'
  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    console.log 'DataComming'