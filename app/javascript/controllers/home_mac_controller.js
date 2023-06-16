import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["HelloElement","LoginElement"];

  connect() {
    this.toggleDisplay();
  }

  toggleDisplay() {
    setTimeout(() => {
      this.HelloElementTarget.classList.remove('hidden');
    }, 5000);
    setTimeout(() => {
      this.LoginElementTarget.classList.remove('hidden');
    }, 9400);
  }
}
