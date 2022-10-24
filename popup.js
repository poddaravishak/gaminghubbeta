document.querySelector("#show-login").addEventListener("click", function () {
  document.querySelector(".popup").classList.add("active");
});

document.querySelector(".close-btn").addEventListener("click", function () {
  document.querySelector(".popup").classList.remove("active");
});

document.querySelector("#show-signup").addEventListener("click", function () {
  document.querySelector(".popup2").classList.add("active");
});

document.querySelector(".close-btn2").addEventListener("click", function () {
  document.querySelector(".popup2").classList.remove("active");
});
