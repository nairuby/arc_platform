import {Controller} from "@hotwired/stimulus"

export default class extends Controller {
    connect() {
        if (this.element.id == "new-chapter-modal") {
            window.location.href = "#new-chapter-modal"
        }
    }

    disconnect() {
        if (this.element.id == "new-chapter-modal") {
            window.location.href = "#"
        }
    }
}
