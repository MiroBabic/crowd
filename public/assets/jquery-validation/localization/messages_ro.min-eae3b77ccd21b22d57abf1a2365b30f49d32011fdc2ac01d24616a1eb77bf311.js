/*! jQuery Validation Plugin - v1.15.0 - 2/24/2016
 * http://jqueryvalidation.org/
 * Copyright (c) 2016 Jörn Zaefferer; Licensed MIT */
!function(e){"function"==typeof define&&define.amd?define(["jquery","../jquery.validate.min"],e):"object"==typeof module&&module.exports?module.exports=e(require("jquery")):e(jQuery)}(function(e){e.extend(e.validator.messages,{required:"Acest c\xe2mp este obligatoriu.",remote:"Te rug\u0103m s\u0103 completezi acest c\xe2mp.",email:"Te rug\u0103m s\u0103 introduci o adres\u0103 de email valid\u0103",url:"Te rug\u0103m sa introduci o adres\u0103 URL valid\u0103.",date:"Te rug\u0103m s\u0103 introduci o dat\u0103 corect\u0103.",dateISO:"Te rug\u0103m s\u0103 introduci o dat\u0103 (ISO) corect\u0103.",number:"Te rug\u0103m s\u0103 introduci un num\u0103r \xeentreg valid.",digits:"Te rug\u0103m s\u0103 introduci doar cifre.",creditcard:"Te rug\u0103m s\u0103 introduci un numar de carte de credit valid.",equalTo:"Te rug\u0103m s\u0103 reintroduci valoarea.",extension:"Te rug\u0103m s\u0103 introduci o valoare cu o extensie valid\u0103.",maxlength:e.validator.format("Te rug\u0103m s\u0103 nu introduci mai mult de {0} caractere."),minlength:e.validator.format("Te rug\u0103m s\u0103 introduci cel pu\u021bin {0} caractere."),rangelength:e.validator.format("Te rug\u0103m s\u0103 introduci o valoare \xeentre {0} \u0219i {1} caractere."),range:e.validator.format("Te rug\u0103m s\u0103 introduci o valoare \xeentre {0} \u0219i {1}."),max:e.validator.format("Te rug\u0103m s\u0103 introduci o valoare egal sau mai mic\u0103 dec\xe2t {0}."),min:e.validator.format("Te rug\u0103m s\u0103 introduci o valoare egal sau mai mare dec\xe2t {0}.")})});