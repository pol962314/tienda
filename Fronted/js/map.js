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
  popupAnchor: [0, -40],
})

/* Dirección del punto */
var addres 

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

/* Obtener dirección */


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

      L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://osm.org/copyright">OpenStreetMap</a> contributors',
        maxZoom: 18,
      }).addTo(myMap);

      var geocodeService = L.esri.Geocoding.geocodeService();
      geocodeService.reverse().latlng([latitude, longitude]).run(function (error, result) {
        if (error) {
          console.log(error);
          return;
        }

        /* Cargar el primer marcador */
        markerHome = new L.marker([latitude, longitude], { icon: iconMarker, draggable:true});
        myMap.addLayer(markerHome);
        markerHome.bindPopup(result.address.Match_addr).openPopup();
        document.getElementById("textsearch").value = result.address.Match_addr
        console.log(markerHome)

      });

      for (let index = 0; index < this.storeFeat.length; index++) {
        const element = this.storeFeat[index];
        console.log(this.storeFeat[index])
        console.log(element[0])

        this.storeMarkers[index] = new L.marker([element[1],element[2]], {icon: iconStoreMarker});
        myMap.addLayer(this.storeMarkers[index]);
        this.storeMarkers[index].bindPopup(element[0]);
        console.log(this.storeMarkers)
      }

      

        var searchControl = L.esri.Geocoding.geosearch({position:'topright'}).addTo(myMap);

        var results = L.layerGroup().addTo(myMap);

          searchControl.on('results', function (data) {
            let LatLng
            results.clearLayers();
            for (var i = data.results.length - 1; i >= 0; i--) {
              /* this.markerHome.setLatLng(data.results[i].latlng); */
              console.log(data)
              console.log(data.text)
              addres = data.text
              document.getElementById("textsearch").value = data.results[i].text
              LatLng = data.results[i].latlng;
              
              geocodeService.reverse().latlng(LatLng).run(function (error, result) {
                if (error) {
                  console.log(error);
                  return;
                }
      
                /* Cargar el primer marcador */
                console.log(LatLng)
                markerHome.setLatLng(LatLng);
                markerHome.bindPopup(result.address.Match_addr).openPopup();
                /* results.addLayer(L.marker(LatLng)); */
                console.log(LatLng.lat)
      
              });

            }

            /* Se debe actualizar las tiendas */
            storeFeat[0] = ["Jefita",LatLng.lat+0.001, LatLng.lng+0.001]
            storeFeat[1] = ["Bandita",LatLng.lat+0.001, LatLng.lng-0.001]
            storeFeat[2] = ["Wallpas",LatLng.lat-0.001, LatLng.lng-0.001]

            for (let index = 0; index < storeFeat.length; index++) {
              const element = storeFeat[index];
              myMap.removeLayer(storeMarkers[index])
              storeMarkers[index] = new L.marker([element[1],element[2]],{icon: iconStoreMarker});
              myMap.addLayer(storeMarkers[index]);
              storeMarkers[index].bindPopup(element[0]);
              console.log(storeMarkers)
            }
          });
      
      /* Editar el marcador con un click */
      myMap.on('click', e => {
        /* myMap.removeLayer(markerHome) */
        let latLng = myMap.mouseEventToLatLng(e.originalEvent);

        geocodeService.reverse().latlng(latLng).run(function (error, result) {
          if (error) {
            console.log(error);
            return;
          }

          /* Cargar el primer marcador */
          markerHome.setLatLng(latLng);
          document.getElementById("textsearch").value = result.address.Match_addr
          markerHome.bindPopup(result.address.Match_addr).openPopup();
          /* results.addLayer(L.marker(LatLng)); */

        });

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
      

  }

/* Deslizar el marcador */

  /* markerHome.on('moveend',e =>{       
    console.log(markerHome.getLatLng()) 
    let latLngOn = markerHome.getLatLng();
    markerHome.setLatLng(latLngOn)
    console.log(markerHome)
    

    Se debe actualizar las tiendas
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
    myMap.addLayer(markerHome)
    this.markerHome = markerHome
  }
) */