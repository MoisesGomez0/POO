window.onload = loadData;

function loadData(){
	$.post("controllers/read.jsp",{},function(data){
		var json = JSON.parse(`${data}`.trim());
		if(json.status){
			userName.value = json.name;
			userAge.value = json.age;
			userID.value = json.id;
			userDescription.value = json.description;
		}
		console.log(`Read: ${json.status}`);
	})
}

function writeData(){
	var userName_form = userName.value;
	var userAge_form = userAge.value;
	var userID_form = userID.value;
	var userDescription_form = userDescription.value;
	
	$.post("controllers/write.jsp",{
		"name":userName_form,
		"age":userAge_form,
		"id":userID_form,
		"description":userDescription_form
	},function(data){
		
	});
}

var isTyping = false;
var time = 300;
var timeOut;
function change(obj){
	
	clearTimeout(timeOut);
	isTyping = true;
	
	timeOut = setTimeout(function(){
		writeData();
		isTyping = false;
	},time)
}