/*! jQuery Validation Plugin - v1.15.0 - 2/24/2016
 * http://jqueryvalidation.org/
 * Copyright (c) 2016 Jörn Zaefferer; Licensed MIT */
!function(e){"function"==typeof define&&define.amd?define(["jquery","../jquery.validate.min"],e):"object"==typeof module&&module.exports?module.exports=e(require("jquery")):e(jQuery)}(function(e){e.extend(e.validator.methods,{date:function(e,d){return this.optional(d)||/^\d\d?\/\d\d?\/\d\d\d?\d?$/.test(e)}})});