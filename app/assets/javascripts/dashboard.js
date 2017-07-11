$(document).ready(function(){
    setTimeout(updateClock, 1000)
});

function updateClock() {
    var d = new Date();
    var hours = d.getHours();
    var minutes = pad(String(d.getMinutes()), 2);
    var suffix = (hours >= 12)? 'pm' : 'am';
    hours = ((hours + 11) % 12 + 1);
    $('#clock').text(hours + ':' + minutes + ' ' +suffix);
}

function pad (str, max) {
    str = str.toString();
    return str.length < max ? pad("0" + str, max) : str;
}