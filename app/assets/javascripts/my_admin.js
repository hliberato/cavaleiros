var my_admin = function() {
  var init = function() {
    mask();
    tags();
  }
  
  var mask = function(){
    $("#store_address_attributes_0_phone").focusout(function(){
			var phone, element;
			element = $(this);
			phone = element.val().replace(/\D/g, '');
			if(phone.length > 10) {
				element.mask("(99) 99999-999?9");
			} else {
				element.mask("(99) 9999-9999?9");
			}
		}).trigger('focusout');
  };

  var tags = function(){    
    $(".select2-listtag").select2({
      tags: true
    });
  };
  
  //define public functions
  return {
    init: init
  }
}();

$(document).on('ready page:load', my_admin.init);