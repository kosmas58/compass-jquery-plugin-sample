var currentRotation=null;

function checkOrientAndLocation(){
	if(currentRotation != window.orientation){
		setOrientation();
	}
}

function setOrientation(){
	switch(window.orientation){
		case 0:
			orient = 'portrait';
			break;
		case 90:
			orient = 'landscape';
			break;
		case -90:
			orient = 'landscape';
			break;
	}
	currentRotation = window.orientation;
	document.body.setAttribute("orient",orient);
	setTimeout(scrollTo,0,0,1);
}

$().ready(function(){
	setInterval(checkOrientAndLocation,1000);
	$('#touchme1').touch({
		animate: true,
		sticky: false,
		dragx: true,
		dragy: true,
		rotate: true,
		resort: true,
		scale: true
	});
	$('#touchme2').touch({
		animate: false,
		sticky: false,
		dragx: true,
		dragy: true,
		rotate: false,
		resort: true,
		scale: false
	});
	$('.dragx').touch({
		animate: true,
		sticky: false,
		dragx: false,
		dragy: true,
		rotate: false,
		resort: false,
		scale: false
	});
	$('.dragy').touch({
		animate: true,
		sticky: false,
		dragx: true,
		dragy: false,
		rotate: false,
		resort: false,
		scale: false
	});
});