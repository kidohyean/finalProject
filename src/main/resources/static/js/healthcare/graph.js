$(document).ready(function(){

    graphMath1();
    graphMath2();
    graphMath3();

});

function graphMath1(){
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
                "rgba(54, 162, 235, 1)"
            ],
            borderWidth: 1
          }]
        },
       
        options: {
            plugins:[{
                legend: {
                    display: false
                },
                afterLayout: chart => {
                  let ctx = chart.ctx;
                  ctx.save();
                  let yAxis = chart.scales.y;
        
                  //기준값을 넣어준다
                  let ymaxValue = yAxis.getPixelForValue(maxValue);
                  let gradient = ctx.createLinearGradient(0, yAxis.top, 0, yAxis.bottom);
        
                  //기준선 넘었을 때 색상은 #dc0e0e (빨간색)
                  gradient.addColorStop(0, '#dc0e0e');
                  let offset = 1 / yAxis.bottom * ymaxValue;
                  gradient.addColorStop(offset, '#dc0e0e');
                  gradient.addColorStop(offset, '#6fba2c');
        
                  //기준값 아래의 색상은 #6fba2c (연두색)
                  gradient.addColorStop(1, '#6fba2c');
                  chart.data.datasets[0].borderColor = gradient;
                  ctx.restore();
                }
              }],
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

function graphMath2(){

  var ctx = document.getElementById("graphMath2").getContext("2d");
  new Chart(ctx, {
      type: 'line',
      data: {
        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
        datasets: [{
          label: '# of Votes',
          data: [70, 80, 76, 58, 64, 75],
          backgroundColor: [
              "rgba(54, 162, 235, 0.6)"
          ],
          borderColor: [
              "rgba(54, 162, 235, 1)"
          ],
          borderWidth: 1,
          fill: true
        }],
        
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

}

function graphMath3(){

  var ctx = document.getElementById("graphMath3").getContext("2d");
  new Chart(ctx, {
      type: 'line',
      data: {
        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
        datasets: [{
          label: '최저 혈압',
          data: [70, 80, 76, 58, 64, 75],
          backgroundColor: [
              "rgba(54, 162, 235, 0.6)"
          ],
          borderColor: [
              "rgba(54, 162, 235, 1)"
          ],
          borderWidth: 1,
          fill: true
        },
        {
          label: '최고 혈압',
          data: [110, 120, 136, 124, 113, 110],
          backgroundColor: [
              "rgba(231, 76, 60, 0.75)"
          ],
          borderColor: [
              "rgba(231, 76, 60, 0.75)"
          ],
          borderWidth: 1,
          fill: true
        }],
        
      },
     
      options: {
          
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

}