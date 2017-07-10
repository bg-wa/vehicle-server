$(document).ready(function(){
    setTimeout(function updateClock() {
        var d = new Date();
        var hours = d.getHours();
        var minutes = d.getMinutes();
        var suffix = (hours >= 12)? 'pm' : 'am';
        hours = ((hours + 11) % 12 + 1);
        $('#clock').text(hours + ':' + minutes + ' ' +suffix);
    }, 1000)
})