const countryFilter = () =>{

const countriesBtn = Array.from(document.querySelectorAll('.country-selection-button'));


const toggleCountry = (e) => {
  const selectedCountry = e.currentTarget.innerHTML;
  e.currentTarget.classList.toggle("active");
  const allCountries= Array.from(document.querySelectorAll('.country-wines'));
  allCountries.forEach( (country) => {
    let countryName = country.querySelector('.country-name').innerHTML;
    if (countryName == selectedCountry) {
      country.classList.toggle("active")
    }
  })
}

countriesBtn.forEach( (country) => country.addEventListener('click', toggleCountry))

}

export {countryFilter};
