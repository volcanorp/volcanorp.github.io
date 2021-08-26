
$("body").mousemove(function(e) {
    parallaxIt(e, ".obj", -100);
});

function parallaxIt(e, target, movement) {
    var $this = $("body");
    var relX = e.pageX - $this.offset().left;
    var relY = e.pageY - $this.offset().top;

    TweenMax.to(target, 1, {
        x: (relX - $this.width() / 2) / $this.width() * movement,
        y: (relY - $this.height() / 2) / $this.height() * movement
    });
}
$(function(){
	
	let online_rap = Number($('#server_rap_online').text().replace(/[^+\d]/g, ''));
	let max_online_rap = Number($('#server_rap_max_online').text().replace(/[^+\d]/g, ''));
	let online_bass = Number($('#server_bass_online').text().replace(/[^+\d]/g, ''));
	let max_online_bass = Number($('#server_bass_max_online').text().replace(/[^+\d]/g, ''));
	let online_beat = Number($('#server_beat_online').text().replace(/[^+\d]/g, ''));
	let max_online_beat = Number($('#server_beat_online').text().replace(/[^+\d]/g, ''));
	let all_online = online_rap+online_bass+online_beat;
	$('#all_online').html(all_online);
	$('#progress_rap').css('width',(max_online_rap/100)*(online_rap/(max_online_rap/100)));
	$('#progress_bass').css('width',(max_online_bass/100)*(online_bass/(max_online_bass/100)));
	$('#progress_beat').css('width',(max_online_beat/100)*(online_beat/(max_online_beat/100)));
    // mobile menu
    $('.mobile_nav').click(function(e){
		e.preventDefault();
			$('html').toggleClass('no_scroll');
			$(this).toggleClass('mobile_nav-active');
			$('.nav_list').toggleClass('nav_list-active');
		
		
		
	});
	var lots_of_stuff_already_done = false;
	$("#donate_go").click(function(e){
		if(lots_of_stuff_already_done) {
			lots_of_stuff_already_done = false;
			return;
		}
		e.preventDefault();
		var response = grecaptcha.getResponse();

		if(response.length == 0) alert('Пройдите проверку на капчу');

		else {
			lots_of_stuff_already_done = true; // set flag
    		$(this).trigger('click');
		}
	});
    $('.select_checked').on('click', function(){
		$('.select_dropdown').toggleClass('select_dropdown_open');
		$('.select_checked').toggleClass('select_dropdown_open_two');
		$(".selects").toggleClass('opened');
		
    });
    $('.select_option').on('click', function(){
		var value = $(this).attr('data-value');
		var number = $(this).attr('data-number');
		var link = $(this).attr('data-link');
	
		// $(".selects").toggleClass('opened');
		$('#select-servers').val(number);
		// $('select_checked').toggleClass('select_dropdown_open_two');
        $('.select_checked').text(value);
		$('.select_dropdown').toggleClass('select_dropdown_open');
		$('.select_checked').toggleClass('select_dropdown_open_two');
		$(".selects").toggleClass('opened');
		if(link != "") $('#donate').attr("action",link);
		
	});
	var modal_drop = $('.modal_wrap, .modal_drop');
	
	$('.closeModal,.continue').on('click', function() {
		modal_drop.toggleClass('active');

	});
	$('.open_menu_user').on('click', function() {
		$('.menu_user').toggleClass('active');

	});
   
});