const toggleCategorySilder = () =>{

const lines = Array.from(document.querySelectorAll('.space'))


const toggleSlider = (e) => {
  const slider = e.currentTarget.querySelector(".overview-product-category-slider")
  slider.classList.toggle("active")
}

lines.forEach( (line) => line.addEventListener('click', toggleSlider))

}

export {toggleCategorySilder};
