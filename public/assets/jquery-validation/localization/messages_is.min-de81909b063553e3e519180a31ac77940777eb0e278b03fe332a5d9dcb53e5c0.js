/*! jQuery Validation Plugin - v1.15.0 - 2/24/2016
 * http://jqueryvalidation.org/
 * Copyright (c) 2016 Jörn Zaefferer; Licensed MIT */
!function(n){"function"==typeof define&&define.amd?define(["jquery","../jquery.validate.min"],n):"object"==typeof module&&module.exports?module.exports=n(require("jquery")):n(jQuery)}(function(n){n.extend(n.validator.messages,{required:"\xdeessi reitur er nau\xf0synlegur.",remote:"Laga\xf0u \xfeennan reit.",maxlength:n.validator.format("Sl\xe1\xf0u inn mest {0} stafi."),minlength:n.validator.format("Sl\xe1\xf0u inn minnst {0} stafi."),rangelength:n.validator.format("Sl\xe1\xf0u inn minnst {0} og mest {1} stafi."),email:"Sl\xe1\xf0u inn gilt netfang.",url:"Sl\xe1\xf0u inn gilda vefsl\xf3\xf0.",date:"Sl\xe1\xf0u inn gilda dagsetningu.",number:"Sl\xe1\xf0u inn t\xf6lu.",digits:"Sl\xe1\xf0u inn t\xf6lustafi eing\xf6ngu.",equalTo:"Sl\xe1\xf0u sama gildi inn aftur.",range:n.validator.format("Sl\xe1\xf0u inn gildi milli {0} og {1}."),max:n.validator.format("Sl\xe1\xf0u inn gildi sem er minna en e\xf0a jafnt og {0}."),min:n.validator.format("Sl\xe1\xf0u inn gildi sem er st\xe6rra en e\xf0a jafnt og {0}."),creditcard:"Sl\xe1\xf0u inn gilt grei\xf0slukortan\xfamer."})});