import swal from 'sweetalert';

function bindSweetAlertButton() {
  const formSubmitButton = document.getElementById('sweet-alert');
  if (formSubmitButton) { // protect other pages
    formSubmitButton.addEventListener('click', (e) => {
      e.preventDefault();
      const bookingForm = document.getElementById('new_booking')
      swal({
        title: "Booking confirmed!",
        text: "This has been added to your dashboard.",
        icon: "success"
      }).then(
      function(){bookingForm.submit()
      });
    });
  }
}

export { bindSweetAlertButton };
