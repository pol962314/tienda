/* Modificaciones del Marcador */
let iconMarker = L.icon({
  iconUrl: 'icon/cursor-64.png',
  iconSize: [60, 60],
  iconAnchor: [30, 60],
  shadowUrl: "https://vivaelsoftwarelibre.com/wp-content/uploads/2020/05/icono_sombra.png",
  shadowSize: [40, 70],
  shadowAnchor: [10, 75],
  popupAnchor: [0, -60],
})

/* Marcador global */
var markerStore



  navigator.geolocation.getCurrentPosition(
    (pos) => {
      const { coords } = pos
      const { latitude, longitude } = coords
      console.log(latitude,longitude)
      setMap(latitude,longitude);
  
      /* setTimeout(() => {
        myMap.panTo(new L.LatLng(latitude, longitude))
      }, 5000) */
    },
    (error) => {
      console.log(error)
    },
    {
      enableHighAccuracy: true,
      timeout: 5000,
      maximumAge: 0
    })




  function setMap(latitude,longitude){
        
    // Initialize the map and assign it to a variable for later use
    var map = L.map('map').setView([latitude,longitude], 13);
    L.control.scale().addTo(map);

    // Create a Tile Layer and add it to the map
    //var tiles = new L.tileLayer('http://{s}.tile.stamen.com/watercolor/{z}/{x}/{y}.png').addTo(map);
    L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    var init
    var searchControl = new L.esri.Controls.Geosearch({position:'topright'}).addTo(map);
    var results = new L.LayerGroup().addTo(map);

    /* Editar el marcador con el control */
    searchControl.on('results', function(data){
      results.clearLayers();
      for (var i = data.results.length - 1; i >= 0; i--) {
        init = data.results[i].latlng;
        markerStore.setLatLng(data.results[i].latlng);
        markerStore.bindPopup(data.results[i].address).openPopup();
      }
    });


    var geocodeServiceFirst = new L.esri.Services.Geocoding;
    /* creacion de objeto para obtener la dirección inicial */
      var origin = new Object();
      origin.latlng = new Object();
      origin.latlng.lat = latitude;
      origin.latlng.lng = longitude;
      console.log(origin)

    geocodeServiceFirst.reverse(origin.latlng,{}, function(error, result) {
      if (error) {
        console.log(error);
      }
        console.log(result);
        /* Marcador inicial */
        markerStore = new L.marker([latitude, longitude], { icon: iconMarker});
        markerStore.bindPopup(result.address).openPopup();
        map.addLayer(markerStore.openPopup());
    });

    /* Editar el marcador con el click */
    var geocodeService = new L.esri.Services.Geocoding();
    map.on('click', function(e){
      console.log(e.latlng)
      console.log([latitude,longitude])
      geocodeService.reverse(e.latlng, {}, function(error, result){
        console.log(result.address)
        markerStore.setLatLng(result.latlng);
        markerStore.bindPopup(result.address).openPopup();
      });
    });

}
