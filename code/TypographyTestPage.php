<?php
/**
 * Add a page to your site that allows you to view all the html that can be used in the typography section - if applied correctly.
 *
 * TO DO: add a testing sheet with a list of checks to be made (e.g. italics, bold, paragraphy) - done YES / NO, a date and a person who checked it (member).
 */


class TypographyTestPage extends Page {

	static $icon = "typography/images/treeicons/TypographyTestPage";

	//legacy
	static function setAutoInclude($v) {return self::set_auto_include($v);}

	protected static $auto_include = false;
		static function set_auto_include($value) {self::$auto_include = $value;}
		static function get_auto_include() {return self::$auto_include;}

	protected static $parent_url_segment = "admin-only";
		static function set_parent_url_segment($value) {self::$parent_url_segment = $value;}
		static function get_parent_url_segment() {return self::$parent_url_segment;}


	static $defaults = array(
		"URLSegment" => "typo",
		"ShowInMenus" => false,
		"ShowInSearch" => false,
		"Title" => "Typography Test",
		"Content" => 'auto-completed - do not alter',
	);

	public function canCreate() {
		$bt = defined('DB::USE_ANSI_SQL') ? "\"" : "`";
		return !DataObject::get("SiteTree", "{$bt}ClassName{$bt} = 'TypographyTestPage'");
	}

	public function requireDefaultRecords() {
		parent::requireDefaultRecords();
		if(self::$auto_include) {
			$check = DataObject::get_one("TypographyTestPage");
			if(!$check) {
				$page = new TypographyTestPage();
				$page->ShowInMenus = 0;
				$page->ShowInSearch = 0;
				$page->Title = "typography test page";
				$page->MetaTitle = "typography test page";
				$page->PageTitle = "typography test page";
				$page->Sort = 99999;
				$page->URLSegment = "typo";
				$parent = DataObject::get_one("Page", "URLSegment = '".self::$parent_url_segment."'");
				if($parent) {
					$page->ParentID = $parent->ID;
				}
				$page->writeToStage('Stage');
				$page->publish('Stage', 'Live');
				$page->URLSegment = "typo";
				$page->writeToStage('Stage');
				$page->publish('Stage', 'Live');

				DB::alteration_message("TypographyTestPage","created");
			}
		}
	}


}

class TypographyTestPage_Controller extends Page_Controller {


	function init() {
		parent::init();
		Requirements::javascript(THIRDPARTY_DIR."/jquery/jquery.js");
		//Requirements::block(THIRDPARTY_DIR."/jquery/jquery.js");
		//Requirements::javascript(Director::protocol()."ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js");
		Requirements::javascript('typography/javascript/typography.js');
	}

	public function index() {
		$this->Content = $this->typographyhtml();
		return array();
	}

	function Form() {
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
		$form = new Form(
			$controller = $this,
			$name = "TestForm",
			$fields = new FieldSet(
				// List the your fields here
				new HeaderField($name = "HeaderField1", $title = "HeaderField Level 1", 1),
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
				new TextareaField($name = "TextareaField", $title = "Textarea Field", 5, 5),
				new EmailField("EmailField", "Email address"),
				new HeaderField($name = "HeaderField2c", $title = "HeaderField Level 2", 2),
				new DropdownField($name = "DropdownField",$title = "Dropdown Field",$source = Geoip::getCountryDropDown()),
				new OptionsetField($name = "OptionsetField",$title = "Optionset Field",$array),
				new CheckboxSetField($name = "CheckboxSetField",$title = "Checkbox Set Field",$array),
				new HeaderField($name = "HeaderField3", $title = "Other Fields", 3),
				new NumericField($name = "NumericField", $title = "Numeric Field "),
				new DateField($name = "DateField", $title = "Date Field"),
				new FileField($name = "FileField", $title = "Upload File"),
				new CheckboxField($name = "CheckboxField", $title = "Checkbox Field"),
				new HeaderField($name = "HeaderField4", $title = "Read-only Field", 3),
				$readonlyField
			),
			$actions = new FieldSet(
					// List the action buttons here
					new FormAction("signup", "Sign up")

			),
			$requiredFields = new RequiredFields(
				"TextField1","TextField2", "TextField3","ErrorField1","ErrorField2", "EmailField", "TextField3", "RightTitleField", "CheckboxField", "CheckboxSetField"
			)
		);
		$form->setMessage("warning message", "warning");
		return $form;
	}

	function TestForm() {
		die("thank you for signing up to twenty years of free chocolate");
	}

	function typographyhtml() {
		return $this->renderWith("TypographySample");
	}

}


