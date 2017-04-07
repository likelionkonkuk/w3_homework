// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


    jQuery(document).ready(function($) {
        $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
            });
    });

/*
    $(document).ready(function (){
        $("#Home").click(function() {
            $('html, body').animate({
                scrollTop: $("#Home").offset().top
            }, 1000);
        });
    });

    $(document).ready(function (){
        $("#게임하기").click(function() {
            $('html, body').animate({
                scrollTop: $("#gogogame").offset().top
            }, 1000);
        });
    });


    $(document).ready(function (){
        $("#결과보기").click(function() {
            $('html, body').animate({
                scrollTop: $("#footer").offset().top
            }, 1000);
        });
    });
*/
