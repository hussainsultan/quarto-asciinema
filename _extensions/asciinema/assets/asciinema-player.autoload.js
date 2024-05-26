document.addEventListener('DOMContentLoaded', function() {
  var divs = document.querySelectorAll('div[cast-src]');
  
  divs.forEach(function(div) {
    var castSrc = div.getAttribute('cast-src');
    var options = div.getAttribute('data-options');
    if (castSrc) {
      var parsedOptions = options ? JSON.parse(options) : {};
      AsciinemaPlayer.create(castSrc, div, parsedOptions);
    }
  });
});

