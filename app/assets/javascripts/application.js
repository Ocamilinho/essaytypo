//= require jquery
//= require bootstrap-sprockets

function handleMenu(){
    var menu = document.getElementById('menu');
    if(menu.style.display == 'flex'){
      menu.style.display = 'none';
    }else{
      menu.style.display = 'flex';
    }
 }