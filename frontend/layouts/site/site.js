import "./site.css";

document.addEventListener("DOMContentLoaded", () => {
  document.getElementById("selectedLocale").addEventListener("change", () => {
    const selectedOption = this.options[this.selectedIndex];
    const url = selectedOption.getAttribute("data-url");
    if (url) {
      window.location.href = url;
    }
  });
});
