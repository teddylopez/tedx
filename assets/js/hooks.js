const navbar = require('./navbar.js');
const scroll = require('./scroll.js');

let Hooks = {};

/* Styling for navbar */
Hooks.HomeNavBar = {
  mounted() {
    scroll.methods.scrollToTop();
    navbar.methods.styleNavBar();
    navbar.methods.showNavMenu();
    navbar.methods.clearActiveStyles();
  }
}

Hooks.PortfolioNavBar = {
  mounted() {
    scroll.methods.scrollToTop();
    navbar.methods.hideNavMenu();
  }
}

Hooks.ProjectNavBar = {
  mounted() {
    scroll.methods.scrollToTop();
    navbar.methods.hideNavMenu();
  }
}

exports.hooks = Hooks;