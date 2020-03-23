import flatpickr from 'flatpickr'
import 'flatpickr/dist/flatpickr.min.css'

document.addEventListener('DOMContentLoaded', function(){
  flatpickr("#theCutePicker", {
    enableTime: true,
    dateFormat: "Y-m-d H:i",
    minDate: "today"
    })
});
