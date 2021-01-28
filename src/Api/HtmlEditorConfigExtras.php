<?php

namespace Sunnysideup\Typography\Api;

use SilverStripe\Forms\HTMLEditor\TinyMCEConfig;

class HtmlEditorConfigExtras
{
    public static function init()
    {
        TinyMCEConfig::get('cms')
            ->setOption(
                'valid_styles',
                ['*' => 'color,font-weight,font-style,text-decoration,padding-left']
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
    }
}
