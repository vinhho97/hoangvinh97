<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html> 
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<title>Insert title here</title>
		 <script src="https://cdn.ckeditor.com/ckeditor5/1.0.0-alpha.2/classic/ckeditor.js">
	    </script><style type="text/css">.ck-hidden{display:none!important}.ck-reset,.ck-reset_all,.ck-reset_all *,.ck-reset_all a,.ck-reset_all textarea{box-sizing:border-box;width:auto;height:auto;position:static}svg.ck-icon{min-width:20px;min-height:20px;font-size:1em;vertical-align:middle}svg.ck-icon,svg.ck-icon *{color:inherit;cursor:inherit}svg.ck-icon *{fill:currentColor}.ck-tooltip,.ck-tooltip__text:after{position:absolute;pointer-events:none;-webkit-backface-visibility:hidden}.ck-tooltip{visibility:hidden;opacity:0;display:none;z-index:999}.ck-tooltip__text{display:inline-block}.ck-tooltip__text:after{content:"";width:0;height:0}.ck-button,a.ck-button{display:inline-block;position:relative;-moz-user-select:none;-webkit-user-select:none;-ms-user-select:none}.ck-button .ck-tooltip,a.ck-button .ck-tooltip{display:block}.ck-button:hover .ck-tooltip,a.ck-button:hover .ck-tooltip{visibility:visible;opacity:1}.ck-button .ck-button__label,.ck-button:focus:not(:hover) .ck-tooltip,a.ck-button .ck-button__label,a.ck-button:focus:not(:hover) .ck-tooltip{display:none}.ck-toolbar__separator{display:inline-block}.ck-toolbar__newline{display:block;clear:left}.ck-dropdown{display:inline-block;position:relative}.ck-dropdown:after{content:"";width:0;height:0;pointer-events:none;z-index:1;position:absolute;top:50%;transform:translateY(-50%)}.ck-dropdown__panel{-webkit-backface-visibility:hidden;display:none;z-index:999;position:absolute;left:0;transform:translateY(100%)}.ck-dropdown__panel-visible{display:inline-block}.ck-label,.ck-list__item{display:block}.cke-voice-label{display:none}.ck-balloon-panel{display:none;position:absolute;z-index:999}.ck-balloon-panel.ck-balloon-panel_with-arrow:after,.ck-balloon-panel.ck-balloon-panel_with-arrow:before{content:"";position:absolute}.ck-balloon-panel.ck-balloon-panel_with-arrow:before{z-index:1}.ck-balloon-panel.ck-balloon-panel_with-arrow:after{z-index:2}.ck-balloon-panel.ck-balloon-panel_arrow_n:before,.ck-balloon-panel.ck-balloon-panel_arrow_ne:before,.ck-balloon-panel.ck-balloon-panel_arrow_nw:before{z-index:1}.ck-balloon-panel.ck-balloon-panel_arrow_n:after,.ck-balloon-panel.ck-balloon-panel_arrow_ne:after,.ck-balloon-panel.ck-balloon-panel_arrow_nw:after{z-index:2}.ck-balloon-panel.ck-balloon-panel_arrow_s:before,.ck-balloon-panel.ck-balloon-panel_arrow_se:before,.ck-balloon-panel.ck-balloon-panel_arrow_sw:before{z-index:1}.ck-balloon-panel.ck-balloon-panel_arrow_s:after,.ck-balloon-panel.ck-balloon-panel_arrow_se:after,.ck-balloon-panel.ck-balloon-panel_arrow_sw:after{z-index:2}.ck-balloon-panel_visible{display:block}.ck-editor .ck-sticky-panel .ck-sticky-panel__content_sticky{z-index:999;position:fixed;top:0}.ck-editor .ck-sticky-panel .ck-sticky-panel__content_sticky_bottom-limit{top:auto;position:absolute}.ck-reset,.ck-reset_all,.ck-reset_all *,.ck-reset_all a,.ck-reset_all textarea{margin:0;padding:0;border:0;background:transparent;text-decoration:none;vertical-align:middle;transition:none;word-wrap:break-word}.ck-reset_all,.ck-reset_all *,.ck-reset_all a,.ck-reset_all textarea{border-collapse:collapse;font:normal normal normal 12px/1.67 Helvetica,Arial,Tahoma,Verdana,Sans-Serif;color:#333;text-align:left;white-space:nowrap;cursor:auto;float:none}.ck-reset_all .ck-rtl *{text-align:right}.ck-reset_all iframe{vertical-align:inherit}.ck-reset_all textarea{white-space:pre-wrap}.ck-reset_all input[type=password],.ck-reset_all input[type=text],.ck-reset_all textarea{cursor:text}.ck-reset_all input[type=password][disabled],.ck-reset_all input[type=text][disabled],.ck-reset_all textarea[disabled]{cursor:default}.ck-reset_all fieldset{padding:10px;border:2px groove #e0dfe3}.ck-reset_all button::-moz-focus-inner{padding:0;border:0}svg.ck-icon{width:1.67em;height:1.67em}.ck-tooltip{left:50%}.ck-tooltip__text{font-size:.9em;line-height:1.5;color:#fff;padding:.4em .64em;background:#333;position:relative;left:-50%}.ck-rounded-corners .ck-tooltip__text,.ck-tooltip__text.ck-rounded-corners{border-radius:2px}.ck-tooltip__text:after{border-style:solid;left:50%}.ck-tooltip.ck-tooltip_s{bottom:-5px;transform:translateY(100%)}.ck-tooltip.ck-tooltip_s .ck-tooltip__text:after{top:-5px;transform:translateX(-50%);border-color:transparent transparent #333;border-width:0 5px 5px}.ck-tooltip.ck-tooltip_n{top:-5px;transform:translateY(-100%)}.ck-tooltip.ck-tooltip_n .ck-tooltip__text:after{bottom:-5px;transform:translateX(-50%);border-color:#333 transparent transparent;border-width:5px 5px 0}.ck-tooltip,.ck-tooltip__text:after{transition:opacity .2s ease-in-out .2s}.ck-button,a.ck-button{background:#fff;border:1px solid #bfbfbf;white-space:nowrap;cursor:default;vertical-align:middle;padding:.4em;font-size:inherit}.ck-button:not(.ck-disabled):focus,.ck-button:not(.ck-disabled):hover,a.ck-button:not(.ck-disabled):focus,a.ck-button:not(.ck-disabled):hover{background:#e6e6e6;border-color:#acacac}.ck-button:not(.ck-disabled):active,a.ck-button:not(.ck-disabled):active{background:#d9d9d9;border-color:#a3a3a3;box-shadow:inset 0 2px 2px #bfbfbf}.ck-button.ck-disabled,a.ck-button.ck-disabled{background:#fff;border-color:#c6c6c6}.ck-button.ck-rounded-corners,.ck-rounded-corners .ck-button,.ck-rounded-corners a.ck-button,a.ck-button.ck-rounded-corners{border-radius:2px}.ck-button:focus,a.ck-button:focus{outline:none;border:1px solid #48a3f5;box-shadow:0 0 3px 2px #78bbf8}.ck-button .ck-icon,a.ck-button .ck-icon{float:left}.ck-button.ck-disabled .ck-button__label,.ck-button.ck-disabled .ck-icon,a.ck-button.ck-disabled .ck-button__label,a.ck-button.ck-disabled .ck-icon{opacity:.5}.ck-button.ck-button_with-text,a.ck-button.ck-button_with-text{padding:.4em .8em}.ck-button.ck-button_with-text .ck-icon,a.ck-button.ck-button_with-text .ck-icon{margin-left:-.4em;margin-right:.4em}.ck-button.ck-button_with-text .ck-button__label,a.ck-button.ck-button_with-text .ck-button__label{display:block}.ck-button.ck-on,a.ck-button.ck-on{background:#f7f7f7;border-color:#b9b9b9}.ck-button.ck-on:not(.ck-disabled):focus,.ck-button.ck-on:not(.ck-disabled):hover,a.ck-button.ck-on:not(.ck-disabled):focus,a.ck-button.ck-on:not(.ck-disabled):hover{background:#dedede;border-color:#a7a7a7}.ck-button.ck-on:not(.ck-disabled):active,a.ck-button.ck-on:not(.ck-disabled):active{background:#d2d2d2;border-color:#9d9d9d;box-shadow:inset 0 2px 2px #b9b9b9}.ck-button.ck-on.ck-disabled,a.ck-button.ck-on.ck-disabled{background:#f8f8f8;border-color:silver}.ck-button-action,a.ck-button-action{background:#61b145;border-color:#4e8e37;text-shadow:0 -1px #4e8e37;color:#fff}.ck-button-action:not(.ck-disabled):focus,.ck-button-action:not(.ck-disabled):hover,a.ck-button-action:not(.ck-disabled):focus,a.ck-button-action:not(.ck-disabled):hover{background:#579f3e;border-color:#467f32}.ck-button-action:not(.ck-disabled):active,a.ck-button-action:not(.ck-disabled):active{background:#52963b;border-color:#42782f;box-shadow:inset 0 2px 2px #498534}.ck-button-action.ck-disabled,a.ck-button-action.ck-disabled{background:#6fbc54;border-color:#5aa440}.ck-button-action:active,.ck-button-action:focus,.ck-button-action:hover,a.ck-button-action:active,a.ck-button-action:focus,a.ck-button-action:hover{text-shadow:0 -1px #3a6a29}.ck-button-bold,a.ck-button-bold{font-weight:700}.ck-button .ck-icon use,.ck-button .ck-icon use *,a.ck-button .ck-icon use,a.ck-button .ck-icon use *{color:inherit}.ck-button .ck-button__label,a.ck-button .ck-button__label{font-size:inherit;float:left;height:1.67em;line-height:inherit;font-weight:inherit;color:inherit;cursor:inherit}.ck-toolbar{padding:.4em;border:1px solid #bfbfbf;white-space:normal;-moz-user-select:none;-webkit-user-select:none;-ms-user-select:none}.ck-toolbar_floating{white-space:nowrap}.ck-rounded-corners .ck-toolbar,.ck-toolbar.ck-rounded-corners{border-radius:2px}.ck-toolbar__separator{width:1px;height:2.28em;vertical-align:middle;background:#bfbfbf}.ck-toolbar__newline{height:.4em}.ck-toolbar>*{margin-right:.4em}.ck-toolbar>:last-child{margin-right:0}.ck-toolbar-container .ck-toolbar{border:0}.ck-dropdown{font-size:inherit}.ck-dropdown:after{border-style:solid;border-width:.4em .4em 0;border-color:#707070 transparent;right:.8em}.ck-dropdown .ck-button.ck-dropdown__button{padding-right:1.6em}.ck-dropdown .ck-button.ck-dropdown__button.ck-disabled .ck-button__label{opacity:.5}.ck-dropdown .ck-button.ck-dropdown__button .ck-button__label{width:7em;overflow:hidden;text-overflow:ellipsis}.ck-dropdown__panel{background:#fff;border:1px solid #bfbfbf;bottom:1px;box-shadow:0 1px 2px 0 rgba(0,0,0,.2)}.ck-dropdown__panel.ck-rounded-corners,.ck-rounded-corners .ck-dropdown__panel{border-radius:2px}.ck-list{-moz-user-select:none;-webkit-user-select:none;-ms-user-select:none;overflow:hidden;list-style-type:none;background:#fff}.ck-list.ck-rounded-corners,.ck-rounded-corners .ck-list{border-radius:2px}.ck-list__item{padding:.64em;cursor:default;min-width:12em}.ck-list__item:focus,.ck-list__item:hover{background:#f7f7f7}.ck-list__item:focus{box-shadow:0 0 3px 2px #78bbf8;position:relative;z-index:1;outline:none}.ck-list__item_active{background:#1a8bf1;color:#fff}.ck-list__item_active:focus,.ck-list__item_active:hover{background:#0e7ee2}.ck-label{font-weight:700}.ck-input-text{box-shadow:inset 2px 2px 3px rgba(0,0,0,.1);background:#fff;border:1px solid #bfbfbf;padding:.4em .64em;min-width:21em}.ck-input-text.ck-rounded-corners,.ck-rounded-corners .ck-input-text{border-radius:2px}.ck-input-text:focus{outline:none;border:1px solid #48a3f5;box-shadow:0 0 3px 2px #78bbf8,inset 2px 2px 3px rgba(0,0,0,.1)}.ck-input-text[readonly]{border:1px solid #c6c6c6;background:#f2f2f2;color:#5c5c5c}.ck-editor__editable.ck-focused{height: 300px;outline:none;border:1px solid #48a3f5;box-shadow:inset 2px 2px 3px rgba(0,0,0,.1)}.ck-editor__editable_inline{height: 300px;overflow:auto;padding:0 .8em;border:1px solid transparent}.ck-editor-toolbar .ck-button{border-width:0}.ck-editor-toolbar .ck-button.ck-disabled,.ck-editor-toolbar .ck-button:not(:hover):not(:focus):not(.ck-on){background:#f7f7f7}.ck-editor-toolbar .ck-button.ck-on{background:#dedede;border-color:#acacac}.ck-editor-toolbar .ck-button.ck-on:not(.ck-disabled):focus,.ck-editor-toolbar .ck-button.ck-on:not(.ck-disabled):hover{background:#c6c6c6;border-color:#999}.ck-editor-toolbar .ck-button.ck-on:not(.ck-disabled):active{background:#b9b9b9;border-color:#8f8f8f;box-shadow:inset 0 2px 2px #a1a1a1}.ck-editor-toolbar .ck-button.ck-on.ck-disabled{height: 300px;background:#f7f7f7;border-color:#bfbfbf}.ck-editor-toolbar .ck-button.ck-dropdown__button{border-width:1px}.ck-editor-toolbar .ck-button.ck-dropdown__button:not(:hover):not(:focus):not(.ck-on){background:#fff}.ck-toolbar-container .ck-editor-toolbar{background:#f7f7f7}.ck-toolbar-container.ck-editor-toolbar-container.ck-balloon-panel_arrow_n:after,.ck-toolbar-container.ck-editor-toolbar-container.ck-balloon-panel_arrow_ne:after,.ck-toolbar-container.ck-editor-toolbar-container.ck-balloon-panel_arrow_nw:after{border-bottom-color:#f7f7f7}.ck-toolbar-container.ck-editor-toolbar-container.ck-balloon-panel_arrow_s:after,.ck-toolbar-container.ck-editor-toolbar-container.ck-balloon-panel_arrow_se:after,.ck-toolbar-container.ck-editor-toolbar-container.ck-balloon-panel_arrow_sw:after{border-top-color:#f7f7f7}.ck-balloon-panel{box-shadow:0 1px 2px 0 rgba(0,0,0,.2);min-height:15px;background:#fff;border:1px solid #bfbfbf}.ck-balloon-panel.ck-rounded-corners,.ck-rounded-corners .ck-balloon-panel{border-radius:2px}.ck-balloon-panel.ck-balloon-panel_with-arrow:after,.ck-balloon-panel.ck-balloon-panel_with-arrow:before{width:0;height:0;border-style:solid}.ck-balloon-panel.ck-balloon-panel_arrow_n:after,.ck-balloon-panel.ck-balloon-panel_arrow_n:before,.ck-balloon-panel.ck-balloon-panel_arrow_ne:after,.ck-balloon-panel.ck-balloon-panel_arrow_ne:before,.ck-balloon-panel.ck-balloon-panel_arrow_nw:after,.ck-balloon-panel.ck-balloon-panel_arrow_nw:before{border-width:0 10px 15px}.ck-balloon-panel.ck-balloon-panel_arrow_n:before,.ck-balloon-panel.ck-balloon-panel_arrow_ne:before,.ck-balloon-panel.ck-balloon-panel_arrow_nw:before{border-color:transparent transparent #bfbfbf}.ck-balloon-panel.ck-balloon-panel_arrow_n:after,.ck-balloon-panel.ck-balloon-panel_arrow_ne:after,.ck-balloon-panel.ck-balloon-panel_arrow_nw:after{border-color:transparent transparent #fff;margin-top:2px}.ck-balloon-panel.ck-balloon-panel_arrow_s:after,.ck-balloon-panel.ck-balloon-panel_arrow_s:before,.ck-balloon-panel.ck-balloon-panel_arrow_se:after,.ck-balloon-panel.ck-balloon-panel_arrow_se:before,.ck-balloon-panel.ck-balloon-panel_arrow_sw:after,.ck-balloon-panel.ck-balloon-panel_arrow_sw:before{border-width:15px 10px 0}.ck-balloon-panel.ck-balloon-panel_arrow_s:before,.ck-balloon-panel.ck-balloon-panel_arrow_se:before,.ck-balloon-panel.ck-balloon-panel_arrow_sw:before{border-color:#bfbfbf transparent transparent}.ck-balloon-panel.ck-balloon-panel_arrow_s:after,.ck-balloon-panel.ck-balloon-panel_arrow_se:after,.ck-balloon-panel.ck-balloon-panel_arrow_sw:after{border-color:#fff transparent transparent;margin-bottom:2px}.ck-balloon-panel.ck-balloon-panel_arrow_n:after,.ck-balloon-panel.ck-balloon-panel_arrow_n:before{left:50%;margin-left:-10px;top:-15px}.ck-balloon-panel.ck-balloon-panel_arrow_nw:after,.ck-balloon-panel.ck-balloon-panel_arrow_nw:before{left:20px;top:-15px}.ck-balloon-panel.ck-balloon-panel_arrow_ne:after,.ck-balloon-panel.ck-balloon-panel_arrow_ne:before{right:20px;top:-15px}.ck-balloon-panel.ck-balloon-panel_arrow_s:after,.ck-balloon-panel.ck-balloon-panel_arrow_s:before{left:50%;margin-left:-10px;bottom:-15px}.ck-balloon-panel.ck-balloon-panel_arrow_sw:after,.ck-balloon-panel.ck-balloon-panel_arrow_sw:before{left:20px;bottom:-15px}.ck-balloon-panel.ck-balloon-panel_arrow_se:after,.ck-balloon-panel.ck-balloon-panel_arrow_se:before{right:20px;bottom:-15px}.ck-editor .ck-sticky-panel .ck-sticky-panel__content_sticky{box-shadow:0 1px 2px 0 rgba(0,0,0,.2);border-width:0 1px 1px;border-top-left-radius:0;border-top-right-radius:0}.ck-editor{position:relative}.ck-editor__top .ck-sticky-panel .ck-toolbar{z-index:999;background:#f7f7f7;border-bottom-width:0}.ck-editor__top .ck-sticky-panel .ck-toolbar.ck-rounded-corners,.ck-rounded-corners .ck-editor__top .ck-sticky-panel .ck-toolbar{border-radius:2px;border-bottom-left-radius:0;border-bottom-right-radius:0}.ck-editor__top .ck-sticky-panel .ck-sticky-panel__content_sticky .ck-toolbar{border-bottom-width:1px}.ck-editor__top .ck-sticky-panel .ck-sticky-panel__content_sticky .ck-toolbar.ck-rounded-corners,.ck-rounded-corners .ck-editor__top .ck-sticky-panel .ck-sticky-panel__content_sticky .ck-toolbar{border-radius:2px;border-radius:0}.ck-editor__editable{border:1px solid #bfbfbf}.ck-editor__editable.ck-rounded-corners,.ck-rounded-corners .ck-editor__editable{border-radius:2px;border-top-left-radius:0;border-top-right-radius:0}</style><style type="text/css">blockquote{border-left:5px solid #ccc;padding-left:20px;margin-left:0;font-style:italic;overflow:hidden}</style><style type="text/css">.ck-widget{margin:.8em 0;padding:0}.ck-widget.ck-widget_selected,.ck-widget.ck-widget_selected:hover{outline:3px solid #48a3f5}.ck-editor__editable.ck-blurred .ck-widget.ck-widget_selected{outline:3px solid #ddd}.ck-widget:hover{outline:3px solid #ffd25c}.ck-widget .ck-editable{border:1px solid transparent}.ck-widget .ck-editable.ck-editable_focused,.ck-widget .ck-editable:focus{outline:none;border:1px solid #48a3f5;box-shadow:inset 2px 2px 3px rgba(0,0,0,.1);background-color:#fff}</style><style type="text/css">.cke-text-alternative-form{padding:1.2em;overflow:hidden}.cke-text-alternative-form:focus{outline:none}.cke-text-alternative-form .ck-label{margin-bottom:.4em}.cke-text-alternative-form__actions{clear:both;padding-top:1.2em}.cke-text-alternative-form__actions .ck-button{float:right}.cke-text-alternative-form__actions .ck-button+.ck-button{margin-right:.64em}.cke-text-alternative-form__actions .ck-button+.ck-button+.ck-button{float:left}</style><style type="text/css">.ck-editor__editable .image{text-align:center;clear:both}.ck-editor__editable .image.image-style-align-center,.ck-editor__editable .image.image-style-align-left,.ck-editor__editable .image.image-style-align-right,.ck-editor__editable .image.image-style-side{max-width:50%}.ck-editor__editable .image.image-style-side{float:right;margin-left:2em}.ck-editor__editable .image.image-style-align-left{float:left;margin-right:2em}.ck-editor__editable .image.image-style-align-center{margin-left:auto;margin-right:auto}.ck-editor__editable .image.image-style-align-right{float:right;margin-left:2em}.ck-editor__editable .image>img{display:block;margin:0 auto;max-width:100%}</style><style type="text/css">figure.image{position:relative;overflow:hidden}figure.image.ck-appear{animation:fadeIn .7s}figure.image.ck-infinite-progress:before{content:"";width:30px;height:2px;position:absolute;top:0;right:0;background:rgba(0,0,0,.1);animation-name:readingProgressAnimation;animation-duration:1.5s;animation-iteration-count:infinite;transition-timing-function:linear}figure.image.ck-image-upload-placeholder>img{width:100%}figure.image .ck-progress-bar{height:2px;width:0;position:absolute;top:0;left:0;background:#6ab5f9;transition:width .1s}@keyframes fadeIn{0%{opacity:0}to{opacity:1}}@keyframes readingProgressAnimation{0%{width:30px;right:0}50%{width:45px}to{right:100%}}</style><style type="text/css">.ck-heading_heading1{font-size:1.5em}.ck-heading_heading2{font-size:1.3em}.ck-heading_heading3{font-size:1.1em}[class*=ck-heading_]{line-height:21.6px;padding:9.6px}[class*=ck-heading_heading]{font-weight:700}.ck-dropdown.ck-heading-dropdown .ck-dropdown__button .ck-button__label{width:8em}</style><style type="text/css">.ck-placeholder:before{content:attr(data-placeholder);cursor:text;color:#c2c2c2;pointer-events:none}</style><style type="text/css">.ck-editor__editable .image>figcaption{color:#333;background-color:#f7f7f7;padding:.8em;font-size:.75em;outline-offset:-1px}</style><style type="text/css">.ck-link-form{padding:1.2em;overflow:hidden}.ck-link-form:focus{outline:none}.ck-link-form .ck-input-text{width:100%}.ck-link-form .ck-label{margin-bottom:.2em}.ck-link-form__actions{clear:both;padding-top:1.2em}.ck-link-form__actions .ck-button{float:right}.ck-link-form__actions .ck-button+.ck-button{margin-right:.64em}.ck-link-form__actions .ck-button:last-child{float:left;margin-right:2.56em}</style>
	
		<link href ="css/style.css" rel = "stylesheet" type = "text/css"> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script type="text/javascript">
		</script>
		<style type="text/css">
	.list-group {
      margin-left:50px;
     right:0;
     margin-top:0px;
    }
    .lead {
     margin-left:40px;
     color: red;
    }
		</style>
</head>
<script type="text/javascript">

 function KtraGui() {
		 
	
	var ChuDe = document.getElementById("ChuDe");
	var email = document.getElementById("email");
	var Email = email.value;
	var RE = /^[+a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i;
	
	if(RE.test(Email))
	{
			
			email.style.border = "1px solid grey";
			
	}
	else
	{
		
		alert("Email không hợp lệ");
		email.style.border = "1px solid red";
		
	}
	if(ChuDe.value == "")
	{
		
		alert("Chủ đề không được để trống");
		ChuDe.style.border = "1px solid red";
		
	}
	else
	{
		
		ChuDe.style.border = "1px solid grey";
		
	}
	
	if(ChuDe.value != "" && RE.test(Email))
	{
		alert("Gửi mail thành công");
	}

 }


</script>
<body style="background:#f5f5f5">
		<nav class="navbar navbar-inverse" style=" background:  #1a2732 ">
		  <div class="container-fluid" style="height: 60px;">
		  	<button type="button" class="[ navbar-toggle ]" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="[ sr-only ]">Toggle navigation</span>
					<span class="[ icon-bar ]"></span>
					<span class="[ icon-bar ]"></span>
					<span class="[ icon-bar ]"></span>
				</button>
		    <div class="navbar-header">
		      <a class="navbar-brand q" href="#" style="font-size: 30px;color: #fed189">NICE</a>
		      <a class="navbar-brand q" href="#" style="font-size: 30px;color: blue">SECRETARY</a>		      
		    </div>
		    <div id="navbar" class="navbar-collapse collapse" aria-expanded="false" style="height: 1px;" >
		      <ul class="nav navbar-nav " >		      
		      <li>
		      <form class="navbar-form">
              			<input class="form-control" type="text" placeholder="Search">
           		 </form>
           		</li>
		    </ul>	     
		    <ul class="nav navbar-nav navbar-right">
		    	<li><span class="fa fa-align-justify" style="font-size:30px; color: #c0c0c0; margin-top: 26%;">&nbsp;&nbsp;&nbsp;</span></li>
		    	<li><span class="fa fa-envelope" style="font-size:30px; color: #c0c0c0; margin-top: 22%;">&nbsp;&nbsp;&nbsp;</span></li>
		    	<li><span class="fa fa-bell" style="font-size:30px; color: #c0c0c0; margin-top: 26%;">&nbsp;&nbsp;&nbsp;</span></li>
		    	<li>
		    	 <div class="dropdown">
		    	<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" style="background: #1a2732; width: 100%;height: 40px; margin-top: 10px; border: 1px solid #1a2732">
		    	<span class="profile-ava" style="font-size:30px; color: #c0c0c0; ">
		    		<img class="img-circle" alt="" src="img/avatar.jpg" style="margin-top: -15%;margin-right: 100px;width:30px;height:30px;vertical-align:middle;">
		    	
		    	</span>
		    	<p class="username" style=" margin-top: -30%;color:white;text-align: center;">
		    		${name}
		    	</p>
		    	</button>
		    	 <ul class="dropdown-menu">
      			<li><a href="DangXuatController"><i class="ace-icon fa fa-power-off"></i>&nbsp;&nbsp;Đăng xuất</a></li>
     			
  				  </ul>
		    	</div>
		    	</li>
		    	
		    </ul>	
		  </div>
		  </div>
		  
		</nav>
<div class="container-fluid">
	<div class="row">
	<div class="col-md-3 b" id="mySidenav" style="margin-top:-1%;">
	  <div class="list-group a1" style="margin-left:0%; background:; width:100%;">
    <a  style="font-size: 30px;background:#2e3b46; color: #fff;height:50px;width:100%;" href="#" class="list-group-item"><span style="margin-left:0%;" class="glyphicon glyphicon-home"></span>
        Home</a>
    <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="LoginServlet?user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}" class="list-group-item"><span class="fa fa-address-book">&nbsp;&nbsp;Thông tin thư ký</span></a>
     <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="HopThuDenController?user=${DangNhap.userName}&pass=${DangNhap.passWord}&pageid=1&name=${name}" class="list-group-item "><span class="fa fa-envelope">&nbsp;&nbsp;Hộp thư đến</span></a>
     <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="ThuKyXuatPhieuDiemController?user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}" class="list-group-item "><span class="fa fa-file-text">&nbsp;&nbsp;Xuất phiếu điểm</span></a>
     <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="ThuKyPheDuyetController?user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}" class="list-group-item "><span class="fa fa-file-text">&nbsp;&nbsp;Phê duyệt</span></a>
     <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="ThuKyDoiMatKhauController?user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}" class="list-group-item "><span class="fa fa-file-text">&nbsp;&nbsp;Đổi mật khẩu</span></a>
     <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="Forward" class="list-group-item "><span class="fa fa-arrow-left">&nbsp;&nbsp;Thoát</span></a>     
 	
  </div>
	</div>
	<div class="col-md-8" style="margin-top:0px; background: white;">
		<p><span style="font-size: 25px;">Inbox</span> >> Mailbox with some customizations as described in docs</p>
		<div class="panel panel-default">
			<button style=" border: 1px solid #C5D0DC ; width: 60px; height: 50px; margin-left: 2%;"><i style=" color: blue !important;" class="blue ace-icon fa fa-inbox bigger-150"></i><br /><span style="font-size:15px;">Inbox</span></button>
			<button style=" border: 1px solid #C5D0DC ; width: 60px; height: 50px; margin-top: 0%;"><i style=" color: orange !important;" class="orange ace-icon fa fa-location-arrow bigger-130"></i><br /><span style="font-size:15px;">Sent</span></button>
			<button style="border: 1px solid #C5D0DC ; width: 60px; height: 50px;	 margin-top: 0%;"><i style=" color: #69aa46 !important;" class="green ace-icon fa fa-pencil bigger-150"></i><br /><span style="font-size:15px;">Draft</span></button>
			<button	  style="background: #7461AA; float: right;border: 1px solid #C5D0DC ; width: 130px; height: 40px;margin-top: 5px; margin-right: 5px;"><i style=" color: white !important;" class="ace-icon fa fa-envelope bigger-130"></i>&nbsp;&nbsp;&nbsp;<span style="font-size:15px;color: white;">Soạn</span></button>
			
           		 <table style="width: 100%;background:#f1f5fa; height: 40px; ">
			          <tr>
			          <td style="width: 10px;">
			          </td>
			          	<td>
			          	<a href="HopThuDenController?user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}"><i class="fa fa-arrow-left" style="font-size:15px"></i>&nbsp;Trở về</a>
			          	</td>
			          	<td style="width: 510px;">
			          	</td>
			          	
			          	
			          </tr>
           		 </table>
			</div>	
			<div class="panel panel-default" style="margin-top: -20px;">
			<div class="panel-body" style="border: 1px dotted #c0c0c0">
			
				<form   id = "registration_form" class="form-horizontal"  >
				 <div class="form-group">
                   <label for="email" class="col-sm-3 control-label">Email : </label>
                   <div class="col-sm-5">
                       <input name="Email" type="text" id="email"  class="form-control">
                       
                   </div>
               </div>
                <div class="form-group" >
                   <label for="firstName" class="col-sm-3 control-label">Chủ đề : </label>
                   <div class="col-sm-9">
                       <input name="HoVaTen" type="text" id="ChuDe"  class="form-control" >
                    	
                   </div>
               </div>
				</form>
				<textarea name="content" id="editor" style="display: none;">        
	    	
	    </textarea>
	    
	    <span class="ck-tooltip ck-tooltip_s">
	    <span class="ck-tooltip__text">Heading
	    </span></span>
	    
	    <div class="ck-reset ck-dropdown__panel" >
	    <ul class="ck-reset ck-list">
	  
	    <li tabindex="-1" class="ck-list__item ck-heading_heading1">Heading 1
	    </li><li tabindex="-1" class="ck-list__item ck-heading_heading2">Heading 2</li>
	    <li tabindex="-1" class="ck-list__item ck-heading_heading3">Heading 3
	    </li>
	    </ul>
	    </div>
	    </div>
	    <script>
        ClassicEditor
            .create( document.querySelector( '#editor' ) )
            .catch( error => {
                console.error( error );
            } );
    </script>
	    <div class="ck-body ck-rounded-corners ck-reset_all">
	    	<div class="ck-balloon-panel ck-balloon-panel_arrow_nw ck-balloon-panel_with-arrow" style="left: 0px; top: 0px;">
	    	</div>
	    	
	    </div>
	    <br/>
	    <input type="button" value="Gửi" onclick= "KtraGui()" style="float: right;background: #4CAF50!important;height: 40px; width:70px;">
			</div>
			
			</div>
		</div>
		
			          	
 	</div>
 	
 
</body>