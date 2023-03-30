// Import and register all your controllers from the importmap under controllers/*

import { application } from "controllers/application"

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)

const connectButtons = document.querySelectorAll('.connect-button');
const loginScreen = document.querySelector('.login-screen');
const backButton = document.querySelector('.back-button');

// Hide the login screen initially
loginScreen.classList.add('hidden');

connectButtons.forEach(button => {
  button.addEventListener('click', () => {
    // Hide wearables widget and show login screen
    document.querySelector('.wearables-widget').classList.add('hidden');
    loginScreen.classList.remove('hidden');

    // Change header to show back button
    document.querySelector('.widget-header').classList.add('hidden');
    backButton.classList.remove('hidden');
  });
});

backButton.addEventListener('click', () => {
  // Hide login screen and show wearables widget
  loginScreen.classList.add('hidden');
  document.querySelector('.wearables-widget').classList.remove('hidden');

  // Change header to show widget header
  backButton.classList.add('hidden');
  document.querySelector('.widget-header').classList.remove('hidden');
});
