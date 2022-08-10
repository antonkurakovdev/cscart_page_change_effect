<script type="text/javascript">
//<![CDATA[
	$(document).ready(function() {ldelim}
		{if $addons.altteam_page_change_effect.animation == 'fade'}
			{literal}
			$(".tygh-content").css("opacity", "0").animate({opacity: "1"}, 2000);						

			$("a[href][href!='#']:not(.cm-previewer,.cm-ajax,.cm-dialog-opener,.cm-combination)").click(function(event){
				event.preventDefault();
				linkLocation = this.href;
				$("html, body").animate({ scrollTop: 0 }, "slow");
				$(".tygh-content").animate({opacity: "0"}, 1000, function() {
					jQuery.redirect(linkLocation);
				});						
			});
			{/literal
		{elseif $addons.altteam_page_change_effect.animation == 'move'}
			{literal}
		    $(".tygh-content").animate({left: "0px"}, 2000);						

			$("a[href][href!='#']:not(.cm-previewer,.cm-ajax,.cm-dialog-opener,.cm-combination)").click(function(event){
				event.preventDefault();
				linkLocation = this.href;
				$("html, body").animate({ scrollTop: 0 }, "slow");
				$(".tygh-content").animate({left: "-5000px"}, 1000, function() {
					jQuery.redirect(linkLocation);
				});						
			});
			{/literal}
		{/if}
	{rdelim});
//]]>
</script>
