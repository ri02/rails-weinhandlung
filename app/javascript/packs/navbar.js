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

export {toggleSidebar};
