<?php

/**
 * developed by www.sunnysideup.co.nz
 * author: Nicolaas - modules [at] sunnysideup.co.nz
 **/

use Sunnysideup\Typography\Api\HtmlEditorConfigExtras;

//HtmlEditorConfig::get('cms')->setOption('ContentCSS', 'themes/main/css/typography.css');


if (strpos(ltrim($_SERVER['REQUEST_URI'], '/'), 'admin') === 0) {
    HtmlEditorConfigExtras::init();
}
