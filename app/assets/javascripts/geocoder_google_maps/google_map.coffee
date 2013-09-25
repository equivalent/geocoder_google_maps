$(document).ready ->
  $('div.geocoder-google-map').each (index, mapElement) =>
    jQMapElement = $(mapElement)
    mapOptions =
      zoom: jQMapElement.data('zoom')
      center: new google.maps.LatLng(jQMapElement.data('latitude'), jQMapElement.data('longitude'))
      mapTypeId: google.maps.MapTypeId.ROADMAP
    map = new google.maps.Map(mapElement, mapOptions)

