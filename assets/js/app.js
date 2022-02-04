import "phoenix_html";
import Alpine from "alpinejs";
import {
  Socket
} from "phoenix"
import {
  LiveSocket
} from "phoenix_live_view"
import topbar from "../vendor/topbar"

window.Alpine = Alpine;
Alpine.start();

const hookMethods = require("./hooks.js");
let Hooks = hookMethods.hooks;
let csrfToken = document.querySelector("meta[name='csrf-token']").getAttribute("content")
let liveSocket = new LiveSocket("/live", Socket, {
  params: {
    _csrf_token: csrfToken
  },
  hooks: Hooks,
  dom: {
    onBeforeElUpdated(from, to) {
      if (from._x_dataStack) {
        window.Alpine.clone(from, to);
      }
    }
  },
});

topbar.config({
  barColors: {
    0: "#29d"
  },
  shadowColor: "rgba(0, 0, 0, .3)"
})
window.addEventListener("phx:page-loading-start", info => topbar.show())
window.addEventListener("phx:page-loading-stop", info => topbar.hide())

liveSocket.connect()
window.liveSocket = liveSocket