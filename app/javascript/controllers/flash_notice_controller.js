import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    setTimeout(() => {
      $(this.element).find('button').click();
    }, 2000);
  }
}
