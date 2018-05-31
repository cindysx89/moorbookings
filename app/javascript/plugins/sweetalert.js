import swal from 'sweetalert';

function bindSweetAlertButton() {
  const swalButton = document.getElementById('sweet-alert');
  console.log(swalButton)
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal({
        title: "Booking confirmed!",
        text: "This has been added to your dashboard."
      });
    });
  }
}

export { bindSweetAlertButton };
