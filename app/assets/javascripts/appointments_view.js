(function() {
  'use strict';

  window.petsrus = window.petsrus || {};

  function renderAppointments(appointments) {
    $(".active-appointments").html("");

    appointments.forEach(function getPet(appointment) {
      renderAppointment(appointment);
    });
  }

  function renderAppointment (appointment) {
    $(".active-appointments").append(
     "<p>" + appointment.pet.name  + "</p>"
    );
  }

  function loadAndRenderAppointments() {
    window.petsrus.loadAppointments().done(function (appointments){
      renderAppointments(appointments);
    });
  }

  // Call the first load
  loadAndRenderAppointments();

  // Add event to clicing the reload button
  $("#reload-appointments").on("click", loadAndRenderAppointments);

  // Every 5 seconds load new appointments
  window.setInterval(loadAndRenderAppointments, 5 * 1000);

})();
