<?php

/**
 * developed by www.sunnysideup.co.nz
 * author: Nicolaas - modules [at] sunnysideup.co.nz
**/

//HtmlEditorConfig::get('cms')->setOption('ContentCSS', 'themes/main/css/typography.css');

HtmlEditorConfig::get('cms')
->setOption(
    'valid_styles',
    array('*' => 'color,font-weight,font-style,text-decoration')
)
->setOption(
    'paste_as_text',
    true
)
->setOption(
    'paste_text_sticky',
    true
)
->setOption(
    'paste_text_sticky_default',
    true
)
->enablePlugins(
    'autolink'
);
