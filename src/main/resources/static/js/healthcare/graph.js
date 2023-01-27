$(document).ready(function(){

    ajax(1);
    ajax(2);
    ajax(3);
    ajax(4);
});

function graphMath1(labels,myData){
    var ctx1 = document.getElementById("graphMath1").getContext("2d");
    new Chart(ctx1, {
        type: 'bar',
        data: {
          labels: labels,
          datasets: [{
            label: '체중',
            data: myData,
            backgroundColor: [
                "rgba(54, 162, 235, 0.6)"
            ],
            borderColor: [
                "rgba(54, 162, 235, 1)"
            ],
            borderWidth: 1
          }]
        },
        /*빨간색
        background: rgba(255,0,0,0.5);*/
        /*초록색
        background: rgba(0,255,0,1);*/
        /*노란색
        background: rgba(255,255,0,1);*/
        options: {
            plugins:{
              legend: {
                display: false
            },
            tooltip: {
              backgroundColor: 'rgba(255,0,0,0.5)',
              
              },
              
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

function graphMath2(labels,myData){

  var ctx2 = document.getElementById("graphMath2").getContext("2d");
  new Chart(ctx2, {
      type: 'line',
      data: {
        labels: labels,
        datasets: [{
          label: 'BMI',
          data: myData,
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
                min: 0,
                max: 40,
              }
          },
          maintainAspectRatio :false
      }
    });
}

function graphMath3(labels,myData,myData2){

  var ctx3 = document.getElementById("graphMath3").getContext("2d");
  new Chart(ctx3, {
      type: 'line',
      data: {
        labels: labels,
        datasets: [{
          label: '최저 혈압(이완기)',
          data: myData2,
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
          label: '최고 혈압(수축기)',
          data: myData,
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
function graphMath4(labels,myData){

  var ctx4 = document.getElementById("graphMath4").getContext("2d");
  new Chart(ctx4, {
      type: 'line',
      data: {
        labels: labels,
        datasets: [{
          label: '혈당',
          data: myData,
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
                min: 0,
                max: 400,
              }
          },
          maintainAspectRatio :false
      }
    });
}
function dateformat(myDate,num){
  var date = new Date(myDate);
  var year = date.getFullYear();
  var month = date.getMonth() + 1;
  var day = date.getDate();
  var hs = date.getHours();
  var mn = date.getMinutes();
  console.log(num===4);
  if(num==4){
    return month +"/" + day +"/"+hs+"/"+mn;
  }
  else{
    return month +"월" + day +"일";
  }
  
}

function ajax(num){
  $.ajax({
    type:"post",
    url:"/healthcare/WeightGraph",
    data: {"num":num},
    dataType:'json',
    success:function(result){
      
      //console.log(result.voList[0]);
					
					
					var labels = [];
					var myData = [];
          var myData2 = [];
        if(num==1){
          $.each(result.voList,function (k,v){
						labels.push(dateformat(v.hcdJoinDate,0));
						myData.push(v.hcdValue);
					});
          graphMath1(labels,myData);
          
        }

        else if(num==2){
          $.each(result.voList,function (k,v){
						labels.push(dateformat(v.hcdJoinDate,0));
						myData.push(v.hcdValue);
					});
          graphMath2(labels,myData);
          
        }
        
        else if(num==3){
          $.each(result.voList,function (k,v){
						labels.push(dateformat(v.hcdJoinDate1,0));
						myData.push(v.hcdValue1);
            myData2.push(v.hcdValue2);
					});
          graphMath3(labels,myData,myData2);
          
        }

        else if(num==4){
          $.each(result.voList,function (k,v){
						labels.push(dateformat(v.hcdJoinDate,4));
						myData.push(v.hcdValue);
					});
          graphMath4(labels,myData);
          
        }
        
    },
    error:function(){
    }
  }); // ajax 종료 	
}