$(document).ready(function(){

    barChart();
    lineChart();
    

});

function barChart(){
    var ctx = document.getElementById("graphMath1").getContext("2d");
    new Chart(ctx, {
        type: 'bar',
        data: {
          labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
          datasets: [{
            label: '# of Votes',
            data: [70, 80, 76, 58, 64, 75],
            backgroundColor: [
                "rgba(54, 162, 235, 0.6)"
            ],
            borderColor: [
                "rgba(255,99,132,1)",
                "rgba(54, 162, 235, 1)",
                "rgba(255, 206, 86, 1)"
            ],
            borderWidth: 1
          }],
          datasets: [{
            label: '# of Votes',
            data: [70, 80, 76, 58, 64, 75],
            backgroundColor: [
                "rgba(54, 162, 235, 0.6)"
            ],
            borderColor: [
                "rgba(255,99,132,1)",
                "rgba(54, 162, 235, 1)",
                "rgba(255, 206, 86, 1)"
            ],
            borderWidth: 1
          }]
          
        },
       
        options: {
            plugins:{
                legend: {
                    display: false
                }
            },
            x: {
                type: 'time',
                time: {
                  // Luxon format string
                  tooltipFormat: 'DD T'
                },
                title: {
                  display: true,
                  text: 'Date'
                }
              },
            scales: {
                y: {
                  min: 40,
                  max: 130,
                }
            },
            maintainAspectRatio :false
        }
      });

};

function lineChart(){

	var data = {

	        labels: ["월","화","수","목","금","토","일"],

	        datasets: [

	            {

	                label: "",

	                fillColor: "rgba(220,220,220,0.2)",

	                strokeColor: "rgba(220,220,220,1)",

	                pointColor: "rgba(220,220,220,1)",

	                pointStrokeColor: "#fff",

	                pointHighlightFill: "#fff",

	                pointHighlightStroke: "rgba(220,220,220,1)",

	                data: [10, 15, 20, 20, 14, 18, 35]

	            }
	        ]

	    };

	    var ctx = document.getElementById("graphMath2").getContext("2d");

	    var options = { };

	    var lineChart = new Chart(ctx).Line(data, options);



}