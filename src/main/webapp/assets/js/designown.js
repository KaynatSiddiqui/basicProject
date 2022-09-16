$('#toptab ul li').click(function() {
        $('ul li.active').removeClass('active');
     $(this).closest('li').addClass('active');
 });