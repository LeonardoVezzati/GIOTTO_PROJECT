import flatpickr from "flatpickr";

flatpickr(".datepicker", {
  altInput: true,
  minDate: new Date().fp_incr(10),
   "locale": {
        "firstDayOfWeek": 1 // start week on Monday
    },
    "disable": [
        function(date) {
            // return true to disable
            return (date.getDay() === 0 || date.getDay() === 6);

        }],
}
);
let booked_dates = JSON.parse(document.querySelector('#booking-dates').dataset.dates)
flatpickr(".time", {
    enableTime: true,
    noCalendar: true,
    dateFormat: "d-m-Y H:i",
    disable: booked_dates
}
);

console.log(booked_dates)



