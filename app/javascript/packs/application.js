require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

require("jquery")
require("jquery-ui")
require("packs/html.sortable.js")

$(function(){
  $('.sortable').sortable();
});


import 'bootstrap';
import './src/application.scss'

