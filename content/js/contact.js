$( "#contactform" ).submit(function( event ) {
  $.post( "/send.php", $( "#contactform" ).serialize(), function( result ) {
    alert(result);
  });
  event.preventDefault();
});
