<!DOCTYPE html>

<#include init />

<html id="main-page" class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />

	<!-- Mainly scripts -->
	<script>
         window.__define = window.define;
         window.__require = window.require;
         window.define = undefined;
         window.require = undefined;
    </script>
	
	<script src="${themeDisplay.getPathThemeRoot()}/js/plugins/chartJs/Chart.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/plugins/metisMenu/jquery.metisMenu.js"></script>

	<script>
         window.define = window.__define;
         window.require = window.__require;
         window.__define = undefined;
         window.__require = undefined;
    </script>
    
    <link href="${themeDisplay.getPathThemeRoot()}/css/template/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="${themeDisplay.getPathThemeRoot()}/css/template/animate/animate.css" rel="stylesheet" />  
    	
</head>

<body class="${css_class} site-body skin-2 pace-done">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div id="wrapper">

	<#include "${full_templates_path}/side_bar.ftl" />

	<div id="page-wrapper" class="gray-bg">	
		<#include "${full_templates_path}/top_header.ftl" />
	
		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}
	
			${portletDisplay.setTitle(the_title)}
	
			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
		
		<#include "${full_templates_path}/footer.ftl" />
		
	</div>
</div>

<script>
     window.__define = window.define;
     window.__require = window.require;
     window.define = undefined;
     window.require = undefined;
</script>

<script src="${themeDisplay.getPathThemeRoot()}/js/demo-dashboard-menu.js"></script>

<script>
     window.define = window.__define;
     window.require = window.__require;
     window.__define = undefined;
     window.__require = undefined;
</script>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<!-- inject:js -->
<!-- endinject -->

</body>

</html>