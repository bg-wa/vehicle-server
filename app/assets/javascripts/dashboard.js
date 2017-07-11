$(document).ready(function(){
    setInterval(updateClock, 1000)
    setInterval(updateTemperature, 60000)
});

function updateClock() {
    var d = new Date();
    var hours = d.getHours();
    var minutes = pad(String(d.getMinutes()), 2);
    var suffix = (hours >= 12)? 'pm' : 'am';
    hours = ((hours + 11) % 12 + 1);
    $('#clock').text(hours + ':' + minutes + ' ' +suffix);
}

function updateTemperature(){
    $.getJSON('/dht11-reading', function(data){
        $('#temperature').html( data.temperature_fahrenheit + ' F&deg;')
        $('#humidity').html( data.humidity + '%')
    })
}

function pad (str, max) {
    str = str.toString();
    return str.length < max ? pad("0" + str, max) : str;
}