$(document).ready(function(){

    var mainsBtn = $("#mainsBtn");
    var advancedBtn = $("#advBtn");
    var bitsatBtn = $("#bstBtn");
    var nextBox = $(".nextBox");

    var elvBtn = $("#elvBtn");
    var twlBtn = $("#twlBtn");
    var allSubImgs = $('.subjectsList li[class^="subImg"]');
    var nextBtn = $("#nextBtn");
    var middleBox = $(".middleBox");

    var micon = $(".micon");
    var aicon = $(".aicon");
    var bicon = $(".bicon");
    var eicon = $(".eicon");
    var ticon = $(".ticon");

    var checkicon = $(".checkicon");
    var checkstdicon = $(".checkstdicon");

    elvBtn.click(function(e){
        e.preventDefault();
        twlBtn.removeClass("twlBtnActive");
        elvBtn.addClass("elvBtnActive");
        middleBox.removeClass('knox').addClass('lumos');

        checkstdicon.removeClass("knox lumosMaxima").addClass("knox");
        ticon.removeClass("knox lumosMaxima").addClass("lumosMaxima");
        eicon.removeClass("knox lumosMaxima").addClass("knox");
        eicon.next('.checkstdicon').removeClass("knox lumosMaxima").addClass("lumosMaxima");
    });

    twlBtn.click(function(e){
        e.preventDefault();
        elvBtn.removeClass("elvBtnActive");
        twlBtn.addClass("twlBtnActive");
        middleBox.removeClass('knox').addClass('lumos');

        checkstdicon.removeClass("knox lumosMaxima").addClass("knox");
        eicon.removeClass("knox lumosMaxima").addClass("lumosMaxima");
        ticon.removeClass("knox lumosMaxima").addClass("knox");
        ticon.next('.checkstdicon').removeClass("knox lumosMaxima").addClass("lumosMaxima");
    });


    allSubImgs.click(function (e) {
        e.preventDefault();
        var elem = $(this);
        allSubImgs.removeClass('subjectActive');
        allSubImgs.css("transform","none");
        allSubImgs.children('.captionTxt').css( {"font-weight": "500", "color": "black"});
        elem.addClass('subjectActive');
        elem.css("transform","scale(1.2)");
        elem.children('.captionTxt').css( {"font-weight": "600", "color": "tomato"});
    });



    mainsBtn.click(function(e){
        e.preventDefault();
        advancedBtn.removeClass("advBtnActive");
        bitsatBtn.removeClass("bstBtnActive");
        mainsBtn.addClass("mainsBtnActive");
        nextBox.removeClass("knox lumos").addClass("lumos");

        checkicon.removeClass("knox lumosMaxima").addClass("knox");
        aicon.removeClass("knox lumosMaxima").addClass("lumosMaxima");
        bicon.removeClass("knox lumosMaxima").addClass("lumosMaxima");
        micon.removeClass("knox lumosMaxima").addClass("knox");
        micon.next('.checkicon').removeClass("knox lumosMaxima").addClass("lumosMaxima");
        //alert('Mains Selected');
    });

    advancedBtn.click(function(e){
        e.preventDefault();
        mainsBtn.removeClass("mainsBtnActive");
        bitsatBtn.removeClass("bstBtnActive");
        advancedBtn.addClass("advBtnActive");
        nextBox.removeClass("knox lumos").addClass("lumos");

        checkicon.removeClass("knox lumosMaxima").addClass("knox");
        bicon.removeClass("knox lumosMaxima").addClass("lumosMaxima");
        micon.removeClass("knox lumosMaxima").addClass("lumosMaxima");
        aicon.removeClass("knox lumosMaxima").addClass("knox");
        aicon.next('.checkicon').removeClass("knox lumosMaxima").addClass("lumosMaxima");
        //alert('Advanced Selected');
    });

    bitsatBtn.click(function(e){
        e.preventDefault();
        mainsBtn.removeClass("mainsBtnActive");
        advancedBtn.removeClass("advBtnActive");
        bitsatBtn.addClass("bstBtnActive");
        nextBox.removeClass("knox lumos").addClass("lumos");

        checkicon.removeClass("knox lumosMaxima").addClass("knox");
        aicon.removeClass("knox lumosMaxima").addClass("lumosMaxima");
        micon.removeClass("knox lumosMaxima").addClass("lumosMaxima");
        bicon.removeClass("knox lumosMaxima").addClass("knox");
        bicon.next('.checkicon').removeClass("knox lumosMaxima").addClass("lumosMaxima");
        //alert('BITSAT Selected');
    });

    nextBtn.click(function (e) {
        e.preventDefault();
    });



});