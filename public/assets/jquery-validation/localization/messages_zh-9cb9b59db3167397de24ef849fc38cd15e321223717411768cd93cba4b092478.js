!function(e){"function"==typeof define&&define.amd?define(["jquery","../jquery.validate"],e):"object"==typeof module&&module.exports?module.exports=e(require("jquery")):e(jQuery)}(function(e){e.extend(e.validator.messages,{required:"\u8fd9\u662f\u5fc5\u586b\u5b57\u6bb5",remote:"\u8bf7\u4fee\u6b63\u6b64\u5b57\u6bb5",email:"\u8bf7\u8f93\u5165\u6709\u6548\u7684\u7535\u5b50\u90ae\u4ef6\u5730\u5740",url:"\u8bf7\u8f93\u5165\u6709\u6548\u7684\u7f51\u5740",date:"\u8bf7\u8f93\u5165\u6709\u6548\u7684\u65e5\u671f",dateISO:"\u8bf7\u8f93\u5165\u6709\u6548\u7684\u65e5\u671f (YYYY-MM-DD)",number:"\u8bf7\u8f93\u5165\u6709\u6548\u7684\u6570\u5b57",digits:"\u53ea\u80fd\u8f93\u5165\u6570\u5b57",creditcard:"\u8bf7\u8f93\u5165\u6709\u6548\u7684\u4fe1\u7528\u5361\u53f7\u7801",equalTo:"\u4f60\u7684\u8f93\u5165\u4e0d\u76f8\u540c",extension:"\u8bf7\u8f93\u5165\u6709\u6548\u7684\u540e\u7f00",maxlength:e.validator.format("\u6700\u591a\u53ef\u4ee5\u8f93\u5165 {0} \u4e2a\u5b57\u7b26"),minlength:e.validator.format("\u6700\u5c11\u8981\u8f93\u5165 {0} \u4e2a\u5b57\u7b26"),rangelength:e.validator.format("\u8bf7\u8f93\u5165\u957f\u5ea6\u5728 {0} \u5230 {1} \u4e4b\u95f4\u7684\u5b57\u7b26\u4e32"),range:e.validator.format("\u8bf7\u8f93\u5165\u8303\u56f4\u5728 {0} \u5230 {1} \u4e4b\u95f4\u7684\u6570\u503c"),max:e.validator.format("\u8bf7\u8f93\u5165\u4e0d\u5927\u4e8e {0} \u7684\u6570\u503c"),min:e.validator.format("\u8bf7\u8f93\u5165\u4e0d\u5c0f\u4e8e {0} \u7684\u6570\u503c")})});