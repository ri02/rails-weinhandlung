
const togglePopup = () => {

  const icon = Array.from(document.querySelectorAll('.shopping-icon'))
  const popup = Array.from(document.querySelectorAll('.popup'))
  const popup_close = Array.from(document.querySelectorAll('.popup-close'))

  const togglePopupItem = (e) => {

    popup.forEach( (item) => item.classList.remove('active'))
    const popupBox = e.currentTarget.nextElementSibling
    popupBox.classList.add("active")
  }


   const removePopup = (e) =>{
    popup.forEach( (item) => item.classList.remove('active'))
   }

  if (popup){
    popup_close.forEach(item => item.addEventListener('click', removePopup))
    icon.forEach(item => item.addEventListener('click', togglePopupItem))
  }

}

export {togglePopup};
