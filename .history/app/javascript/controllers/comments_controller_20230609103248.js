import { Controller } from "@hotwired/stimulus";
export default class extends Controller{
initialize(){}
    connect(){}

    toggleForm(event){
        console.log("I clicked the edit button")
        event.preventDefault();
        event.stopPropagation();
    }
}
