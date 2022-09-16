(function localFileVideoPlayerInit(win) {
  var URL = win.URL || win.webkitURL,
    displayMessage = (function displayMessageInit() {
      var node = document.querySelector('#message');

      return function displayMessage(message, isError) {
        node.innerHTML = message;
        node.className = isError ? 'error' : 'info';
      };
    }()),
    playSelectedFile = function playSelectedFileInit(event) {
      var file = this.files[0];

      var type = file.type;

      var videoNode = document.querySelector('video');

      var canPlay = videoNode.canPlayType(type);

      canPlay = (canPlay === '' ? 'no' : canPlay);

      var message = 'Can play type "' + type + '": ' + canPlay;

      var isError = canPlay === 'no';

      displayMessage(message, isError);

      if (isError) {
       // return;
      }

      var fileURL = URL.createObjectURL(file);

      videoNode.src = fileURL;
    },
    inputNode = document.querySelector('input');

  if (!URL) {
    displayMessage('Your browser is not ' +
      '<a href="http://caniuse.com/bloburls">supported</a>!', true);

    return;
  }

  inputNode.addEventListener('change', playSelectedFile, false);

  var video = document.getElementById("localVid");
  video.addEventListener("loadedmetadata", initScreenshot);
  video.addEventListener("playing", startScreenshot);
  video.addEventListener("pause", stopScreenshot);
  video.addEventListener("ended", stopScreenshot);

  var canvas = document.getElementById("canvas");
  var ctx = canvas.getContext("2d");
  var ssContainer = document.getElementById("screenShots");
  var videoHeight, videoWidth;
  var drawTimer = null;

  function initScreenshot() {
    console.log("Init Screenshot");
    videoHeight = video.videoHeight;
    videoWidth = video.videoWidth;
    canvas.width = videoWidth;
    canvas.height = videoHeight;
  }

  function startScreenshot() {
    if (drawTimer == null) {
      drawTimer = setInterval(grabScreenshot, 1000);
    }
  }

  function stopScreenshot() {
    if (drawTimer) {
      clearInterval(drawTimer);
      drawTimer = null;
    }
  }

  function grabScreenshot() {
    ctx.drawImage(video, 0, 0, videoWidth, videoHeight);
    var img = new Image();
    img.src = canvas.toDataURL("image/png");
    img.width = 120;
    ssContainer.appendChild(img);
  }

}(window));