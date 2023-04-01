import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favorite"
export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus!");
  }

  favorite() {

    if (this.element.dataset.userLoggedIn === "false") {
      alert("You must be logged in to favorite a post.");
      return;
    }

    if (this.element.dataset.favorited === "true") {
      this.element.dataset.favorited = 'false'
      this.element.setAttribute("fill", "rgba(0, 0, 0, 0.5)");
    } else {
      this.element.dataset.favorited = 'true';
      this.element.setAttribute("fill", "red");
  }};
}
