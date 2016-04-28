!function(e){"function"==typeof define&&define.amd?define(["jquery","../jquery.validate"],e):"object"==typeof module&&module.exports?module.exports=e(require("jquery")):e(jQuery)}(function(e){e.extend(e.validator.messages,{required:"\u10d4\u10e1 \u10d5\u10d4\u10da\u10d8 \u10e1\u10d0\u10d5\u10d0\u10da\u10d3\u10d4\u10d1\u10e3\u10da\u10dd\u10d0",remote:"\u10d2\u10d7\u10ee\u10dd\u10d5\u10d7 \u10e8\u10d4\u10d0\u10e1\u10ec\u10dd\u10e0\u10dd\u10d7.",email:"\u10d2\u10d7\u10ee\u10dd\u10d5\u10d7 \u10e8\u10d4\u10d8\u10e7\u10d5\u10d0\u10dc\u10dd\u10d7 \u10e1\u10ec\u10dd\u10e0\u10d8 \u10e4\u10dd\u10e0\u10db\u10d0\u10e2\u10d8\u10d7.",url:"\u10d2\u10d7\u10ee\u10dd\u10d5\u10d7 \u10e8\u10d4\u10d8\u10e7\u10d5\u10d0\u10dc\u10dd\u10d7 \u10e1\u10ec\u10dd\u10e0\u10d8 \u10e4\u10dd\u10e0\u10db\u10d0\u10e2\u10d8\u10d7.",date:"\u10d2\u10d7\u10ee\u10dd\u10d5\u10d7 \u10e8\u10d4\u10d8\u10e7\u10d5\u10d0\u10dc\u10dd\u10d7 \u10e1\u10ec\u10dd\u10e0\u10d8 \u10d7\u10d0\u10e0\u10d8\u10e6\u10d8.",dateISO:"\u10d2\u10d7\u10ee\u10dd\u10d5\u10d7 \u10e8\u10d4\u10d8\u10e7\u10d5\u10d0\u10dc\u10dd\u10d7 \u10e1\u10ec\u10dd\u10e0\u10d8 \u10e4\u10dd\u10e0\u10db\u10d0\u10e2\u10d8\u10d7 ( ISO ).",number:"\u10d2\u10d7\u10ee\u10dd\u10d5\u10d7 \u10e8\u10d4\u10d8\u10e7\u10d5\u10d0\u10dc\u10dd\u10d7 \u10e0\u10d8\u10ea\u10ee\u10d5\u10d8.",digits:"\u10d3\u10d0\u10e8\u10d5\u10d4\u10d1\u10e3\u10da\u10d8\u10d0 \u10db\u10ee\u10dd\u10da\u10dd\u10d3 \u10ea\u10d8\u10e4\u10e0\u10d4\u10d1\u10d8.",creditcard:"\u10d2\u10d7\u10ee\u10dd\u10d5\u10d7 \u10e8\u10d4\u10d8\u10e7\u10d5\u10d0\u10dc\u10dd\u10d7 \u10e1\u10ec\u10dd\u10e0\u10d8 \u10e4\u10dd\u10e0\u10db\u10d0\u10e2\u10d8\u10e1 \u10d1\u10d0\u10e0\u10d0\u10d7\u10d8\u10e1 \u10d9\u10dd\u10d3\u10d8.",equalTo:"\u10d2\u10d7\u10ee\u10dd\u10d5\u10d7 \u10e8\u10d4\u10d8\u10e7\u10d5\u10d0\u10dc\u10dd\u10d7 \u10d8\u10d2\u10d8\u10d5\u10d4 \u10db\u10dc\u10d8\u10e8\u10d5\u10dc\u10d4\u10da\u10dd\u10d1\u10d0.",maxlength:e.validator.format("\u10d2\u10d7\u10ee\u10dd\u10d5\u10d7 \u10e8\u10d4\u10d8\u10e7\u10d5\u10d0\u10dc\u10dd\u10d7 \u10d0\u10e0\u10d0 \u10e3\u10db\u10d4\u10e2\u10d4\u10e1 {0} \u10e1\u10d8\u10db\u10d1\u10dd\u10da\u10dd\u10e1\u10d8."),minlength:e.validator.format("\u10e8\u10d4\u10d8\u10e7\u10d5\u10d0\u10dc\u10d4\u10d7 \u10db\u10d8\u10dc\u10d8\u10db\u10e3\u10db {0} \u10e1\u10d8\u10db\u10d1\u10dd\u10da\u10dd."),rangelength:e.validator.format("\u10d2\u10d7\u10ee\u10dd\u10d5\u10d7 \u10e8\u10d4\u10d8\u10e7\u10d5\u10d0\u10dc\u10dd\u10d7 {0} -\u10d3\u10d0\u10dc {1} -\u10db\u10d3\u10d4 \u10e0\u10d0\u10dd\u10d3\u10d4\u10dc\u10dd\u10d1\u10d8\u10e1 \u10e1\u10d8\u10db\u10d1\u10dd\u10da\u10dd\u10d4\u10d1\u10d8."),range:e.validator.format("\u10e8\u10d4\u10d8\u10e7\u10d5\u10d0\u10dc\u10d4\u10d7 {0} -\u10e1\u10d0 {1} -\u10e1 \u10e8\u10dd\u10e0\u10d8\u10e1."),max:e.validator.format("\u10d2\u10d7\u10ee\u10dd\u10d5\u10d7 \u10e8\u10d4\u10d8\u10e7\u10d5\u10d0\u10dc\u10dd\u10d7 \u10db\u10dc\u10d8\u10e8\u10d5\u10dc\u10d4\u10da\u10dd\u10d1\u10d0 \u10dc\u10d0\u10d9\u10da\u10d4\u10d1\u10d8 \u10d0\u10dc \u10e2\u10dd\u10da\u10d8 {0} -\u10e1."),min:e.validator.format("\u10d2\u10d7\u10ee\u10dd\u10d5\u10d7 \u10e8\u10d4\u10d8\u10e7\u10d5\u10d0\u10dc\u10dd\u10d7 \u10db\u10dc\u10d8\u10e8\u10d5\u10dc\u10d4\u10da\u10dd\u10d1\u10d0 \u10db\u10d4\u10e2\u10d8 \u10d0\u10dc \u10e2\u10dd\u10da\u10d8 {0} -\u10e1.")})});