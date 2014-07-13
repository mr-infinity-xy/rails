CKEDITOR.editorConfig = function( config )
{
  config.toolbar = 'mystyle';

  config.toolbar_mystyle =
    [
        { name: 'document', items : [ 'NewPage','Preview' ] },
        { name: 'clipboard', items : [ 'Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo' ] },
        { name: 'editing', items : [ 'Find','Replace','-','SelectAll','-','Scayt' ] },
        { name: 'insert', items : [ 'Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak'
                 ,'Iframe' ] },
                '/',
        { name: 'styles', items : [ 'Styles','Format' ] },
        { name: 'basicstyles', items : [ 'Bold','Italic','Strike','-','RemoveFormat' ] },
        { name: 'links', items : [ 'Link','Unlink','Anchor' ] },
        { name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align' ], items: [ 'NumberedList', 'BulletedList',
         '-', 'Outdent', 'Indent', '-', 'Blockquote', 'CreateDiv', '-', 'JustifyLeft', 'JustifyCenter',
          'JustifyRight', 'JustifyBlock', '-' ] }
    ];
}