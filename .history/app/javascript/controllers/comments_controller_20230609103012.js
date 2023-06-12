import { Controller } from "@hotwired/stimulus";
export default class extends Controller{

    connect(){
        console.log("hello controller")
    }
    toggleForm(){
        console.log("I clicked the edit button")
    }
}
