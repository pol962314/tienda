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


/* Función de geolocalización */
navigator.geolocation.getCurrentPosition(
    (pos) => {
      const { coords } = pos
      const { latitude, longitude } = coords
      console.log(latitude,longitude)
      console.log(this.markerStore)
      setMap(latitude,longitude)
  
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

    /* Configuración del mapa */
    function setMap(latitude,longitude){
        var myMap = L.map('myMap').setView([latitude,longitude], 13)

        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {/* 
          attribution: '&copy; <a href="https://osm.org/copyright">OpenStreetMap</a> contributors', */
          maxZoom: 18,
        }).addTo(myMap);

        var searchControl = L.esri.Geocoding.geosearch({position:'topright'}).addTo(myMap);
        myMap.addControl(searchControl);

        var results = L.layerGroup().addTo(myMap);

          /* Se modifica el marcador al hacer una busqueda */
        searchControl.on('results', function (data) {
            results.clearLayers();
            for (var i = data.results.length - 1; i >= 0; i--) {
              markerStore.setLatLng(data.results[i].latlng);
              console.log(data.results[i].text)
              document.getElementById("textsearch").value = data.results[i].text
              }
            });
        

        /* obtiene dirección con coordenadas */
        var geocodeService = L.esri.Geocoding.geocodeService();
        geocodeService.reverse().latlng([latitude, longitude]).run(function (error, result) {
          if (error) {
            console.log(error);
            return;
          }
            /* Cargar el primer marcador */
          markerStore = new L.marker([latitude, longitude], { icon: iconMarker});
          myMap.addLayer(markerStore);
          markerStore.bindPopup(result.address.Match_addr).openPopup();
          console.log(markerStore)

        });

        /* Editar el marcador con un click */
        myMap.on('click', e => {

          let latLng = myMap.mouseEventToLatLng(e.originalEvent);

          geocodeService.reverse().latlng([latLng.lat, latLng.lng]).run(function (error, result) {
            if (error) {
              return;
            }
            markerStore.setLatLng([latLng.lat, latLng.lng]);
            markerStore.bindPopup(result.address.Match_addr).openPopup();
          });
        }
      )

    }

    
        
   
/* 
let marker = L.marker([51.5, -0.09]).addTo(myMap)



let marker2 = L.marker([51.51, -0.09], { icon: iconMarker }).addTo(myMap) */

