const toggleSidebar = () =>{

const burger = document.getElementById('burger-icon')
const arrow = document.getElementById('arrow-icon')

const showSidebar = () => {
  const sidebar = document.querySelector('.sidebar')
  const sidebar_grey = document.querySelector('.sidebar-grey')
  sidebar.classList.add("active")
  sidebar_grey.classList.add("active")
}

const hideSidebar = () => {
  const sidebar = document.querySelector('.sidebar')
  const sidebar_grey = document.querySelector('.sidebar-grey')
  sidebar.classList.remove("active")
  sidebar_grey.classList.remove("active")

}

burger.addEventListener('click', showSidebar)
arrow.addEventListener('click', hideSidebar)

}


const toggleMenu = () => {

  const dropdownTop = Array.from(document.querySelectorAll('.nav-dropdown'))
  const dropdownBottom = Array.from(document.querySelectorAll('.nav-dropdown-bottom'))
  dropdownBottom.forEach( (item) => item.classList.remove('active'))

  const toggleMenuItem = (e) => {
    const active = e.currentTarget.querySelector(".active")

    if (active===null){
      console.log('test')
    const dropdownBottom = Array.from(document.querySelectorAll('.nav-dropdown-bottom'))
    dropdownBottom.forEach( (item) => item.classList.remove('active'))
    }

    const dropdownBox = e.currentTarget.querySelector(".nav-dropdown-bottom")
    dropdownBox.classList.toggle("active")
  }

dropdownTop.forEach( (item) => item.addEventListener('click', toggleMenuItem))

}

export {toggleSidebar, toggleMenu};
