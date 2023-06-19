import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "welcome", "escape", "object", "play", "return" ]

  connect() {
    const elements = [
      { target: this.welcomeTarget, text: 'Welcome to', delay: 6000, speed: 50 },
      { target: this.escapeTarget, text: 'The Escape Game!', delay: 6700, speed: 50 },
      { target: this.objectTarget, text: 'The objective of this game is to restore a malfunctioning AI to its original state.', delay: 8000, speed: 15 },
      { target: this.playTarget, text: 'PLAY!', delay: 9800, speed: 30 },
      { target: this.returnTarget, text: 'RETURN!', delay: 9800, speed: 30 }
    ]

    for (let element of elements) {
      element.target.textContent = ''
      setTimeout(() => {
        this.typeText(element.target, element.text, element.speed)
      }, element.delay)
    }
  }

  typeText(target, text, speed) {
    let i = 0
    const intervalId = setInterval(() => {
      if (i < text.length) {
        target.textContent += text[i]
        i++
      } else {
        clearInterval(intervalId)
      }
    }, speed)
  }
}
