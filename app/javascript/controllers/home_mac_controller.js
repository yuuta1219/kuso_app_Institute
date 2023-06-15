import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["macElement", "mocElement"];

  connect() {
    this.toggleDisplay();
  }

  toggleDisplay() {
    setTimeout(() => {
      this.macElementTarget.classList.add('hidden');
      this.mocElementTarget.classList.remove('hidden');
    }, 4000);
  }
}
