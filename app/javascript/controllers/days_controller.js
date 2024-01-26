import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  // test() {
  //   const el = this.element;
  //   const value = el.getAttribute('sell');

  //   console.log(value);
  //   console.log(el);
  // }
  connect() {
    const divElement = this.element;
    const data = JSON.parse(divElement.getAttribute('data-day-sells'));
    const colors = ["red", "green", "blue", "orange", "brown", "purple", "yellow"];
    let days = [];
    let total = [];

    data.forEach(element => {
      days.push(element[0]);
      total.push(element[1]);
    });

    new Chart("daySells", {
      type: "bar",
      data: {
        labels: days,
        datasets: [{
          backgroundColor: colors,
          data: total
        }]
      },
      options: {
        legend: {display: false},
        title: {display: false}
      }
    });    
  }
}
