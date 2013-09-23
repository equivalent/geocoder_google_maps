module GeocoderGoogleMaps
  module ApplicationHelper
    def google_map_div(latitude, longitude, options={})
      zoom = options[:zoom] || 16

      content_tag :div, '', class: 'geocoder-google-map', :'data-longitude' => longitude, :'data-latitude' => latitude, :'data-zoom' => zoom
    end

    def google_map_api
      '<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>'.html_safe
    end
  end
end
