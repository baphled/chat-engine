$(document).ready(function(){
  var pusher = new Pusher('1760cc2007fea206f2df');
  var channel = pusher.subscribe('messages');
  channel.bind('new-message', function(data) {
    $new_message = $('<li>').append(data['from'] + ": " + data['body']);
    $('ul.messages').prepend($new_message);
  });
  
  $("#new_chat_engine_message")
    .bind("ajax:success", function(event, data, status, xhr) {
      $('ul.messages').emoticonize();
      $("input#chat_engine_message_body").attr('value','');
    });
  
  $('ul.messages').emoticonize();
});