var map, featureList, boroughSearch = [], theaterSearch = [], museumSearch = [];
var $modal = $('#loadModal');

$("#about-btn").click(function() {
  $("#aboutModal").modal("show");
  $(".navbar-collapse.in").collapse("hide");
  return false;
});

$("#nav-btn").click(function() {
  $(".navbar-collapse").collapse("toggle");
  return false;
});

$("#sidebar-toggle-btn").click(function() {
  animateSidebar();
  return false;
});

$("#sidebar-hide-btn").click(function() {
  animateSidebar();
  return false;
});

function animateSidebar() {
  $("#sidebar").animate({
    width: "toggle"
  }, 350, function() {
    map.invalidateSize();
  });
}

function webLoading() {
  $("#loading").fadeOut();
}

function clickMarker(url){
  // $('#featureModal').modal('toggle');
  // var ids = id;
  // alert(ids);
  $modal.load(url, function () {
      $modal.modal({show: true});
  });
}