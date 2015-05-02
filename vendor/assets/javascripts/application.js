// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){
        $("#howitworkscontent").hide();
        $("#signincontent").hide();
        $("#abtuscontent").show();

    $("#abtus").click(function(){
        $("#howitworkscontent").hide();
        $("#signincontent").hide();
        $("#abtuscontent").show();
    });
    $("#howitworks").click(function(){
        $("#abtuscontent").hide();
        $("#signincontent").hide();
        $("#howitworkscontent").show();
    });
    $("#signin").click(function(){
        $("#abtuscontent").hide();
        $("#howitworkscontent").hide();
        $("#signincontent").show();
    });

    // Create mobile element
 var mobile = document.createElement('div');
 mobile.className = 'nav-mobile';
 document.querySelector('.nav').appendChild(mobile);

 // hasClass
 function hasClass(elem, className) {
 return new RegExp(' ' + className + ' ').test(' ' + elem.className + ' ');
 }

 // toggleClass
 function toggleClass(elem, className) {
 var newClass = ' ' + elem.className.replace(/[\t\r\n]/g, ' ') + ' ';
 if (hasClass(elem, className)) {
 while (newClass.indexOf(' ' + className + ' ') >= 0) {
 newClass = newClass.replace(' ' + className + ' ', ' ');
 }
 elem.className = newClass.replace(/^\s+|\s+$/g, '');
 } else {
 elem.className += ' ' + className;
 }
 }

 // Mobile nav function
 var mobileNav = document.querySelector('.nav-mobile');
 var toggle = document.querySelector('.navlist');
 mobileNav.onclick = function () {
 toggleClass(this, 'nav-mobile-open');
 toggleClass(toggle, 'nav-active');
 };

});
