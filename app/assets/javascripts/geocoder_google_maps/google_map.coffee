$(document).ready ->
  $('div.geocoder-google-maps').each (index, mapElement) =>
    jQMapElement = $(mapElement)
    mapOptions =
      zoomControl: true
      scaleControl: true
      overviewMapControl: true
      zoom: jQMapElement.data('zoom')
      center: new google.maps.LatLng(jQMapElement.data('latitude'), jQMapElement.data('longitude'))
      mapTypeId: google.maps.MapTypeId.ROADMAP
    map = new google.maps.Map(mapElement, mapOptions)

