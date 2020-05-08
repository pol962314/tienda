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
var markerHome
var markerStores = [
  ["Jefita",0,0],
  ["Bandita",0,0],
  ["Wallpas",0,0]
]
var markers = []
console.log(markerStores)

/* Función de geolocalización */
navigator.geolocation.getCurrentPosition(
    (pos) => {
      const { coords } = pos
      const { latitude, longitude } = coords
      console.log(latitude,longitude)
      console.log(this.markerHome)
      markerStores[0] = ["Jefita",coords.latitude+20,coords.longitude+20]
      markerStores[1] = ["Bandita",coords.latitude-20,coords.longitude+20]
      markerStores[2] = ["Wallpas",coords.latitude+10,coords.longitude-20]
      console.log(markerStores)
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
        var myMap = L.map('myMap').setView([latitude,longitude], 15)

        L.tileLayer(`https://maps.wikimedia.org/osm-intl/{z}/{x}/{y}.png`, {
            maxZoom: 30,
        }).addTo(myMap);

        /* Cargar el primer marcador */
        markerHome = new L.marker([latitude, longitude], { icon: iconMarker, draggable:true});
        myMap.addLayer(markerHome);
        markerHome.bindPopup("<b>Home</b>").openPopup();
        console.log(markerHome)
        console.log("fa")

        /* Cargar las tiendas */
        /* for (var i = 0; i < markerStores.length; i++) {
          markers[i] = new L.marker([markerStores[i][1],markerStores[i][2]],{draggable:true});
          myMap.addLayer(markers[i])
          marker[i].bindPopup(markerStores[i][0])
          console.log(markers[i])
        }
        console.log(markers) */

        /* Editar el marcador con un click */
        myMap.on('click', e => {
          myMap.removeLayer(markerHome)
          let latLng = myMap.mouseEventToLatLng(e.originalEvent);
          console.log(markerHome)
          markerHome = L.marker([latLng.lat, latLng.lng], { icon: iconMarker, draggable:true});
          myMap.addLayer(markerHome);
          markerHome.bindPopup("<b>Home</b>").openPopup();

          /* Editar las tiendas */
          /* for (var i = 0; i < markerStores.length; i++) {
            myMap.removeLayer(markers[i])
            markers[i] = new L.marker([markerStores[i][1],markerStores[i][2]],{draggable:true});
            myMap.addLayer(markers[i])
            marker[i].bindPopup(markerStores[i][0])
          } */

          }
        )

    }

    
        
   
/* 
let marker = L.marker([51.5, -0.09]).addTo(myMap)



let marker2 = L.marker([51.51, -0.09], { icon: iconMarker }).addTo(myMap) */

