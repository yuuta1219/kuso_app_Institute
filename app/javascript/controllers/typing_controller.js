import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "output" ]

  connect() {
    this.outputTarget.textContent = ''
    const text = 'Hello, Stimulus!'
    this.typeText(text)
  }

  typeText(text) {
    let i = 0
    const intervalId = setInterval(() => {
      if (i < text.length) {
        this.outputTarget.textContent += text[i]
        i++
      } else {
        clearInterval(intervalId)
      }
    }, 500)
  }
}
