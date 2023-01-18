$(document).ready(function(){

    barChart();
    lineChart();
    

});

function barChart(){

	var data = {
            //기입 날짜 별
			labels: ["09시~10시", "10시", "11시", "12시", "13시", "14시", "15시", "16시", "17시", "18시", "19시", "20시", "21시", "22시"],

			datasets: [

				{

					label: "",

					fillColor: "rgba(150,200,250,0.5)",

					strokeColor: "rgba(150,200,250,0.8)",

					highlightFill: "rgba(150,200,250,0.75)",

					highlightStroke: "rgba(150,200,250,1)",

					data: [65, 59, 80, 81, 56, 55, 30, 100, 120, 50, 11, 40, 70, 120]

				}

			]

		};

    var ctx = document.getElementById("graphMath1").getContext("2d");

    var options = { };

    var barChart = new Chart(ctx).Bar(data, options);

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