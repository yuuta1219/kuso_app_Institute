import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["display"];

  connect() {
    this.maxChanges = 7;
    this.reset();
  }

  reset() {
    this.changeCount = 0;
    this.clearTimer();
  }

  clearTimer() {
    if (this.timer) {
      clearInterval(this.timer);
      this.timer = null;
    }
  }

  startChanging() {
    this.reset();

    const words = ["", "Hello", "World", "This", "Is", "Hotwire", "Initial Text"];
    let i = 0;

    this.timer = setInterval(() => {
      if (this.changeCount >= this.maxChanges) {
        this.clearTimer();
      } else {
        this.displayTarget.textContent = words[i % words.length];
        i++;
        this.changeCount++;
      }
    }, 400);
  }

  disconnect() {
    this.clearTimer();
  }
}
