/**
 * healthcare.js
 */
 
 $(document).ready(function(){
 
    $('#graphWeight').on('click', function(){
        divChange('#graphWeight','.graphDiv',
                    '#graphWeightHiddenDiv','.graphHiddenDiv',
                    '#imgHiddenDiv1','.imgHiddenDiv',
                    '#graphSize1','.graphSize');
        
    });

    $('#graphBMI').on('click', function(){
        divChange('#graphBMI','.graphDiv',
                    '#graphBMIHiddenDiv','.graphHiddenDiv',
                    '#imgHiddenDiv2','.imgHiddenDiv',
                    '#graphSize2','.graphSize');
        
    });

    $('#graphBloodPressure').on('click', function(){
        divChange('#graphBloodPressure','.graphDiv',
                    '#graphBloodPressureHiddenDiv','.graphHiddenDiv',
                    '#imgHiddenDiv3','.imgHiddenDiv',
                    '#graphSize3','.graphSize');
        
    });

    $('#graphBloodSugar').on('click', function(){
        divChange('#graphBloodSugar','.graphDiv',
                    '#graphBloodSugarHiddenDiv','.graphHiddenDiv',
                    '#imgHiddenDiv4','.imgHiddenDiv',
                    '#graphSize4','.graphSize');
        
    });
      
    function divChange(thisDiv, notDiv,thisGraph,notGraph,thisImg,notImg, thisGraphSize, notGraphSize){
        
        $(notDiv).css("width","5%");
        $(thisDiv).css("width","75%");
        $(notDiv).css("height","550px");
        $(thisDiv).css("height","600px");
        $(notDiv).css("margin-top","30px");
        $(thisDiv).css("margin-top","0px");
        $(notDiv).css("border","none");
        $(thisDiv).css("border","3px solid #8f8f8f");
        $(notDiv).css("box-shadow","0px 3px 3px 3px rgba(98, 98, 98, 0.819)");
        $(thisDiv).css("box-shadow","none");
        $(notDiv).css("background-color","#e4e9ff")
        $(thisDiv).css("background-color","#eff7ff");
        $(notDiv).css("cursor","pointer")
        $(thisDiv).css("cursor","default");
        //애니메이션 처럼 나옴
        $(thisDiv).css("transition-duration","500ms")
        $(notDiv).css("transition-duration","500ms")
        
        $(notDiv).css("border-radius","20px")
        $(thisDiv).css("border-radius","10px")
        $(notGraph).css("visibility","hidden")
        $(thisGraph).css("visibility","visible")
        $(notImg).css("visibility","visible")
        $(thisImg).css("visibility","hidden")
        $(notGraphSize).css("width","0%")
        $(thisGraphSize).css("width","94%");
        
    }
 });