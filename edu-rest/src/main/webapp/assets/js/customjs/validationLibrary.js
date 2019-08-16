var name_regex = /^[a-zA-Z ]+$/;
var regno_regex = /^[0-9 ]+$/;
var mob_regex=/^[7-9]\d{9}$/;
var email_regex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i;
var digit_regex = "^[0-9]{4,10}$";

function validateDocument(doc,errorMessageContainerID,focusElement){
	clearErrorMessageContainer(errorMessageContainerID);
	if(doc.length == 0){
		$(errorMessageContainerID).text("*Please Upload*");
		$(focusElement).focus();
		return false;
	}
	$(errorMessageContainerID).hide();
	$(focusElement).focus();
	return true;
}

function validateDigitOnly(field,errorMessageContainerID,focusElement){
	clearErrorMessageContainer(errorMessageContainerID);
	if(field.length == 0){
		$(errorMessageContainerID).text("*Enter Details*");
		$(focusElement).focus();
		return false;
	}else if(!field.match(digit_regex)){
		$(errorMessageContainerID).text("* Use Digits only and more than 3 digit number *");
		$(focusElement).focus();
		return false;
	}
	$(errorMessageContainerID).hide();
	$(focusElement).focus();
	return true;
}

function validateCharactersOnly(field,errorMessageContainerID,focusElement){
	clearErrorMessageContainer(errorMessageContainerID);
	
	if(field.length == 0){
		$(errorMessageContainerID).text("*Enter Name*");
		$(focusElement).focus();
		return false;
	}
	else if(!field.match(name_regex)){
		$(errorMessageContainerID).text("* Use alphabets only and more than two character *");
		$(focusElement).focus();
		return false;
	}
	$(errorMessageContainerID).hide();
	$(focusElement).focus();
	return true;
}


function validateField(field,errorMessageContainerID,focusElement){
	clearErrorMessageContainer(errorMessageContainerID);
	
	if(field == "" ){
		$(errorMessageContainerID).text("*Enter Address*");
		$(focusElement).focus();
		return false;
	}
	$(errorMessageContainerID).hide();
	$(focusElement).focus();
	return true;
}

function validateAdhar(field,errorMessageContainerID,focusElement){
	clearErrorMessageContainer(errorMessageContainerID);
	
	if(field.length == 0){
		$(errorMessageContainerID).text("*Enter Your Adhar No.*");
		$(focusElement).focus();
		return false;
	}
	$(errorMessageContainerID).hide();
	$(focusElement).focus();
	return true;
}


function validateNonEmpty(field,errorMessageContainerID,focusElement){
	clearErrorMessageContainer(errorMessageContainerID);
	
	if(field.length == 0){
		$(errorMessageContainerID).text("*Enter this field*");
		$(focusElement).focus();
		return false;
	}
	$(errorMessageContainerID).hide();
	$(focusElement).focus();
	return true;
}

function validateDropdown(field,errorMessageContainerID,focusElement){
	clearErrorMessageContainer(errorMessageContainerID);
	
	if(field == "None" || field == null){
		$(errorMessageContainerID).text("*Please Select*");
		$(focusElement).focus();
		return false;
	}
	$(errorMessageContainerID).hide();
	$(focusElement).focus();
	return true;
}

function validateRadio(field,errorMessageContainerID,focusElement){
	clearErrorMessageContainer(errorMessageContainerID);
	
	if(!field){
		$(errorMessageContainerID).text("*Please Select*");
		$(focusElement).focus();
		return false;
	}
	$(errorMessageContainerID).hide();
	$(focusElement).focus();
	return true;
}

function validateNotEmpty(field,errorMessageContainerID,focusElement){
	clearErrorMessageContainer(errorMessageContainerID);	
	if(field.length == 0){
		$(errorMessageContainerID).text("*Enter Date of Birth*");
		$(focusElement).focus();
		return false;
	}
	$(errorMessageContainerID).hide();
	$(focusElement).focus();
	return true;
}

function validateJoining(field,errorMessageContainerID,focusElement){
	clearErrorMessageContainer(errorMessageContainerID);	
	if(field.length == 0){
		$(errorMessageContainerID).text("*Enter Date*");
		$(focusElement).focus();
		return false;
	}
	$(errorMessageContainerID).hide();
	$(focusElement).focus();
	return true;
}

function validateMobile(field,errorMessageContainerID,focusElement){
	clearErrorMessageContainer(errorMessageContainerID);
	if(field.length==0){
		$(errorMessageContainerID).text("*Enter Mobile*");
		$(focusElement).focus();
		return false;
	}	
	else if(field.length<10){
		$(errorMessageContainerID).text('* Enter 10 digit mobile no. *');
		$(focusElement).focus();
		return false;
	}
	else if(!field.match(mob_regex)){
		$(errorMessageContainerID).text('* Invaid No. *');
		$(focusElement).focus();
		return false;
	}
	else{
		$(errorMessageContainerID).hide();
		$(focusElement).focus();
		return true;
	}
	
}

function validateEmail(field,errorMessageContainerID,focusElement){
	clearErrorMessageContainer(errorMessageContainerID);
	if(field.length==0){
		$(errorMessageContainerID).text("*Enter Your Email Address*");
		$(focusElement).focus();
		return false;
		}
	else if (!field.match(email_regex) || field.length == 0) {
		$(errorMessageContainerID).text("* Please enter a valid email address *"); 
		$(focusElement).focus();
		return false;
		}
	else{
		$(errorMessageContainerID).hide();
		$(focusElement).focus();
		return true;
	}
	
}

function clearErrorMessageContainer(errorMessageContainerID){
	$(errorMessageContainerID).text("");
	$(errorMessageContainerID).show();
}