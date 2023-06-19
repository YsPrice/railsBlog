import { Controller } from "@hotwired/stimulus";
export default class extends Controller{
initialize(){}
    connect(){}

    toggleForm(event){
        console.log("I clicked the edit button")

        event.preventDefault();
        
        event.stopPropagation();
        const formID = event.params["form"];
        const commentBodyID = event.params["body"];
        const editButtonID = event.params["edit"];
        
    const form = document.getElementById(formID)
    const editButton = document.getElementById(editButtonID)
    const commentBody = document.getElementById(commentBodyID)
    this.toggleEditButton(editButton);
    

    form.classList.toggle("d-none");
    form.classList.toggle("mt-5");
    commentBody.classList.toggle("d-none");
    }
    toggleEditButton(editButton) {
        if(editButton.innerText === "Edit") {
            editButton.innerText = "Cancel";
            this.toggleEditButton(editButton);
        } else {
            this.editButton.innerText("Edit");
            this.toggleEditButtonClass(editButton)
        }
    };
    
    toggleEditButtonClass(editButton) {
        editButton.classList.toggle("btn-secondary")
        editButton.classList.toggle("btn-warning")
    } 

}
