<?php

namespace Sunnysideup\Typography\Forms;

use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\CheckboxSetField;
use SilverStripe\Forms\ConfirmedPasswordField;
use SilverStripe\Forms\CurrencyField;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\FileField;
use SilverStripe\Forms\Form;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\GroupedDropdownField;
use SilverStripe\Forms\HeaderField;
use SilverStripe\Forms\LiteralField;
use SilverStripe\Forms\NumericField;
use SilverStripe\Forms\OptionsetField;
use SilverStripe\Forms\RequiredFields;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;

class TypographyTestForm extends Form
{
    public function __construct($controller, $nameOfForm = 'TestForm')
    {
        /** @todo remove these literal field displaying error messages and fix correctly */
        $array = [];
        $array[] = 'green';
        $array[] = 'yellow';
        $array[] = 'blue';
        $array[] = 'pink';
        $array[] = 'orange';
        $errorField0 = TextField::create($name = 'ErrorField0', $title = 'Text Field Example 1')
            ->setCustomValidationMessage('message shown when something is good')
        ;
        $errorField1 = TextField::create($name = 'ErrorField1', $title = 'Text Field Example 2')
            ->setCustomValidationMessage('message shown when something is bad')
        ;
        $errorField2 = TextField::create($name = 'ErrorField2', $title = 'Text Field Example 3')
            ->setCustomValidationMessage('message shown when something is bad')
        ;
        $errorField3 = TextField::create($name = 'ErrorField3', $title = 'Text Field Example 4')
            ->setCustomValidationMessage('there is an error')
        ;
        $errorField4 = TextField::create($name = 'ErrorField4', $title = 'Text Field Example 5')
            ->setCustomValidationMessage('custom validation error')
        ;
        $rightTitle = TextField::create($name = 'RightTitleField', $title = 'Left Title is Default')
            ->setDescription('right title here')
        ;
        $readonlyField = \SilverStripe\Forms\ReadonlyField::create($name = 'ReadOnlyField', $title = 'ReadOnlyField')
            ->setValue('read only value')
        ;
        $groupedDropdownField = GroupedDropdownField::create(
            $name = 'dropdown',
            $title = 'Simple Grouped Dropdown',
            $source = [
                'primary' => [
                    '1' => 'Green',
                    '2' => 'Red',
                    '3' => 'Blue',
                    '4' => 'Orange',
                ],
                'secondary' => [
                    '11' => 'Light Blue',
                    '12' => 'Dark Brown',
                    '13' => 'Pinkish Red',
                ],
            ]
        );
        $fields = FieldList::create(
            // List the your fields here
            LiteralField::create($name = 'HeaderFieldForForm', $title = '<h1 id="Form">Form Elements</h1>'),
            HeaderField::create($name = 'HeaderField1', $title = 'Default Header Field'),
            LiteralField::create($name = LiteralField::class, '<p>NOTE: All fields up to EmailField are required and should be marked as such</p>'),
            TextField::create($name = 'TextField1', $title = 'Text Field Example 1'),
            TextField::create($name = 'TextField2', $title = 'Text Field Example 2'),
            TextField::create($name = 'TextField3', $title = 'Text Field Example 3'),
            TextField::create($name = 'TextField4', $title = ''),
            HeaderField::create($name = 'HeaderField2a', $title = 'Error Messages', 2),
            LiteralField::create($name = 'ErrorExplanations', '<p>Below are some error messages, some of them only show up after you have placed your cursor on the field and not completed it (i.e. a reminder to complete the field)</p>'),
            $errorField0,
            LiteralField::create(
                'GoodMessage',
                '<span class="message good">message shown when something is good<a href="#" class="close-message">×</a></span>'
            ),
            $errorField1,
            LiteralField::create(
                'RequiredMessage',
                '<span class="message bad">message shown when something is required<a href="#" class="close-message">×</a></span>'
            ),
            $errorField2,
            $errorField3,
            LiteralField::create(
                'BadMessage',
                '<span class="message required">there is an error<a href="#" class="close-message">×</a></span>'
            ),
            $errorField4,
            HeaderField::create($name = 'HeaderField2b', $title = 'Field with right title', 2),
            $rightTitle,
            $textAreaField = TextareaField::create($name = TextareaField::class, $title = 'Textarea Field'),
            EmailField::create(EmailField::class, 'Email address'),
            HeaderField::create($name = 'HeaderField2c', $title = 'HeaderField Level 2', 2),
            DropdownField::create($name = DropdownField::class, $title = 'Dropdown Field', [0 => '-- please select --', 1 => 'test AAAA', 2 => 'test BBBB']),
            OptionsetField::create($name = OptionsetField::class, $title = 'Optionset Field', $array),
            CheckboxSetField::create($name = CheckboxSetField::class, $title = 'Checkbox Set Field', $array),
            CurrencyField::create($name = CurrencyField::class, $title = 'Bling bling'),
            HeaderField::create($name = 'HeaderField3', $title = 'Other Fields', 3),
            NumericField::create($name = NumericField::class, $title = 'Numeric Field '),
            DateField::create($name = DateField::class, $title = 'Date Field'),
            DateField::create($name = 'DateTimeField', $title = 'Date and Time Field'),
            FileField::create($name = FileField::class, $title = 'File Field'),
            ConfirmedPasswordField::create($name = 'ConfirmPasswordField', $title = 'Password'),
            CheckboxField::create($name = CheckboxField::class, $title = 'Checkbox Field'),
            $groupedDropdownField,
            HeaderField::create($name = 'HeaderField4', $title = 'Read-only Field', 3),
            $readonlyField
        );
        $actions = FieldList::create(
                // List the action buttons here
            FormAction::create('signup', 'Sign up')
        );
        $requiredFields = RequiredFields::create(
            'TextField1',
            'TextField2',
            'TextField3',
            'ErrorField1',
            'ErrorField2',
            EmailField::class,
            'TextField3',
            'RightTitleField',
            CheckboxField::class,
            CheckboxSetField::class
        );

        $textAreaField->setColumns(7);
        $this->setMessage('warning message', 'warning');

        parent::__construct(
            $controller,
            $nameOfForm,
            $fields,
            $actions,
            $requiredFields
        );
    }
}
