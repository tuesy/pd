function concatData(id, data) {
  return id + ": " + data + "<br>";
}

var output = document.getElementById('output');
var frameString = "", handString = "";
// , fingerString = "";
var hand;
// , finger;

// Leap.loop uses browser's requestAnimationFrame
var options = {enableGestures: true};
// Main Leap loop
Leap.loop(options, function(frame) {
  frameString = concatData("frame_id", frame.id);
  frameString += concatData("num_hands", frame.hands.length);
  // frameString += concatData("frame_id", frame.fingers.length);
  frameString += "<br>";



  // hands
  for (var i=0, len=frame.hands.length; i<len; i++) {
    hand = frame.hands[i];
    handString = concatData("hand_type", hand.type);
    handString += concatData("pinch_strength", hand.pinchStrength);
    handString += concatData("grab_strength", hand.grabStrength);
    handString += concatData("confidence", hand.confidence);

    handString += "<br>";

    frameString += handString;
  }

  // getting data
  ps=[];
  for (var i=0, len=frame.hands.length; i<len; i++) {
    hand = frame.hands[i];
    handString = concatData("hand_type", hand.type);
    ps[i] = [i, hand.pinchStrength];
    handString += concatData("pinch_strength", hand.pinchStrength);
    handString += concatData("grab_strength", hand.grabStrength);
    handString += concatData("confidence", hand.confidence);

    handString += "<br>";

    frameString += handString;
  }


  // output
  // output.innerHTML = frameString;
  output.innerHTML = ps;
  // How to get data from a recording?
  // Or how to keep data from live movement?
  new Chartkick.LineChart("chart-1", ps);
});