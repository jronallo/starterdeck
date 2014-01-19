window.onkeypress = presentation_keypress_check;

function presentation_keypress_check(aEvent){
  if ( aEvent.keyCode == 110) {
    aEvent.preventDefault();
    var notes = document.getElementsByClassName('note');
    for (var i=0; i < notes.length; i++){
      notes[i].style.display = (notes[i].style.display == 'none' || !notes[i].style.display) ? 'block' : 'none';
    }
  }
}