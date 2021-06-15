// var list_li = document.getElementsByClassName("level");

// for(var i = 0; i < list_li.length; ++i) {
//   list_li[i].style.color = list_li[i].getAttribute("data-color");
// }


var impact = document.getElementById('impact_score');
var likelihood = document.getElementById('likelihood_score');
var risk = document.getElementById('risk_score');
var risk_level = document.getElementById('risk_level');
var risk_scale = document.getElementById('risk_scale');
function calRiskScore() {
  risk.value = parseInt(impact.value) * parseInt(likelihood.value) / 100;

  for(var i = 0; i < risk_scale.options.length; ++i) {
    var min = risk_scale.options[i].getAttribute("data-min");
    var max = risk_scale.options[i].getAttribute("data-max");
    if(risk.value >= parseFloat(min) && risk.value <= parseFloat(max)) {
      risk_level.value = risk_scale.options[i].value;
    }
  }
}

function imposeMinMax(el){
  if(el.value == "") {
    el.value = el.min;
  }
  if(el.value != ""){
    if(parseInt(el.value) < parseInt(el.min)){
      el.value = el.min;
    }
    if(parseInt(el.value) > parseInt(el.max)){
      el.value = el.max;
    }
  }
}



function changeScore(event) {
  var select = event.target;
  var input = event.target.nextElementSibling;
  var option = select.options[select.selectedIndex];

  input.min = option.getAttribute("data-min");
  input.max= option.getAttribute("data-max");
  // console.log(input.min);
  input.value = input.max;
}



function addInput(input_id, container_id) {
  var input_element = document.getElementById(input_id);
  var container_element = document.getElementById(container_id);
  
  var value = input_element.value;
  if(value=="") {
    return;
  }

  var list = container_element.getElementsByClassName(`${input_id}_label`);
  for(var i = 0; i < list.length; ++i) {
    if(value == list[i].value) {
      return;
    }
  }


  input_element.value = "";

  container_element.innerHTML += 
  `<div>
    <i class="fas fa-minus-circle" onclick="removeInput(event)"></i>
    <input type="text" class="${input_id}_label" name="${input_id}_label" value="${value}">
    <input type="number" name="${input_id}_score" value="" min="0" max="100">
    <!--<input type="color" name="${input_id}_color">-->
  </div>`;
  // console.log(value);
}

function removeInput(event) {
  var element = event.target.parentElement;
  element.remove();
  // console.log(element);
  // console.log(value);
  // console.log(select_element.options);
}

