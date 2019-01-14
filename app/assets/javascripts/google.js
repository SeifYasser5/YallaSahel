//Google button code
function onSignIn(googleUser) {
    var profile = googleUser.getBasicProfile();
    var id_token = googleUser.getAuthResponse().id_token;
    document.getElementById("welcome").innerHTML += profile.getName();
    document.getElementById("welcome").removeAttribute("hidden");
}
