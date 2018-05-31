import swal from 'sweetalert';

function bindSweetAlertButton() {
  const swalButton = document.getElementById('sweet-alert');
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal({
        title: "A nice alert",
        text: "This is a great alert, isn't it?",
        icon: "success"
      });
    });
  }
}

export { bindSweetAlertButton };
