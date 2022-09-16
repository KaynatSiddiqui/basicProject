
    $(document).ready(function(){
        $('.owl-carousel').owlCarousel();
      });
      $('.owl-carousel').owlCarousel({
      navText : ["<i class='fa la1 la1_1 fa-angle-left'></i><i class='fa la1 la1_2 fa-angle-left'></i>","<i class='fa la2 la2_1 fa-angle-right'></i><i class='fa la2 la2_2 fa-angle-right'></i>"],

        nav:true,  
        loop:true,
        margin:10,
        responsiveClass:true,
        responsive:{
            0:{
                items:1,
                nav:false
            },
            425:{
                items:2,
                nav:true
            },
            600:{
                items:3,
                nav:true
            },
            1000:{
                items:4,
                nav:true,
                loop:false
            },
            1300:{
                items:5,
                nav:true,
                loop:false
            }
        }
    })