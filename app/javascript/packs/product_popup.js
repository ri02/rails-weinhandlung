
const popup = () => {

 const icons = document.querySelectorAll(.shopping-icon)
 const pop =
 const toggle_popup = () => {
  window.open
 }

 icons.forEach( (icon) => {
  icon.addEventListener('click', toggle_popup)
   // statements
 });
}


const togglePopup = () => {

  const icon = Array.from(document.querySelectorAll('.shopping-icon'))
  const popup = Array.from(document.querySelectorAll('.popup'))


  const togglePopupItem = (e) => {
    const active = e.currentTarget.querySelector(".active")

    if (active===null){
    icon.forEach( (item) => item.classList.remove('active'))
    }

    const popupBox = e.currentTarget.querySelector(".popup")
    popupBox.classList.toggle("active")
  }


   const removePopup = (e) =>{
    if (!e.target.matches('.nav-list-item')) {
      icon.forEach( (item) => item.classList.remove('active'))
      return};
   }

  if (dropdownTop){
    document.addEventListener('click', removePopup)
    popup.forEach(item => item.addEventListener('click', togglePopupItem))
  }

}

export {togglePopup};
