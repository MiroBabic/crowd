!function(e){"function"==typeof define&&define.amd?define(["jquery","../jquery.validate"],e):"object"==typeof module&&module.exports?module.exports=e(require("jquery")):e(jQuery)}(function(e){e.extend(e.validator.messages,{required:"Tento \xfadaj je povinn\xfd.",remote:"Pros\xedm, opravte tento \xfadaj.",email:"Pros\xedm, zadejte platn\xfd e-mail.",url:"Pros\xedm, zadejte platn\xe9 URL.",date:"Pros\xedm, zadejte platn\xe9 datum.",dateISO:"Pros\xedm, zadejte platn\xe9 datum (ISO).",number:"Pros\xedm, zadejte \u010d\xedslo.",digits:"Pros\xedm, zad\xe1vejte pouze \u010d\xedslice.",creditcard:"Pros\xedm, zadejte \u010d\xedslo kreditn\xed karty.",equalTo:"Pros\xedm, zadejte znovu stejnou hodnotu.",extension:"Pros\xedm, zadejte soubor se spr\xe1vnou p\u0159\xedponou.",maxlength:e.validator.format("Pros\xedm, zadejte nejv\xedce {0} znak\u016f."),minlength:e.validator.format("Pros\xedm, zadejte nejm\xe9n\u011b {0} znak\u016f."),rangelength:e.validator.format("Pros\xedm, zadejte od {0} do {1} znak\u016f."),range:e.validator.format("Pros\xedm, zadejte hodnotu od {0} do {1}."),max:e.validator.format("Pros\xedm, zadejte hodnotu men\u0161\xed nebo rovnu {0}."),min:e.validator.format("Pros\xedm, zadejte hodnotu v\u011bt\u0161\xed nebo rovnu {0}.")})});