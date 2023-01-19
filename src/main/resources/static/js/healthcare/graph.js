$(document).ready(function(){

    
    graphMath3();
    ajax(1);
    ajax(2);
});

function graphMath1(labels,myData){
    var ctx = document.getElementById("graphMath1").getContext("2d");
    new Chart(ctx, {
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

  var ctx = document.getElementById("graphMath2").getContext("2d");
  new Chart(ctx, {
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

function dateformat(myDate){
  var date = new Date(myDate);
  var year = date.getFullYear();
  var month = date.getMonth() + 1;
  var day = date.getDate();

  return month +"월" + day +"일"
}

function ajax(num){
  $.ajax({
    type:"post",
    url:"/healthcare/WeightGraph",
    data: {"num":num},
    dataType:'json',
    success:function(result){
      
      console.log(result.voList[0]);
					
					
					var labels = [];
					var myData = [];
        if(num==1){
          $.each(result.voList,function (k,v){
						labels.push(dateformat(v.hcdJoinDate));
						myData.push(v.hcdValue);
					});
          graphMath1(labels,myData);
          
        }

        else if(num==2){
          $.each(result.voList,function (k,v){
						labels.push(dateformat(v.hcdJoinDate));
						myData.push(v.hcdValue);
					});
          graphMath2(labels,myData);
          
        }

        else if(num==3){
          $.each(result.voList,function (k,v){
						labels.push(dateformat(v.hcdJoinDate));
						myData.push(v.hcdValue);
					});
          graphMath3(labels,myData);
          
        }
        
    },
    error:function(){
      alert("실패");
    }
  }); // ajax 종료 	
}



function ajax2(){
  $.ajax({
    type:"post",
    url:"/healthcare/WeightGraph",
    data: {"hcdName":"체중"},
    dataType:'json',
    success:function(result){
      
      console.log(result.voList[0]);
					
					
					var labels = [];
					var myData = [];
    
          $.each(result.voList,function (k,v){
						labels.push(dateformat(v.hcdJoinDate));
						myData.push(v.hcdValue);
					});
          
          console.log(myData[0]);
          graphMath1(labels,myData);
    },
    error:function(){
      alert("실패");
    }
  }); // ajax 종료 	
}

function dateformat(myDate){
  var date = new Date(myDate);
  var year = date.getFullYear();
  var month = date.getMonth() + 1;
  var day = date.getDate();

  return month +"월" + day +"일"
}