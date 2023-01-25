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
        
        $(notDiv).css("width","5%")
        $(thisDiv).css("width","88%");
        //애니메이션 처럼 나옴
        $(thisDiv).css("transition-duration","500ms")
        $(notDiv).css("transition-duration","500ms")
        
        $(notDiv).css("border-radius","30px")
        $(thisDiv).css("border-radius","10px")
        $(notGraph).css("visibility","hidden")
        $(thisGraph).css("visibility","visible")
        $(notImg).css("visibility","visible")
        $(thisImg).css("visibility","hidden")
        $(notGraphSize).css("width","0px")
        $(thisGraphSize).css("width","980px");
    }
 });