//Facebook button code 
window.fbAsyncInit = function() {
  FB.init({
    appId      : '2011092822272498',
    cookie     : true,
    status     : true,
    xfbml      : true,
    version    : 'v3.2'
  });
  FB.login(function(response) {
   if (response.authResponse) {
      FB.api('/me', function(response) {
        document.getElementById("welcome").innerHTML += response.name;
        document.getElementById("welcome").removeAttribute("hidden");
      });
    }
  });
};

(function(d, s, id){
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) {return;}
  js = d.createElement(s); js.id = id;
  js.src = "https://connect.facebook.net/en_US/sdk.js";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
