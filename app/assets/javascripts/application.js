// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
window.onload = function(){
    var check = document.getElementsByClassName("checkbox")
    var fullname = "";
    var namesArray = [];

    for (var index = 0; index < check.length; index++) {
        check[index].addEventListener("click", function(event){
            // console.log(check)
            // fullname = event.target.name + event.target.name2
            // console.log((event.target).getAttribute('name2'));
            fullname = event.target.name + " " + event.target.getAttribute('name2');
            // console.log(fullname);
            namesArray.push(fullname);
            console.log(namesArray);
        });
        
    }



    localStorage.setItem("namesArray", namesArray)
    session["name"] = "cat";

    
   



}




// .on("click", function(){
//     print(this.value)
// });
