(function(){$(document).ready(function(){$("input:file").change(function(){$(this).val()&&$("input:submit").attr("disabled",!1)})}),jQuery(function(){return $("#new_project").validate({lang:"sk",rules:{"project[amount]":{min:1}},highlight:function(n){$(n).parent().addClass("state-error")},unhighlight:function(n){$(n).parent().removeClass("state-error")}})}),jQuery(function(){$(".wysihtml5").each(function(n,t){$(t).wysihtml5()})}),jQuery(function(){return $("#finisheddetail").DataTable({order:[0,"asc"],language:{url:"datatables_slovak.json"}})}),jQuery(function(){return $("#finished").DataTable({order:[0,"asc"],language:{url:"datatables_slovak.json"}})}),$(document).ready(function(){$(".fancybox").fancybox({openEffect:"elastic",closeEffect:"none"})})}).call(this);