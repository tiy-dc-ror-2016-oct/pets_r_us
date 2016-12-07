console.log("Hello World");

$.ajax("/appointments/current", {
  contentType: "application/json",
  dataType: "json"
}).done(function appointmentsLoaded(appointments) {
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

function findPetById(id) {

}


function renderAppointment (appointment) {
  $(".active-appointments").append(
   `<p>${appointment.pet.name}</p>`
  );
}


//
// console.log("I was called after");
//
// [1,2,3].forEach(function (el) {
//   console.log(el);
// });
