function findLocation(event) {
  event.preventDefault();
  navigator.geolocation.getCurrentPosition(foundLocation, noLocation);
}
function foundLocation(position)
{
  
  var lat = position.coords.latitude;
  var long = position.coords.longitude;
  window.location = "<%= new_spot_path%>?lat=" + lat + "&long=" + long;
  //alert("<%= new_spot_path%>?lat=" + lat + "&long=" + long);
  //alert('Found location: ' + lat + ', ' + long);
  
}
function noLocation()
{
  alert('Could not find location');
}