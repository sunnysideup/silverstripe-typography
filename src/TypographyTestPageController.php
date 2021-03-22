<?php

namespace Sunnysideup\Typography;

use PageController;
use SilverStripe\Core\Config\Config;
use SilverStripe\Forms\Form;
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
     * use this to set up alternative form
     * formats
     * @var string
     */
    private static $form_class_name = Form::class;

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

    public function IsTypographyTestPage() : bool
    {
        return true;
    }

    public function ShowFirstHeading()
    {
        return Config::inst()->get(TypographyTestPageController::class, 'include_first_heading_in_test_copy');
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

    protected function typographyhtml()
    {
        return $this->renderWith('TypographySample');
    }
}
