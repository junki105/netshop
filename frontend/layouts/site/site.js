import "./site.css";

document.addEventListener("DOMContentLoaded", () => {
  document.getElementById("selectedLocale").addEventListener("change", ev => {
    const selectedOption = ev.target.options[ev.target.selectedIndex];
    const url = selectedOption.getAttribute("data-url");
    if (url) {
      window.location.href = url;
    }
  });
});
