// import swal from 'sweetalert';

// function bindSweetAlertButton() {
//   const formSubmitButton = document.getElementById('sweet-alert');
//   if (formSubmitButton) { // protect other pages
//     formSubmitButton.addEventListener('click', (e) => {
//       e.preventDefault();

//       let valueStart = document.getElementById('booking_start_date').value
//       let valueEnd = document.getElementById('booking_end_date').value
//       if ((valueStart === "") || (valueEnd === "")) {
//         alert("Please fill in the dates")
//       }
//       if document.getElementById('new_booking') {
//         const bookingForm = document.getElementById('new_booking');
//       } else {
//         const bookingForm = document.getElementById('edit-form');
//       }
//       swal({
//         title: "Booking confirmed!",
//         text: "This has been added to your dashboard.",
//         icon: "success"
//       }).then(
//       function(){bookingForm.submit()
//       });
//     }
//   });
//   }
// }

  export { bindSweetAlertButton };
