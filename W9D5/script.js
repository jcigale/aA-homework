document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!

  event.preventDefault();

  
  const placeNameInput = document.getElementById("sf-places")
  const placeName = placeNameInput.value;
  placeNameInput.value = "";


  const ul = document.getElementById("sf-places");

  const li = document.createElement("li");

  li.textContent = placeName;

  ul.appendChild(li);

  // adding new photos

  // --- your code here!



});
