function createRichTextArea(textarea_id) {
	bkLib.onDomLoaded(function() {
     new nicEditor({fullPanel : true}).panelInstance(textarea_id);
}); 
// Thay thế text area có id là textarea_id trở thành WYSIWYG editor sử dụng nicEditor
}