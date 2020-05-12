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

let iconStoreMarker = L.icon({
  iconUrl: 'icon/supermarket-ic.png',
  iconSize: [30,30],
  iconAnchor: [15,30],
  shadowUrl: "https://vivaelsoftwarelibre.com/wp-content/uploads/2020/05/icono_sombra.png",
  shadowSize: [40, 70],
  shadowAnchor: [10, 75],
  popupAnchor: [0, -60],
})

/* Marcador global */
var markerHome

/* Datos de tienda*/
var storeFeat = [
["Jefita",0,0],
["Bandita",0,0],
["Wallpas",0,0]
]
/* Marcador de tienda */
var storeMarkers = []
console.log(storeFeat)


/* Función de geolocalización */
navigator.geolocation.getCurrentPosition(
  (pos) => {
    const { coords } = pos
    const { latitude, longitude } = coords
    console.log(latitude,longitude)
    console.log(this.markerHome)

    /* Se debe realizar la busqueda de las tiendas */
    storeFeat[0] = ["Jefita",coords.latitude+0.01,coords.longitude+0.01]
    storeFeat[1] = ["Bandita",coords.latitude-0.01,coords.longitude+0.01]
    storeFeat[2] = ["Wallpas",coords.latitude+0.01,coords.longitude-0.01]
    console.log(storeFeat)
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

      L.tileLayer(`https://maps.wikimedia.org/osm-intl/{z}/{x}/{y}.png`, {
          maxZoom: 18,
      }).addTo(myMap);

      /* Cargar el primer marcador */
      markerHome = new L.marker([latitude, longitude], { icon: iconMarker, draggable:true});
      myMap.addLayer(markerHome);
      markerHome.bindPopup("<b>Home</b>").openPopup();
      console.log(markerHome)

      for (let index = 0; index < this.storeFeat.length; index++) {
        const element = this.storeFeat[index];
        console.log(this.storeFeat[index])
        console.log(element[0])

        this.storeMarkers[index] = new L.marker([element[1],element[2]], {icon: iconStoreMarker});
        myMap.addLayer(this.storeMarkers[index]);
        this.storeMarkers[index].bindPopup(element[0]);
        console.log(this.storeMarkers)
      }
      
      /* Editar el marcador con un click */
      myMap.on('click', e => {
        /* myMap.removeLayer(markerHome) */
        let latLng = myMap.mouseEventToLatLng(e.originalEvent);
        this.markerHome.setLatLng(latLng)
        console.log(markerHome)
        /* markerHome = L.marker([latLng.lat, latLng.lng], { icon: iconMarker, draggable:true});
        myMap.addLayer(markerHome); */
        markerHome.bindPopup("<b>Home</b>").openPopup();

        /* Se debe actualizar las tiendas */
        this.storeFeat[0] = ["Jefita",latLng.lat+0.01, latLng.lng+0.01]
        this.storeFeat[1] = ["Bandita",latLng.lat+0.01, latLng.lng-0.01]
        this.storeFeat[2] = ["Wallpas",latLng.lat-0.01, latLng.lng-0.01]
        console.log(this.storeFeat)


        for (let index = 0; index < this.storeFeat.length; index++) {
          const element = this.storeFeat[index];
          myMap.removeLayer(this.storeMarkers[index])
          this.storeMarkers[index] = new L.marker([element[1],element[2]],{icon: iconStoreMarker});
          myMap.addLayer(this.storeMarkers[index]);
          this.storeMarkers[index].bindPopup(element[0]);
          console.log(this.storeMarkers)
        }

      }
    )

      markerHome.on('moveend',e =>{       
        console.log(markerHome.getLatLng()) 
        let latLngOn = markerHome.getLatLng();
        markerHome.setLatLng(latLngOn)
        console.log(markerHome)
        

        /* Se debe actualizar las tiendas */
        this.storeFeat[0] = ["Jefita",latLngOn.lat+0.01, latLngOn.lng+0.01]
        this.storeFeat[1] = ["Bandita",latLngOn.lat+0.01, latLngOn.lng-0.01]
        this.storeFeat[2] = ["Wallpas",latLngOn.lat-0.01, latLngOn.lng-0.01]
        console.log(this.storeFeat)


        for (let index = 0; index < this.storeFeat.length; index++) {
          const element = this.storeFeat[index];
          myMap.removeLayer(this.storeMarkers[index])
          this.storeMarkers[index] = new L.marker([element[1],element[2]],{icon: iconStoreMarker});
          myMap.addLayer(this.storeMarkers[index]);
          this.storeMarkers[index].bindPopup(element[0]);
        }
        console.log("fina")
        myMap.addLayer(markerHome)
        this.markerHome = markerHome
      }
    )

      

  }
        
   
/* 
let marker = L.marker([51.5, -0.09]).addTo(myMap)



let marker2 = L.marker([51.51, -0.09], { icon: iconMarker }).addTo(myMap) */

