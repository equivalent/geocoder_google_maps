# GeocoderGoogleMaps

For the laziest developers. Simple gem/rails-engine that will easily make support for
Google Maps working with your Longitude, Latitude coordinates

Geocoder gem isn't necessarily required

## Install

add to Gemfile:

    gem 'geocoder_google_maps', git: 'git@github.com:equivalent/geocoder_google_maps.git'

and run 

    bundle install


## Prepare your app

app/controllers/application_controller.rb

    class ApplicationController < ActionController::Base
      helper GeocoderGoogleMaps::Engine.helpers
      # ...


app/views/layouts/application.haml

    %head
      ...
      = google_map_api
      ...

or

    %head
      ...
      <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
      ...


app/assets/javascripts/application.js

    //= require geocoder_google_maps/application


app/assets/stylesheets/application.css

    @import 'geocoder_google_maps/application'

or

    *= require 'geocoder_google_maps/application'




## Usage

Gem is listening for `div` element with class `geocoder-google-maps` and its data attributes
`data-longitude`,  `data-latitude` and `data-zoom`

    <div class="geocoder-google-map" data-latitude="49.2247531" data-longitude="17.6727531" data-zoom="15"></div>

This div can be generated by a built in helper `google_map_div(latitude, longitude)`

    = google_map_div("49.2247531", "17.6727531")
    = google_map_div("49.2247531", "17.6727531", zoom: 11)

After this div is found, Google Maps API script will trigger and translate this div into map.


This project sucks, I mean rocks and uses MIT-LICENSE.

## Contributing 

as usual, fork, create branch with your changes, push and do pull
request.

## Where are tests ?

Seriously? Look at the code it's two one line helpers and piece of
junkie JavaScript :poop: