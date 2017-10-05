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
            $folder = "themes/".SSViewer::current_theme()."/css/";
        }
        $fullFolder = Director::baseFolder().'/'.$folder;
        if (!file_exists($fullFolder)) {
            mkdir($fullFolder);
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
        $array = array();
        $array[] = "green";
        $array[] = "yellow";
        $array[] = "blue";
        $array[] = "pink";
        $array[] = "orange";
        $errorField0 = new TextField($name = "ErrorField0", $title = "Text Field Example 1");
        $errorField0->setError("message shown when something is good", "good");
        $errorField1 = new TextField($name = "ErrorField1", $title = "Text Field Example 2");
        $errorField1->setError("message shown when something is bad", "bad");
        $errorField2 = new TextField($name = "ErrorField2", $title = "Text Field Example 3");
        $errorField2->setCustomValidationMessage("message shown when something is bad", "bad");
        $errorField3 = new TextField($name = "ErrorField3", $title = "Text Field Example 4");
        $errorField3->setError("there is an error", "required");
        $errorField4 = new TextField($name = "ErrorField4", $title = "Text Field Example 5");
        $errorField4->setCustomValidationMessage("custom validation error");
        $rightTitle = new TextField($name = "RightTitleField", $title = "Left Title is Default");
        $rightTitle->setRightTitle("right title here");
        $readonlyField = new ReadOnlyField($name = "ReadOnlyField", $title = "ReadOnlyField");
        $readonlyField->setValue("read only value");
        $groupedDropdownField = new GroupedDropdownField(
             $name = "dropdown",
             $title = "Simple Grouped Dropdown",
             $source = array(
                    "primary" => array(
                            "1" => "Green",
                            "2" => "Red",
                            "3" => "Blue",
                            "4" => "Orange"
                    ),
                    "secondary" => array(
                            "11" => "Light Blue",
                            "12" => "Dark Brown",
                            "13" => "Pinkish Red"
                    )
             )
        );
        $formClassName = Config::inst()->get("TypographyTestPage_Controller", "form_class_name");
        $form = $formClassName::create(
            $controller = $this,
            $name = "TestForm",
            $fields = new FieldList(
                // List the your fields here
                new LiteralField($name = "HeaderFieldForForm", $title = '<h1 id="Form">Form Elements</h1>'),
                new HeaderField($name = "HeaderField1", $title = "Default Header Field"),
                new LiteralField($name = "LiteralField", "<p>NOTE: All fields up to EmailField are required and should be marked as such</p>"),
                new TextField($name = "TextField1", $title = "Text Field Example 1"),
                new TextField($name = "TextField2", $title = "Text Field Example 2"),
                new TextField($name = "TextField3", $title = "Text Field Example 3"),
                new TextField($name = "TextField4", $title = ""),
                new HeaderField($name = "HeaderField2a", $title = "Error Messages", 2),
                new LiteralField($name = "ErrorExplanations", '<p>Below are some error messages, some of them only show up after you have placed your cursor on the field and not completed it (i.e. a reminder to complete the field)</p>'),
                $errorField0,
                $errorField1,
                $errorField2,
                $errorField3,
                $errorField4,
                new HeaderField($name = "HeaderField2b", $title = "Field with right title", 2),
                $rightTitle,
                $textAreaField = new TextareaField($name = "TextareaField", $title = "Textarea Field"),
                new EmailField("EmailField", "Email address"),
                new HeaderField($name = "HeaderField2c", $title = "HeaderField Level 2", 2),
                new DropdownField($name = "DropdownField", $title = "Dropdown Field", array( 0 => "-- please select --", 1 => "test AAAA", 2 => "test BBBB")),
                new OptionsetField($name = "OptionsetField", $title = "Optionset Field", $array),
                new CheckboxSetField($name = "CheckboxSetField", $title = "Checkbox Set Field", $array),
                new CurrencyField($name = "CurrencyField", $title = "Bling bling"),
                new HeaderField($name = "HeaderField3", $title = "Other Fields", 3),
                new NumericField($name = "NumericField", $title = "Numeric Field "),
                new DateField($name = "DateField", $title = "Date Field"),
                new DateField($name = "DateTimeField", $title = "Date and Time Field"),
                new FileField($name = "FileField", $title = "File Field"),
                new ConfirmedPasswordField($name = "ConfirmPasswordField", $title = "Password"),
                new CheckboxField($name = "CheckboxField", $title = "Checkbox Field"),
                $groupedDropdownField,
                new HeaderField($name = "HeaderField4", $title = "Read-only Field", 3),
                $readonlyField
            ),
            $actions = new FieldList(
                    // List the action buttons here
                    new FormAction("signup", "Sign up")
            ),
            $requiredFields = new RequiredFields(
                "TextField1", "TextField2", "TextField3", "ErrorField1", "ErrorField2", "EmailField", "TextField3", "RightTitleField", "CheckboxField", "CheckboxSetField"
            )
        );
        $textAreaField->setColumns(7);
        $form->setMessage("warning message", "warning");
        return $form;
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
