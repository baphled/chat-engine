$(document).ready(function(){
  var pusher = new Pusher('YOUR PUSHER APP ID');
  var channel = pusher.subscribe('messages');
  channel.bind('new-message', function(data) {
    var converter = new Showdown.converter();
    var html = converter.makeHtml(data['body']);
  
    $new_message = $('<li>').append(html);
    $('ul.messages').prepend($new_message);
  });
  
  $("#new_chat_engine_message")
    .bind("ajax:success", function(event, data, status, xhr) {
      $('ul.messages').emoticonize();
      $("input#chat_engine_message_body").attr('value','');
    });
  
  $('ul.messages').emoticonize();
});