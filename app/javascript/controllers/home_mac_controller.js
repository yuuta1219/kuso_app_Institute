import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["macElement"];

  connect() {
    this.toggleDisplay();
  }

  toggleDisplay() {
    setTimeout(() => {
      this.macElementTarget.classList.remove('hidden');
    }, 5000);
  }
}
