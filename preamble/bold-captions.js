// Bold the "Figure X:" and "Table X:" prefix in captions
document.addEventListener("DOMContentLoaded", function () {
  document.querySelectorAll("figcaption.quarto-float-caption").forEach(function (el) {
    el.innerHTML = el.innerHTML.replace(
      /^((?:Table|Figure)&nbsp;\d+:)/,
      "<strong>$1</strong>"
    );
  });
});
