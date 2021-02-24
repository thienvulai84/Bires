function activate_form() {
    var div_form = document.getElementById("div_form");
    if (div_form.style.display === "none") {
        div_form.style.display = "block";
        var div_when_submitting = document.getElementById("div_when_submitting");
        div_when_submitting.style.display = "none";
    }
}
