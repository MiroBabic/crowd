!function(e){"function"==typeof define&&define.amd?define(["jquery","../jquery.validate"],e):"object"==typeof module&&module.exports?module.exports=e(require("jquery")):e(jQuery)}(function(e){e.extend(e.validator.methods,{date:function(e,d){return this.optional(d)||/^\d\d?[\.\/\-]\d\d?[\.\/\-]\d\d\d?\d?$/.test(e)}})});