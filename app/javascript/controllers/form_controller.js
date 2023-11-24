import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  static targets = ['priceText', 'total']
  static values = {
    price: Number
  }

  connect() {
    console.log("Connect!")
  }

  setStartDate(e) {
    this.startDate = e.target.value;
    console.log(this.startDate)
    if (this.startDate && this.endDate) {
      this.setPrice()
    }
  }

  setEndDate(e) {
    this.endDate = e.target.value;
    console.log(this.endDate)
    if (this.startDate && this.endDate) {
      this.setPrice()
    }
  }

  setPrice() {
    let sDate = new Date(this.startDate);
    let eDate = new Date(this.endDate);
    let days = (eDate - sDate) / (1000*60*60*24);
    let price = days * this.priceValue
    console.log(price)
    this.priceTextTarget.innerText = `Total: ${price}€`
    this.totalTarget.value = price
  }

}
