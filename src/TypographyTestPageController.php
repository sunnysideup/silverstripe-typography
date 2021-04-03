<?php

namespace Sunnysideup\Typography;

use PageController;
use SilverStripe\Core\Config\Config;
use SilverStripe\Forms\Form;
use Sunnysideup\Typography\Forms\TypographyTestForm;

/**
 * Add a page to your site that allows you to view all the html that can be used in the typography section - if applied correctly.
 *
 * @todoadd a testing sheet with a list of checks to be made (e.g. italics, bold, paragraphy) - done YES / NO, a date and a person who checked it (member).
 */
class TypographyTestPageController extends PageController
{
    protected $URLSegment = 'typo';

    /**
     * @var int
     */
    private static $image_min_width_height = 200;

    /**
     * @var int
     */
    private static $image_max_width_height = 600;

    /**
     * @var bool
     */
    private static $include_first_heading_in_test_copy = false;

    /**
     * use this to set up alternative form
     * formats.
     *
     * @var string
     */
    private static $form_class_name = Form::class;

    public function index()
    {
        $this->Content = $this->typographyhtml();
        $this->Title = 'Typography Test Page';

        return $this->renderWith('Page');
    }

    public function IsTypographyTestPage(): bool
    {
        return true;
    }

    public function ShowFirstHeading()
    {
        return Config::inst()->get(TypographyTestPageController::class, 'include_first_heading_in_test_copy');
    }

    public function ImageWidth(): int
    {
        return $this->getWidthHeight();
    }

    public function ImageHeight(): int
    {
        return $this->getWidthHeight('height');
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

    public function getURLSegment()
    {
        return $this->URLSegment;
    }

    public function Link($action = null)
    {
        $link = parent::link($action);

        return str_replace(self::class, 'typo', $link);
    }

    protected function init()
    {
        parent::init();
        PageController::init();
    }

    protected function getWidthHeight(?string $type = 'width'): int
    {
        if ($this->request->getVar('image' . $type)) {
            $min = (int) $this->request->getVar('image' . $type);
            $max = $min;
        } else {
            $min = $this->Config()->get('image_min_width_height');
            $max = $this->Config()->get('image_max_width_height');
        }

        return rand($min, $max);
    }

    protected function typographyhtml()
    {
        return $this->renderWith('TypographySample');
    }
}
