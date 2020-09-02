
const togglePopup = () => {

  const icon = Array.from(document.querySelectorAll('.shopping-icon'))
  const popup = Array.from(document.querySelectorAll('.popup'))
  const popup_close = Array.from(document.querySelectorAll('.popup-close'))
  const number = Array.from(document.querySelectorAll('.number'))
  const plus = Array.from(document.querySelectorAll('.plus'))
  const minus = Array.from(document.querySelectorAll('.minus'))
  const reload = Array.from(document.querySelectorAll('.popup-reload'))

  const togglePopupItem = (e) => {

    popup.forEach( (item) => item.classList.remove('active'))
    const popupBox = e.currentTarget.nextElementSibling
    popupBox.classList.add("active")
  }


   const removePopup = (e) =>{
    popup.forEach( (item) => item.classList.remove('active'))
   }

  const addNumber = (e)  => {
    const number = e.currentTarget.previousElementSibling
    const newNumber = parseInt(number.innerHTML, 10) + 1
    number.innerHTML = newNumber
  }

  const substractNumber = (e)  => {
    const number = e.currentTarget.nextElementSibling
    const newNumber = parseInt(number.innerHTML, 10) - 1
    number.innerHTML = newNumber
  }

  const reloadPopup = (e) => {
    const currentPopup = e.currentTarget.parentElement
    console.log(currentPopup)
  }

  if (popup){
    popup_close.forEach(item => item.addEventListener('click', removePopup))
    icon.forEach(item => item.addEventListener('click', togglePopupItem))
    plus.forEach(item => item.addEventListener('click', addNumber))
    minus.forEach(item => item.addEventListener('click', substractNumber))
    reload.forEach(item => item.addEventListener('click', reloadPopup))

  }

}

export {togglePopup};
