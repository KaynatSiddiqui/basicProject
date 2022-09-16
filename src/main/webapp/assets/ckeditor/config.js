/**
 * @license Copyright (c) 2003-2017, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */
CKEDITOR.editorConfig = function( config ) {
config.font_names =

'Calibri/Calibri,Verdana,Geneva,sans-serif;' + 
'Times New Roman/Times New Roman, Times, serif;' +
'Century;' + 
'Arial/Arial, Helvetica, sans-serif;' +
'Verdana/Verdana, Geneva, sans-serif'+
'Comic Sans MS/Comic Sans MS, cursive;' +
'Courier New/Courier New, Courier, monospace;' +
'Georgia/Georgia, serif;' +
'Lucida Sans Unicode/Lucida Sans Unicode, Lucida Grande, sans-serif;' +
'Tahoma/Tahoma, Geneva, sans-serif;' +
'Trebuchet MS/Trebuchet MS, Helvetica, sans-serif;' ;

config.enterMode = CKEDITOR.ENTER_P;
    config.shiftEnterMode = CKEDITOR.ENTER_P;
    config.extraPlugins = 'mathjax';
    config.mathJaxLib = '//cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.4/MathJax.js?config=TeX-AMS_HTML';

};


CKEDITOR.on('instanceReady', function (ev) {
        ev.editor.dataProcessor.writer.setRules('p',
         {
             indent: false,
             breakBeforeOpen: false,
             breakAfterOpen: false,
             breakBeforeClose: false,
             breakAfterClose: false
         });
    });

