/*! jQuery Validation Plugin - v1.15.0 - 2/24/2016
 * http://jqueryvalidation.org/
 * Copyright (c) 2016 Jörn Zaefferer; Licensed MIT */
!function(e){"function"==typeof define&&define.amd?define(["jquery","../jquery.validate.min"],e):"object"==typeof module&&module.exports?module.exports=e(require("jquery")):e(jQuery)}(function(e){e.extend(e.validator.messages,{required:"\u054a\u0561\u0580\u057f\u0561\u0564\u056b\u0580 \u056c\u0580\u0561\u0581\u0574\u0561\u0576 \u0564\u0561\u0577\u057f",remote:"\u0546\u0565\u0580\u0574\u0578\u0582\u056e\u0565\u0584 \u0573\u056b\u0577\u057f \u0561\u0580\u056a\u0565\u0584\u0568",email:"\u0546\u0565\u0580\u0574\u0578\u0582\u056e\u0565\u0584 \u057e\u0561\u057e\u0565\u0580 \u0567\u056c\u0565\u056f\u057f\u0580\u0578\u0576\u0561\u0575\u056b\u0576 \u0583\u0578\u057d\u057f\u056b \u0570\u0561\u057d\u0581\u0565",url:"\u0546\u0565\u0580\u0574\u0578\u0582\u056e\u0565\u0584 \u057e\u0561\u057e\u0565\u0580 URL",date:"\u0546\u0565\u0580\u0574\u0578\u0582\u056e\u0565\u0584 \u057e\u0561\u057e\u0565\u0580 \u0561\u0574\u057d\u0561\u0569\u056b\u057e",dateISO:"\u0546\u0565\u0580\u0574\u0578\u0582\u056e\u0565\u0584 ISO \u0586\u0578\u0580\u0574\u0561\u057f\u0578\u057e \u057e\u0561\u057e\u0565\u0580 \u0561\u0574\u057d\u0561\u0569\u056b\u057e\u0589",number:"\u0546\u0565\u0580\u0574\u0578\u0582\u056e\u0565\u0584 \u0569\u056b\u057e",digits:"\u0546\u0565\u0580\u0574\u0578\u0582\u056e\u0565\u0584 \u0574\u056b\u0561\u0575\u0576 \u0569\u057e\u0565\u0580",creditcard:"\u0546\u0565\u0580\u0574\u0578\u0582\u056e\u0565\u0584 \u0573\u056b\u0577\u057f \u0562\u0561\u0576\u056f\u0561\u0575\u056b\u0576 \u0584\u0561\u0580\u057f\u056b \u0570\u0561\u0574\u0561\u0580",equalTo:"\u0546\u0565\u0580\u0574\u0578\u0582\u056e\u0565\u0584 \u0574\u056b\u0587\u0576\u0578\u0582\u0576 \u0561\u0580\u056a\u0565\u0584\u0568 \u0587\u057d \u0574\u0565\u056f \u0561\u0576\u0563\u0561\u0574",extension:"\u0538\u0576\u057f\u0580\u0565\u0584 \u0573\u056b\u0577\u057f \u0568\u0576\u0564\u056c\u0561\u0576\u0578\u0582\u0574\u0578\u057e \u0586\u0561\u0575\u056c",maxlength:e.validator.format("\u0546\u0565\u0580\u0574\u0578\u0582\u056e\u0565\u0584 \u0578\u0579 \u0561\u057e\u0565\u056c \u0584\u0561\u0576 {0} \u0576\u056b\u0577"),minlength:e.validator.format("\u0546\u0565\u0580\u0574\u0578\u0582\u056e\u0565\u0584 \u0578\u0579 \u057a\u0561\u056f\u0561\u057d \u0584\u0561\u0576 {0} \u0576\u056b\u0577"),rangelength:e.validator.format("\u0546\u0565\u0580\u0574\u0578\u0582\u056e\u0565\u0584 {0}\u058a\u056b\u0581 {1} \u0565\u0580\u056f\u0561\u0580\u0578\u0582\u0569\u0575\u0561\u0574\u0562 \u0561\u0580\u056a\u0565\u0584"),range:e.validator.format("\u0546\u0565\u0580\u0574\u0578\u0582\u056e\u0565\u0584 \u0569\u056b\u057e {0}\u058a\u056b\u0581 {1} \u0574\u056b\u057b\u0561\u056f\u0561\u0575\u0584\u0578\u0582\u0574"),max:e.validator.format("\u0546\u0565\u0580\u0574\u0578\u0582\u056e\u0565\u0584 \u0569\u056b\u057e, \u0578\u0580\u0568 \u0583\u0578\u0584\u0580 \u056f\u0561\u0574 \u0570\u0561\u057e\u0561\u057d\u0561\u0580 \u0567\xa0{0}\u058a\u056b\u0576"),min:e.validator.format("\u0546\u0565\u0580\u0574\u0578\u0582\u056e\u0565\u0584 \u0569\u056b\u057e, \u0578\u0580\u0568 \u0574\u0565\u056e \u056f\u0561\u0574 \u0570\u0561\u057e\u0561\u057d\u0561\u0580 \u0567 {0}\u058a\u056b\u0576")})});