<?php

namespace Sunnysideup\Typography;

use PageController;
use SilverStripe\Control\Director;
use SilverStripe\Core\Config\Config;
use SilverStripe\Forms\Form;
use SilverStripe\ORM\FieldType\DBField;
use SilverStripe\View\Requirements;
use SilverStripe\View\SSViewer;
use Sunnysideup\Typography\Api\CssColorChart;
use Sunnysideup\Typography\Forms\TypographyTestForm;

/**
 * Add a page to your site that allows you to view all the html that can be used in the typography section - if applied correctly.
 * TO DO: add a testing sheet with a list of checks to be made (e.g. italics, bold, paragraphy) - done YES / NO, a date and a person who checked it (member).
 */

class TypographyTestPageController extends PageController
{
    /**
     * @var bool
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
    private static $form_class_name = Form::class;

    private static $allowed_actions = [
        'colours' => 'ADMIN',
        'replacecolours' => 'ADMIN',
    ];

    public static function get_css_folder()
    {
        if (Config::inst()->get(TypographyTestPageController::class, 'css_folder')) {
            $folder = Config::inst()->get(TypographyTestPageController::class, 'css_folder');
        } else {
            $folder = 'themes/' . Config::inst()->get(SSViewer::class, 'theme') . '/css/';
        }
        $fullFolder = Director::baseFolder() . '/' . $folder;
        if (! file_exists($fullFolder)) {
            @mkdir($fullFolder);
            //user_error("could not find the default CSS folder $fullFolder");
            $folder = '';
        }
        return $folder;
    }

    public function init()
    {
        parent::init();
        PageController::init();
    }

    public function index()
    {
        $this->Content = $this->typographyhtml();
        $this->Title = 'Typography Test Page';
        return $this->renderWith('Page');
    }

    public function ShowFirstHeading()
    {
        return Config::inst()->get(TypographyTestPageController::class, 'include_first_heading_in_test_copy');
    }

    public function colours()
    {
        $baseFolder = Director::baseFolder();
        require($baseFolder . '/typography/thirdparty/colourchart/csscolorchart.php');
        $cssPath = [
            $baseFolder . ThemeResourceLoader::inst()->getPath(''),
            $baseFolder .
            $this->project() . 'css/',
            $this->project() . 'client/css/',
            $this->project() . 'dist/',
        ];
        $foundIn = implode($cssPath, ', ');
        echo '<h1>CSS colors found in: ' . $foundIn . '</h1>';
        $themes = new CssColorChart();
        $colourList = $themes->listColors($cssPath);
        $html = DBField::create_field('HTMLText', $colourList);
        echo $html;
    }

    public function ClassName()
    {
        return 'TypographyTestPage';
    }

    public function Form()
    {
        return TypographyTestForm::create($this, 'TestForm');
    }

    public function TestForm($data)
    {
        $this->redirectBack();
    }

    public function RandomLinkExternal()
    {
        return 'http://www.google.com/?q=' . rand(0, 100000);
    }

    public function RandomLinkInternal()
    {
        return '/?q=' . rand(0, 100000);
    }

    public function SiteColours()
    {
        $folder = TypographyTestPageController::get_css_folder();
        if ($folder) {
            Requirements::themedCSS('client/css/CssColorChart');
            //Requirements::javascript("typography/javascript/CssColorChart.js");
            $cssColorChart = new CssColorChart();
            return $cssColorChart->listColors(Director::baseFolder() . '/' . $folder);
        }
    }

    public function replacecolours()
    {
        $folder = Config::inst()->get(TypographyTestPageController::class, 'css_folder');
        if ($folder) {
            require_once(Director::baseFolder() . '/typography/thirdparty/csscolorchart.php');
            $cssColorChart = new CssColorChart();
            return $cssColorChart->replaceColours(Director::baseFolder() . '/' . $folder);
        }
        return 'no folder specified, use TypographyTestPageController::set_css_folder()';
    }

    protected function typographyhtml()
    {
        return $this->renderWith('TypographySample');
    }
}
