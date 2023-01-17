/**
 * healthcare.js
 */
 
 $(document).ready(function(){
 
    $('#graphWeight').on('click', function(){
        divChange('#graphWeight','.graphDiv',
                    '#graphWeightHiddenDiv','.graphHiddenDiv',
                    '#imgHiddenDiv1','.imgHiddenDiv');
        
    });

    $('#graphBMI').on('click', function(){
        divChange('#graphBMI','.graphDiv',
                    '#graphBMIHiddenDiv','.graphHiddenDiv',
                    '#imgHiddenDiv2','.imgHiddenDiv');
        
    });

    $('#graphBloodPressure').on('click', function(){
        divChange('#graphBloodPressure','.graphDiv',
                    '#graphBloodPressureHiddenDiv','.graphHiddenDiv',
                    '#imgHiddenDiv3','.imgHiddenDiv');
        
    });

    $('#graphBloodSugar').on('click', function(){
        divChange('#graphBloodSugar','.graphDiv',
                    '#graphBloodSugarHiddenDiv','.graphHiddenDiv',
                    '#imgHiddenDiv4','.imgHiddenDiv');
        
    });
      
    function divChange(thisDiv, notDiv,thisGraph,notGraph,thisImg,notImg){
        
        $(notDiv).css("width","5%")
        $(thisDiv).css("width","88%");
        
        $(thisDiv).css("transition-duration","500ms")
        $(notDiv).css("transition-duration","500ms")
        
        $(notDiv).css("border-radius","30px")
        $(thisDiv).css("border-radius","10px")
        $(notGraph).css("visibility","hidden")
        $(thisGraph).css("visibility","visible")
        $(notImg).css("visibility","visible")
        $(thisImg).css("visibility","hidden")
    }
 });