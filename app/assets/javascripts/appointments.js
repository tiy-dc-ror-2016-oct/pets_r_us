console.log("Hello World");

function loadAppointments() {
  $.ajax("/appointments/current", {
    contentType: "application/json",
    dataType: "json"
  }).done(function appointmentsLoaded(appointments) {
    $(".active-appointments").html("");

    appointments.forEach(function getPet(appointment) {

      $.ajax("/pets/" + appointment.pet_id, {
        contentType: "application/json",
        dataType: "json"
      }).done(function (pet) {
        console.log(pet, appointment);
        appointment.pet = pet;
        renderAppointment(appointment);
      });
    });
  });
}

loadAppointments();

$("#reload-appointments").on("click", loadAppointments);
window.setInterval(loadAppointments, 5 * 1000);

function findPetById(id) {

}


function renderAppointment (appointment) {
  $(".active-appointments").append(
   "<p>" + appointment.pet.name  + "</p>"
  );
}


//
// console.log("I was called after");
//
// [1,2,3].forEach(function (el) {
//   console.log(el);
// });
