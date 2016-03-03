/* Requires jQuery */

//$.ajaxSetup({ cache: true }); /* http://forum.jquery.com/topic/jquery-turn-off-cache-busting-in-getscript */
//$.getScript("/AudioContextMonkeyPatch.js");
//$.getScript("/recorder.js");
/* http://stackoverflow.com/questions/1130921/is-the-callback-on-jquerys-getscript-unreliable-or-am-i-doing-something-wrong */
//$.ajax({url:"https://learnwithecho.com/AudioContextMonkeyPatch.js",dataType:'script'}); 
//$.ajax({url:"https://learnwithecho.com/recorder.js",dataType:'script',async:false});
//$.getScript("/assets/javascripts/AudioContextMonkeyPatch.js");
//$.getScript("/assets/javascripts/recorder.js");

var theStream, recorder, recording = 0, fftSize = 2048;
var audioContext; 
var buf = new Uint8Array( fftSize );
var analyser;

function getUserMedia(dictionary, extraCallback) {
  try {
      audioContext = new window.AudioContext();
      if (!navigator.getUserMedia)
      	navigator.getUserMedia = navigator.webkitGetUserMedia;
      var error = function(){alert('Stream generation failed.')};
      navigator.getUserMedia(dictionary, function(stream){gotUserMediaStream(stream), extraCallback(stream)}, error);
  } catch (e) {
      console.log('getUserMedia threw exception :' + e);
  }
}

function convertToMono( input ) {
    var splitter = audioContext.createChannelSplitter(2);
    var merger = audioContext.createChannelMerger(2);
    input.connect( splitter );
    splitter.connect( merger, 0, 0 );
    splitter.connect( merger, 0, 1 );
    return merger;
}

function gotUserMediaStream(stream) {
  theStream = stream;
  
  // Create an AudioNode from the stream.
  var mediaStreamSource = audioContext.createMediaStreamSource(stream);

  // Connect recorder
  recorder = new window.Recorder(mediaStreamSource);

  // Connect it to the destination
  analyser = audioContext.createAnalyser();
  analyser.fftSize = fftSize;
  convertToMono( mediaStreamSource ).connect( analyser );
}

function redrawAnalysis( time ) {
	var cycles = new Array;
	analyser.getByteTimeDomainData( buf );
  var sum=0;
  for (var i=0; i<fftSize; i++) {
    sum += Math.pow(buf[i]-128,2);
  }
  progressElem.css('width', (recording*Math.sqrt(sum/fftSize)*20)+'%');
  if (recording) {
    if (!window.requestAnimationFrame)
	  	window.requestAnimationFrame = window.webkitRequestAnimationFrame;
  	var rafID = window.requestAnimationFrame( redrawAnalysis );
  }
  return 0;
}

var progressElem;
function startStopPractice(startStopButton, echoButton, progressBar, playerElem){
  progressElem = $(progressBar);
  if ($(startStopButton).find('i').hasClass('glyphicon-stop')) {
    $(startStopButton).find('i').addClass('glyphicon-ice-lolly').removeClass('glyphicon-stop');
    $(echoButton).removeClass('disabled');      
    stopRecording(playerElem);
    progressElem.css('width', '0px');
  } else {
    $(startStopButton).find('i').addClass('glyphicon-stop').removeClass('glyphicon-ice-lolly');
    startRecording();
  }
}

function startRecording() {
    if (recorder) {recorder.clear();recorder.record();}
    recording = 1;
    redrawAnalysis();
}

function stopRecording(playerElem) {
    recording = 0;
    recorder.stop();
    recorder.exportWAV(function(s) {
      $(playerElem).get(0).src = window.URL.createObjectURL(s);
      $(playerElem).data("blob",s);
    }, 'audio/wav');
    
}

function startEcho(playerElem){
    $('.glyphicon-stop').addClass('glyphicon-ice-lolly').removeClass('glyphicon-stop');
    doPlayback(playerElem);
}

function doPlayback(playerElem) {
    $(playerElem).get(0).play();
}