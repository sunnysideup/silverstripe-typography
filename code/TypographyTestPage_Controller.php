<?php

/**
 * Add a page to your site that allows you to view all the html that can be used in the typography section - if applied correctly.
 * TO DO: add a testing sheet with a list of checks to be made (e.g. italics, bold, paragraphy) - done YES / NO, a date and a person who checked it (member).
 */

class TypographyTestPage_Controller extends Page_Controller
{

    /**
     * @var string
     */
    private static $include_first_heading_in_test_copy = false;

    /**
     * @var string
     */
    private static $css_folder = '';

    /**
     * use this to set up alternative form
     * formats
     * @var string
     */
    private static $form_class_name = "Form";

    public static function get_css_folder()
    {
        if (Config::inst()->get("TypographyTestPage_Controller", "css_folder")) {
            $folder = Config::inst()->get("TypographyTestPage_Controller", "css_folder");
        } else {
            $folder = "themes/".Config::inst()->get('SSViewer', 'theme')."/css/";
        }
        $fullFolder = Director::baseFolder().'/'.$folder;
        if (!file_exists($fullFolder)) {
            @mkdir($fullFolder);
            //user_error("could not find the default CSS folder $fullFolder");
            $folder = '';
        }
        return $folder;
    }

    private static $allowed_actions = array(
        "colours" => "ADMIN",
        "replacecolours" => "ADMIN"
    );

    public function init()
    {
        parent::init();
        Page_Controller::init();
    }

    public function index()
    {
        $this->Content = $this->typographyhtml();
        $this->Title = 'Typography Test Page';
        return $this->renderWith('Page');
    }

    public function ShowFirstHeading()
    {
        return Config::inst()->get("TypographyTestPage_Controller", "include_first_heading_in_test_copy");
    }

    public function colours()
    {
        $baseFolder = Director::baseFolder();
        require($baseFolder.'/typography/thirdparty/colourchart/csscolorchart.php');
        $cssPath = array($baseFolder.'/themes/', $baseFolder.$this->project()."css/");
        echo '<h1>CSS colors found in: ' .
            (is_array($cssPath)?implode($cssPath, ', '):$cssPath) . '</h1>';
        $themes = new CssColorChart();
        $colourList = $themes->listColors($cssPath);
        $html = DBField::create_field("HTMLText", $colourList);
        echo $html;
    }

    public function Form()
    {
        return TypographyTestForm::create($this, 'TestForm');
    }

    public function TestForm($data)
    {
        $this->redirectBack();
    }

    protected function typographyhtml()
    {
        return $this->renderWith('TypographySample');
    }

    public function RandomLinkExternal()
    {
        return "http://www.google.com/?q=".rand(0, 100000);
    }

    public function RandomLinkInternal()
    {
        return "/?q=".rand(0, 100000);
    }

    public function SiteColours()
    {
        if ($folder = TypographyTestPage_Controller::get_css_folder()) {
            Requirements::themedCSS("CssColorChart", "typography");
            //Requirements::javascript("typography/javascript/CssColorChart.js");
            $cssColorChart = new CssColorChart();
            return $cssColorChart->listColors(Director::baseFolder()."/".$folder);
        }
    }

    public function replacecolours()
    {
        if ($folder = Config::inst()->get("TypographyTestPage_Controller", "css_folder")) {
            require_once(Director::baseFolder()."/typography/thirdparty/csscolorchart.php");
            $cssColorChart = new CssColorChart();
            return $cssColorChart->replaceColours(Director::baseFolder()."/".Config::inst()->get("TypographyTestPage_Controller", "css_folder"));
        }
        return "no folder specified, use TypographyTestPage_Controller::set_css_folder()";
    }
}
