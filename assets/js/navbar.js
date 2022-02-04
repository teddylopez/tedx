let methods = {}

function clearActiveStyles() {
  const navMenu = document.getElementById('nav-menu');
  navMenu.querySelectorAll('li.active').forEach((li) => li.classList.remove('active'));
}

methods.styleNavBar = function() {
  const url = window.location.pathname;
  const navMenu = document.getElementById('nav-menu')
  const nav = document.querySelector('nav');
  const aboutMeDiv = document.getElementById('about-me');
  const aboutMeLi = document.querySelector('li.about-me');
  const skillsDiv = document.getElementById('skills');
  const skillsLi = document.querySelector('li.skills');
  const experienceDiv = document.getElementById('experience');
  const experienceLi = document.querySelector('li.experience');
  const contactDiv = document.getElementById('contact');
  const contactLi = document.querySelector('li.contact');

  if (url !== '/') {
    navMenu.style.display = 'none';
  }

  window.addEventListener('scroll', () => {
    if (window.scrollY >= 50) {
      nav.classList.add('scrolled-nav');
    } else {
      nav.classList.remove('scrolled-nav');
    }

    if (aboutMeDiv) {
      if (window.scrollY > (aboutMeDiv.offsetTop - 80)) {
        clearActiveStyles();
        aboutMeLi.classList.add('active');
      }

      if (window.scrollY > (skillsDiv.offsetTop - 80)) {
        clearActiveStyles();
        skillsLi.classList.add('active');
      }

      if (window.scrollY > (experienceDiv.offsetTop - 80)) {
        clearActiveStyles();
        experienceLi.classList.add('active');
      }

      if (window.scrollY > (contactDiv.offsetTop - 80)) {
        clearActiveStyles();
        contactLi.classList.add('active');
      }

      if (window.scrollY < (aboutMeDiv.offsetTop)) {
        clearActiveStyles();
      }
    }
  });
};

methods.hideNavMenu = function() {
  document.getElementById('nav-menu').style.display = 'none';
}

methods.showNavMenu = function() {
  document.getElementById('nav-menu').style.display = 'flex';
}

methods.clearActiveStyles = function() {
  clearActiveStyles();
}

exports.methods = methods;