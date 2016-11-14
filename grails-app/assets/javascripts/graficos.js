/**
 * Created by saleta on 10/5/2016.
 */


$.get("/restAPI/", function(data, status){
    var headers = [];
    var values = [];

    var dataSet2 = JSON.parse(data);
    dataSet2.forEach(function (u) {
        u.color = getRandomColor()
    });
    $(document).ready(function() {
        $.plot($("#flot-placeholder2"), dataSet2, options2);
    });


});

$.get("/restAPI/contactosCategoria", function(data, status){
    var headers = [];
    var values = [];

    var dataSet2 = JSON.parse(data);
    dataSet2.forEach(function (u) {
        u.color = getRandomColor()
    });
    $(document).ready(function() {
        $.plot($("#flot-placeholder3"), dataSet2, options2);
    });


});


var options2 = {
    series: {
        pie: {
            show: true,
            innerRadius: 0.5,
            label: {
                show: true
            }
        }
    }
};

function getRandomColor() {
    var letters = '0123456789ABCDEF';
    var color = '#';
    for (var i = 0; i < 6; i++ ) {
        color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
}
