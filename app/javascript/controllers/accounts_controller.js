import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="accounts"
export default class extends Controller {
  connect() {
    console.log("home controller has been connected"); 
  }
}