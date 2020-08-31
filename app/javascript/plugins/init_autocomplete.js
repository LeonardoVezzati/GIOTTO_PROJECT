import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('booking_delivery_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
