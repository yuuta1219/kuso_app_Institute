import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["video", "audio", "back", "yume", "chats"]

  connect() {
    this.playMedia();
    setTimeout(() => {
      this.toggleDisplay();
    }, 3000);
    setTimeout(() => {
      this.stopMedia();
    }, 4000);
    setTimeout(() => {
      this.storyStart();
    }, 5000);
  }

  playMedia() {
    this.videoTarget.play();
    this.audioTarget.play();
  }

  stopMedia() {
    this.videoTarget.pause();
    this.audioTarget.pause();
  }

  toggleDisplay() {
    this.videoTarget.classList.add('animate-flicker-out-1');
    this.backTarget.classList.remove('hidden');
  }

  storyStart() {
    this.yumeTarget.play();
    this.chatsTarget.classList.remove('hidden');
  }


}
