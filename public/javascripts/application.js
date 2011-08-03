// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function(){
  var map = new Bridge.Map($("#map_canvas"));
  map.render();
});

(function($){

  var Bridge = window.Bridge = {};

  var Map = Bridge.Map = function(el) {
    this.el = el;
  };
  Map.prototype = {
    render: function(){
      // var latlng = new google.maps.LatLng(-34.397, 150.644);
      var myOptions = {
        zoom: 8,
        center: this.coords(),
        mapTypeId: google.maps.MapTypeId.ROADMAP
      };
      var map = new google.maps.Map(this.el[0], myOptions);

    },
    coords: function(){
      var lat = this.el.data('lat');
      var lng = this.el.data('lng');
      console.log(lat, lng);
      return new google.maps.LatLng(lat, lng);
    }
  };
}(jQuery));
