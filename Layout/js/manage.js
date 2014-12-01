/*
	File chạy đầu tiên khi khởi động Website
	Main Management
*/
(function(){
	
	// Draw Clock UI
	/*var setTimer = setInterval(function(){
		drawClock('clockId');
	}, 500);
	
	function stopTimer(){
		clearInterval(setTimer);	
	};*/
	
	// Calendar
	var day = moment().format('dddd');
	var month = moment().format('MMMM');
	var date = moment().date();
	$('#calendarId').find("em").html(day);
	$('#calendarId').find("strong").html(month);
	$('#calendarId > span').html(date);
	
	// Set Height for SlideBar
	var heightScreen = $(window).height();
	var heightNav = $('#nav').height();
	$('.scrollSlideBar').height(heightScreen-heightNav);
	
	// Set Height for Main
	var heightBanner = $('#banner').height();
	$('.scrollDiv').height(heightScreen-heightNav-heightBanner);
	
	
})();

