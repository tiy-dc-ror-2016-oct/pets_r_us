(function (){

  window.petsrus = window.petsrus || {};
  // Expose to the namespace
  window.petsrus.loadAppointments = loadAppointments;

  function loadAppointments() {
    return $.ajax("/appointments/current", {
      contentType: "application/json",
      dataType: "json"
    });
  }
})();
