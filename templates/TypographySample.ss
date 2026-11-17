<div style="max-width: 770px; margin: 100px auto 100px" class="typography">

<% if ShowFirstHeading %><h1>Formatting Test Page</h1><% end_if %>
<p>Main sections on this page:
    <a href="#typography">typography definitions</a>,
    <a href="#EditorCoverage">Silverstripe 6 editor checklist</a>,
    <a href="#WYSIWYG">how to set up the WYSIWYG editor</a>,
    and <a href="#TypographyTestForm_TestForm">form definitions</a>.
</p>

<h2 id="typography">Typography</h2>
<p>Sections in the typography include:</p>
<ul>
    <li><a href="#BasicStyles">Basic styles</a></li>
    <li><a href="#ParagraphsAndHeadings">Paragraphs and headings</a></li>
    <li><a href="#TextAlignment">Text alignment and indentation</a></li>
    <li><a href="#Links">Links</a></li>
    <li><a href="#ImagesInParagraphs">Images (all five alignments, with and without captions)</a></li>
    <li><a href="#InParagraphStyles">Styles within paragraphs (such as bold)</a></li>
    <li><a href="#Lists">Lists</a></li>
    <li><a href="#TereoMaori">Special characters</a></li>
    <li><a href="#Tables">Tables</a></li>
    <li><a href="#OtherFormats">Other formats (blockquote, address, pre, definition lists ...)</a></li>
    <li><a href="#Videos">Embedded media (all five alignments)</a></li>
    <li><a href="#ExtraHTML">Extra HTML that the CMS does not allow by default</a></li>
</ul>
<p>
    This page allows you to review typographic formatting for this website.
    This directly relates to the areas that are editable in the Content Management System.
    While the options and configurations are endless, most websites require the following minimum elements:
</p>
<ul>
    <li>heading one through to heading six where heading one is the most important one (e.g. page title) and heading six the <em>smallest</em> heading.</li>
    <li>paragraphs</li>
    <li>bulleted lists</li>
    <li>numbered lists</li>
    <li>blockquote (i.e. a longer quote)</li>
    <li>address</li>
    <li>horizontal line</li>
    <li>pre-formatted text (e.g. recipes, computer code)</li>
    <li>tables with table heading (e.g. will show the word "cost") and table data cells (e.g. will show "$14")</li>
    <li>images and whether they break up text, or that the text wraps around it to either the left or the right.</li>
    <li>bold, italics, underline, strikethrough, superscript and subscript - e.g. bold can actually be achieved by having a different colour rather than bold text</li>
    <li>links: new, visited, active (currently being clicked on) and hovered (mouse is current hovering over link) ones, to within site and to other sites</li>
</ul>
<p>
    Each of these elements can have the following (basic selection - there are lots more!) formatting rules applied:
</p>
<ul>
    <li>colour of font</li>
    <li>background-color</li>
    <li>padding and margins around elements</li>
    <li>borders (thickness, colours, styles)</li>
    <li>font-size</li>
    <li>line-height</li>
    <li>first letter / first word alternative format</li>
    <li>text-alignment (e.g. justified, left, right)</li>
    <li>all uppercase, all lowercase or capitalised (each word starts with a capital)</li>
    <li>italic, bold, underlined or struck through (looks like deleted text).</li>
</ul>
<p>
    Below is a variety of styles that you may use in your Silverstripe Content Management System.
    The styles should look the same (or similar) in your Content Management System as they do on this page.
    Special formats are interspersed with a paragraph as this is a more normal typographic setting than having heading after heading after heading.
    Each start of a new section will tell you what to look for.
    Make sure to also check for the <em>within paragraph</em> formatting.
</p>
<p>
    The markup on this page mirrors what the Silverstripe 6 editor actually saves
    (for example, the <em>underline</em> button saves <code>&lt;span style="text-decoration: underline;"&gt;</code>, not <code>&lt;u&gt;</code>),
    so style for both.
</p>
<p>
    At the bottom of this page, you will also find the most common form elements and their proposed formatting.
</p>
<p>
    It is important to remember that the page below only focusses on typography (writing) and not on the design of the page as a whole (e.g. where the menu goes, how wide the page is, etc...)
</p>

<div id="BasicStyles">
    <h2>Basic styles</h2>
    <h4>Toolbar buttons</h4>
    <ul>
        <li><strong>bold</strong> (toolbar: Bold &rarr; <code>&lt;strong&gt;</code>)</li>
        <li><em>italics</em> (toolbar: Italic &rarr; <code>&lt;em&gt;</code>)</li>
        <li><span style="text-decoration: underline;">underlined</span> (toolbar: Underline &rarr; <code>&lt;span style="text-decoration: underline;"&gt;</code>)</li>
    </ul>
    <h4>Allowed through <em>Source code</em> only (no toolbar button by default)</h4>
    <ul>
        <li><u>underlined</u> (<code>&lt;u&gt;</code>)</li>
        <li><strike>strikethrough</strike> (<code>&lt;strike&gt;</code> &mdash; the only strikethrough element the CMS allows by default)</li>
        <li><span style="text-decoration: line-through;">strikethrough</span> (<code>&lt;span style="text-decoration: line-through;"&gt;</code>)</li>
        <li>superscript: E = mc<sup>2</sup>, 1<sup>st</sup>, footnote<sup><a href="#footnote-1">[1]</a></sup></li>
        <li>subscript: H<sub>2</sub>O, CO<sub>2</sub></li>
        <li><cite>Citation: The Title of a Work</cite> (<code>&lt;cite&gt;</code>)</li>
        <li><b>bold</b> and <i>italics</i> (<code>&lt;b&gt;</code> / <code>&lt;i&gt;</code> &mdash; the CMS converts these to <code>&lt;strong&gt;</code> / <code>&lt;em&gt;</code>)</li>
    </ul>
    <h4>Links</h4>
    <ul>
        <li><a href="home">internal link</a></li>
        <li><a href="https://www.sunnysideup.co.nz">external link</a></li>
        <li><a href="/">visited link</a></li>
        <li><a href="$RandomLinkInternal">unvisited internal link</a></li>
        <li><a href="$RandomLinkExternal">unvisited external link</a></li>
        <li><a href="mailto:foo@bar.com">foo@bar.com</a></li>
    </ul>
    <p>See <a href="#Links">Links</a> for every link type the editor can make.</p>
</div>

<div id="ParagraphsAndHeadings">
    <h2>Paragraphs and headings</h2>
    <p>The <em>Blocks</em> drop-down offers: Paragraph, Heading 1 to Heading 6 and Preformatted.</p>

    <p>Vivamus egestas vulputate egestas. Aenean convallis mi eu ipsum commodo ultrices. Suspendisse tincidunt faucibus libero, id interdum enim interdum sed. Donec id nibh nunc. Sed vel quam a diam mollis porttitor. Pellentesque placerat pharetra augue, ut scelerisque elit rutrum eget. Nam dapibus, risus ut adipiscing blandit, quam massa dignissim elit, sed cursus est risus et diam. Integer quis consectetur magna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.</p>
    <p>Mauris faucibus sodales orci, a fermentum eros euismod id. Sed lacinia elementum risus vel ullamcorper. Fusce tincidunt eget augue quis eleifend. Pellentesque in vulputate ante. Aenean urna velit, mattis a diam sit amet, ultricies scelerisque tortor. Maecenas posuere dolor erat, et facilisis enim feugiat nec. Nam urna libero, tincidunt id blandit vitae, tempor quis augue.</p>
    <h1>heading 1: The quick brown fox jumps over the lazy dog</h1>
    <p>Editors can pick Heading 1 inside the content too, so it needs a style here as well as in the page title. Aliquam porta enim ut mollis rhoncus. Vivamus vulputate urna a nulla tincidunt dapibus. Pellentesque ac massa lectus.</p>
    <h2>heading 2: The quick brown fox jumps over the lazy dog</h2>
    <p>Praesent suscipit nisi sit amet felis facilisis, eget iaculis tellus viverra. Donec et commodo urna. Nulla facilisi. Nulla placerat hendrerit est, at mollis elit vehicula sed. Vestibulum convallis purus in diam gravida laoreet. Phasellus mattis vulputate augue, at semper nulla consequat at. Sed vehicula bibendum felis, eu euismod neque.</p>
    <h3>heading 3: The quick brown fox jumps over the lazy dog</h3>
    <p>In interdum consectetur urna, in ornare augue laoreet sit amet. Fusce ornare scelerisque mauris. Ut vel sapien vitae mi laoreet congue. Nullam blandit gravida nibh, ornare porta massa venenatis nec. Fusce at diam quis dolor egestas aliquam adipiscing a sapien.</p>
    <h4>heading 4: The quick brown fox jumps over the lazy dog</h4>
    <p>Aliquam porta enim ut mollis rhoncus. Vivamus vulputate urna a nulla tincidunt dapibus. Pellentesque ac massa lectus. Curabitur aliquam pellentesque magna non malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
    <h5>heading 5: The quick brown fox jumps over the lazy dog</h5>
    <p>Duis vitae massa et eros sodales adipiscing. Nam non ante pretium velit hendrerit sodales. Maecenas egestas semper placerat. Nullam blandit auctor orci et faucibus. Donec dictum sodales quam, id vestibulum ipsum malesuada a.</p>
    <h6>heading 6: The quick brown fox jumps over the lazy dog</h6>
    <p>Etiam egestas vitae arcu eu pulvinar. Suspendisse mollis mi rhoncus leo fermentum, non mollis eros blandit. Aliquam vehicula sed felis consectetur euismod. Aenean vel porttitor leo.</p>
    <h3>Headings straight after each other</h3>
    <h4>heading 4 directly under heading 3</h4>
    <h5>heading 5 directly under heading 4</h5>
    <p>Checks the spacing between consecutive headings. Donec at massa et ipsum porta dignissim eu quis mi.</p>
    <pre>Preformatted (from the Blocks drop-down):
    line 2 keeps its    spacing
    line 3</pre>
    <p>Paragraph after a preformatted block.</p>
    <p>A paragraph with a<br />
    line break (shift + enter) in it.</p>
</div>

<div id="TextAlignment">
    <h2>Text alignment and indentation</h2>
    <p>The alignment buttons add these classes to paragraphs, headings, list items and table cells.</p>
    <p class="text-left"><code>.text-left</code> &mdash; Mauris elementum mi vitae lorem aliquam in tempus justo sollicitudin. Quisque non lectus nunc, non congue arcu. Donec ac lectus eu urna elementum dapibus. Sed eu mauris ac enim ornare vulputate condimentum ut metus.</p>
    <p class="text-center"><code>.text-center</code> &mdash; Mauris elementum mi vitae lorem aliquam in tempus justo sollicitudin. Quisque non lectus nunc, non congue arcu. Donec ac lectus eu urna elementum dapibus. Sed eu mauris ac enim ornare vulputate condimentum ut metus.</p>
    <p class="text-right"><code>.text-right</code> &mdash; Mauris elementum mi vitae lorem aliquam in tempus justo sollicitudin. Quisque non lectus nunc, non congue arcu. Donec ac lectus eu urna elementum dapibus. Sed eu mauris ac enim ornare vulputate condimentum ut metus.</p>
    <p class="text-justify"><code>.text-justify</code> &mdash; Mauris elementum mi vitae lorem aliquam in tempus justo sollicitudin. Quisque non lectus nunc, non congue arcu. Donec ac lectus eu urna elementum dapibus. Sed eu mauris ac enim ornare vulputate condimentum ut metus. Mauris elementum mi vitae lorem aliquam in tempus justo sollicitudin. Quisque non lectus nunc, non congue arcu. Donec ac lectus eu urna elementum dapibus. Sed eu mauris ac enim ornare vulputate condimentum ut metus. Mauris elementum mi vitae lorem aliquam in tempus justo sollicitudin. Quisque non lectus nunc, non congue arcu. Donec ac lectus eu urna elementum dapibus. Sed eu mauris ac enim ornare vulputate condimentum ut metus.</p>
    <h3 class="text-center">Centred heading (<code>h3.text-center</code>)</h3>
    <h4 class="text-right">Right aligned heading (<code>h4.text-right</code>)</h4>
    <ul>
        <li class="text-left">list item <code>.text-left</code></li>
        <li class="text-center">list item <code>.text-center</code></li>
        <li class="text-right">list item <code>.text-right</code></li>
    </ul>
    <p>The <em>Indent</em> button adds inline padding to paragraphs (and nests list items, see <a href="#Lists">Lists</a>):</p>
    <p style="padding-left: 40px;">Indented once (<code>style="padding-left: 40px;"</code>) &mdash; Mauris elementum mi vitae lorem aliquam in tempus justo sollicitudin. Quisque non lectus nunc, non congue arcu. Donec ac lectus eu urna elementum dapibus. Sed eu mauris ac enim ornare vulputate condimentum ut metus.</p>
    <p style="padding-left: 80px;">Indented twice (<code>style="padding-left: 80px;"</code>) &mdash; Mauris elementum mi vitae lorem aliquam in tempus justo sollicitudin. Quisque non lectus nunc, non congue arcu. Donec ac lectus eu urna elementum dapibus. Sed eu mauris ac enim ornare vulputate condimentum ut metus.</p>
</div>

<div id="Links">
    <h2>Links</h2>
    <p>The <em>Insert link</em> menu offers these link types; this is how each one ends up on the front end:</p>
    <ul>
        <li><a href="/">Page on this site</a> (<code>[sitetree_link]</code>)</li>
        <li><a href="/#typography">Anchor on a page</a> (page link + <code>#anchor</code>)</li>
        <li><a href="#footnote-1">Anchor on this page</a></li>
        <li><a href="/assets/example-document.pdf">Download a file (PDF)</a> (<code>[file_link]</code>)</li>
        <li><a href="https://www.silverstripe.org">Link to external URL</a></li>
        <li><a href="https://www.silverstripe.org" target="_blank">Link to external URL &mdash; open in new window</a> (<code>target="_blank"</code>)</li>
        <li><a href="mailto:foo@bar.com?subject=Hello">Link to email address with subject</a></li>
        <li><a href="tel:+6491234567">Link to phone number: +64 9 123 4567</a></li>
        <li><a href="https://www.silverstripe.org" title="This is the link description">Link with a description (title attribute) &mdash; hover over me</a></li>
    </ul>
    <p>
        A link in the middle of a sentence: Lorem ipsum dolor sit amet, <a href="home">consectetur adipiscing</a> elit.
        A long link that should wrap: <a href="https://www.example.com/a/very/long/url/that/goes/on/and/on/and/on/to/test/wrapping/behaviour/of/links/in/narrow/columns">https://www.example.com/a/very/long/url/that/goes/on/and/on/and/on/to/test/wrapping/behaviour/of/links/in/narrow/columns</a>.
    </p>
    <p>
        <a id="footnote-1"></a>
        The <em>Anchor</em> button inserts an empty <code>&lt;a id="..."&gt;&lt;/a&gt;</code> like the one at the start of this paragraph &mdash; it should not be visible.
    </p>
</div>

<div id="ImagesInParagraphs">
    <h2>Images</h2>
    <p>
        All images are square. Set their size with this link: <br />
        <a href="$Link?imagewidth=xxx">$Link?imagewidth=xxx</a>.
        Currently they are <q>{$ImageWidth}px &times; {$ImageWidth}px.</q>
        The editor's default size presets are <em>Best fit</em> (600px wide) and <em>Original</em>, so try 600 as well as something small.
    </p>
    <p>
        The <em>Insert media</em> dialogue has five alignments:
        Left (<code>leftAlone</code>), Center (<code>center</code>), Right (<code>rightAlone</code>),
        Left wrap (<code>left</code>) and Right wrap (<code>right</code>).
        Each one can have a caption.
    </p>

    <h3>Without caption</h3>

    <h4>Left <small>(class <code>leftAlone</code>)</small></h4>
    <p>
        <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='{$ImageWidth}' height='{$ImageWidth}' viewBox='0 0 200 200'%3E%3Crect width='200' height='200' fill='%23ffcc00'/%3E%3Ctext x='100' y='86' fill='%23333333' font-family='sans-serif' font-size='18' text-anchor='middle'%3EleftAlone%3C/text%3E%3Ctext x='100' y='136' fill='%23333333' font-family='sans-serif' font-size='13' text-anchor='middle'%3E{$ImageWidth} x {$ImageWidth}px%3C/text%3E%3C/svg%3E" alt="placeholder image (Left)" width="{$ImageWidth}" height="{$ImageWidth}" class="leftAlone ss-htmleditorfield-file image" loading="lazy" />
         Cras ipsum ligula, porttitor sit amet posuere sed, fermentum a diam. Aenean varius lectus sit amet purus cursus malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam a sem nec mi gravida volutpat id non risus. Aenean elementum venenatis erat, a semper augue eleifend a. Integer faucibus purus vitae nisl vestibulum sit amet bibendum velit venenatis. Sed elit tortor, scelerisque sed bibendum ut, gravida dignissim ante. Phasellus sit amet sem ac dolor faucibus luctus. Quisque in nunc nec orci commodo sodales. Donec molestie viverra ligula, sit amet consequat velit placerat vel. Morbi sed justo augue, id mattis quam. Pellentesque blandit magna ut sem commodo vitae sodales sapien convallis. Donec tempor tellus et neque iaculis sodales. Sed viverra, leo nec molestie euismod, diam quam semper quam, vel lacinia nunc lacus id nisi.
        Etiam pulvinar arcu vel nibh bibendum ac consequat nunc pharetra. Donec dapibus justo eu nisl tempor auctor. Curabitur in nisl felis. Sed vehicula, lorem quis mollis vestibulum, erat tortor blandit mi, vestibulum molestie erat turpis id dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec facilisis nisi vel est vestibulum quis dapibus ante auctor. Fusce elementum, eros vitae luctus ornare, sem nibh egestas elit, et scelerisque dui nibh quis nunc. Sed facilisis ante vel nisi tristique a bibendum lorem scelerisque. Donec augue nibh, euismod consectetur suscipit ac, mollis et turpis. Proin vitae mi nibh. Vestibulum velit nisi, hendrerit sit amet sodales in, tempus sollicitudin felis.
        In in purus eget mauris fringilla placerat. Proin pellentesque fermentum dui. Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede. Proin ultrices sagittis metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin ultrices nulla id enim. Nullam mi. In ipsum arcu, sodales commodo, elementum at, euismod nec, felis. Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris. Aliquam et enim. Integer vel erat sit amet nulla feugiat scelerisque. Fusce ornare molestie mauris. Aliquam a leo quis eros mollis varius. Quisque egestas velit ac dui. Quisque eu purus vel risus tincidunt dictum. Curabitur sit amet turpis id leo vestibulum imperdiet. Suspendisse mollis ultrices nulla.
    </p>
    <h4>Center <small>(class <code>center</code>)</small></h4>
    <p>
        <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='{$ImageWidth}' height='{$ImageWidth}' viewBox='0 0 200 200'%3E%3Crect width='200' height='200' fill='%234a90d9'/%3E%3Ctext x='100' y='86' fill='%23ffffff' font-family='sans-serif' font-size='18' text-anchor='middle'%3Ecenter%3C/text%3E%3Ctext x='100' y='136' fill='%23ffffff' font-family='sans-serif' font-size='13' text-anchor='middle'%3E{$ImageWidth} x {$ImageWidth}px%3C/text%3E%3C/svg%3E" alt="placeholder image (Center)" width="{$ImageWidth}" height="{$ImageWidth}" class="center ss-htmleditorfield-file image" loading="lazy" />
         Cras ipsum ligula, porttitor sit amet posuere sed, fermentum a diam. Aenean varius lectus sit amet purus cursus malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam a sem nec mi gravida volutpat id non risus. Aenean elementum venenatis erat, a semper augue eleifend a. Integer faucibus purus vitae nisl vestibulum sit amet bibendum velit venenatis. Sed elit tortor, scelerisque sed bibendum ut, gravida dignissim ante. Phasellus sit amet sem ac dolor faucibus luctus. Quisque in nunc nec orci commodo sodales. Donec molestie viverra ligula, sit amet consequat velit placerat vel. Morbi sed justo augue, id mattis quam. Pellentesque blandit magna ut sem commodo vitae sodales sapien convallis. Donec tempor tellus et neque iaculis sodales. Sed viverra, leo nec molestie euismod, diam quam semper quam, vel lacinia nunc lacus id nisi.
        Etiam pulvinar arcu vel nibh bibendum ac consequat nunc pharetra. Donec dapibus justo eu nisl tempor auctor. Curabitur in nisl felis. Sed vehicula, lorem quis mollis vestibulum, erat tortor blandit mi, vestibulum molestie erat turpis id dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec facilisis nisi vel est vestibulum quis dapibus ante auctor. Fusce elementum, eros vitae luctus ornare, sem nibh egestas elit, et scelerisque dui nibh quis nunc. Sed facilisis ante vel nisi tristique a bibendum lorem scelerisque. Donec augue nibh, euismod consectetur suscipit ac, mollis et turpis. Proin vitae mi nibh. Vestibulum velit nisi, hendrerit sit amet sodales in, tempus sollicitudin felis.
        In in purus eget mauris fringilla placerat. Proin pellentesque fermentum dui. Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede. Proin ultrices sagittis metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin ultrices nulla id enim. Nullam mi. In ipsum arcu, sodales commodo, elementum at, euismod nec, felis. Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris. Aliquam et enim. Integer vel erat sit amet nulla feugiat scelerisque. Fusce ornare molestie mauris. Aliquam a leo quis eros mollis varius. Quisque egestas velit ac dui. Quisque eu purus vel risus tincidunt dictum. Curabitur sit amet turpis id leo vestibulum imperdiet. Suspendisse mollis ultrices nulla.
    </p>
    <h4>Right <small>(class <code>rightAlone</code>)</small></h4>
    <p>
        <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='{$ImageWidth}' height='{$ImageWidth}' viewBox='0 0 200 200'%3E%3Crect width='200' height='200' fill='%238e44ad'/%3E%3Ctext x='100' y='86' fill='%23ffffff' font-family='sans-serif' font-size='18' text-anchor='middle'%3ErightAlone%3C/text%3E%3Ctext x='100' y='136' fill='%23ffffff' font-family='sans-serif' font-size='13' text-anchor='middle'%3E{$ImageWidth} x {$ImageWidth}px%3C/text%3E%3C/svg%3E" alt="placeholder image (Right)" width="{$ImageWidth}" height="{$ImageWidth}" class="rightAlone ss-htmleditorfield-file image" loading="lazy" />
         Cras ipsum ligula, porttitor sit amet posuere sed, fermentum a diam. Aenean varius lectus sit amet purus cursus malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam a sem nec mi gravida volutpat id non risus. Aenean elementum venenatis erat, a semper augue eleifend a. Integer faucibus purus vitae nisl vestibulum sit amet bibendum velit venenatis. Sed elit tortor, scelerisque sed bibendum ut, gravida dignissim ante. Phasellus sit amet sem ac dolor faucibus luctus. Quisque in nunc nec orci commodo sodales. Donec molestie viverra ligula, sit amet consequat velit placerat vel. Morbi sed justo augue, id mattis quam. Pellentesque blandit magna ut sem commodo vitae sodales sapien convallis. Donec tempor tellus et neque iaculis sodales. Sed viverra, leo nec molestie euismod, diam quam semper quam, vel lacinia nunc lacus id nisi.
        Etiam pulvinar arcu vel nibh bibendum ac consequat nunc pharetra. Donec dapibus justo eu nisl tempor auctor. Curabitur in nisl felis. Sed vehicula, lorem quis mollis vestibulum, erat tortor blandit mi, vestibulum molestie erat turpis id dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec facilisis nisi vel est vestibulum quis dapibus ante auctor. Fusce elementum, eros vitae luctus ornare, sem nibh egestas elit, et scelerisque dui nibh quis nunc. Sed facilisis ante vel nisi tristique a bibendum lorem scelerisque. Donec augue nibh, euismod consectetur suscipit ac, mollis et turpis. Proin vitae mi nibh. Vestibulum velit nisi, hendrerit sit amet sodales in, tempus sollicitudin felis.
        In in purus eget mauris fringilla placerat. Proin pellentesque fermentum dui. Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede. Proin ultrices sagittis metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin ultrices nulla id enim. Nullam mi. In ipsum arcu, sodales commodo, elementum at, euismod nec, felis. Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris. Aliquam et enim. Integer vel erat sit amet nulla feugiat scelerisque. Fusce ornare molestie mauris. Aliquam a leo quis eros mollis varius. Quisque egestas velit ac dui. Quisque eu purus vel risus tincidunt dictum. Curabitur sit amet turpis id leo vestibulum imperdiet. Suspendisse mollis ultrices nulla.
    </p>
    <h4>Left wrap <small>(class <code>left</code>)</small></h4>
    <p>
        <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='{$ImageWidth}' height='{$ImageWidth}' viewBox='0 0 200 200'%3E%3Crect width='200' height='200' fill='%232e8b57'/%3E%3Ctext x='100' y='86' fill='%23ffffff' font-family='sans-serif' font-size='18' text-anchor='middle'%3Eleft%3C/text%3E%3Ctext x='100' y='136' fill='%23ffffff' font-family='sans-serif' font-size='13' text-anchor='middle'%3E{$ImageWidth} x {$ImageWidth}px%3C/text%3E%3C/svg%3E" alt="placeholder image (Left wrap)" width="{$ImageWidth}" height="{$ImageWidth}" class="left ss-htmleditorfield-file image" loading="lazy" />
         Cras ipsum ligula, porttitor sit amet posuere sed, fermentum a diam. Aenean varius lectus sit amet purus cursus malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam a sem nec mi gravida volutpat id non risus. Aenean elementum venenatis erat, a semper augue eleifend a. Integer faucibus purus vitae nisl vestibulum sit amet bibendum velit venenatis. Sed elit tortor, scelerisque sed bibendum ut, gravida dignissim ante. Phasellus sit amet sem ac dolor faucibus luctus. Quisque in nunc nec orci commodo sodales. Donec molestie viverra ligula, sit amet consequat velit placerat vel. Morbi sed justo augue, id mattis quam. Pellentesque blandit magna ut sem commodo vitae sodales sapien convallis. Donec tempor tellus et neque iaculis sodales. Sed viverra, leo nec molestie euismod, diam quam semper quam, vel lacinia nunc lacus id nisi.
        Etiam pulvinar arcu vel nibh bibendum ac consequat nunc pharetra. Donec dapibus justo eu nisl tempor auctor. Curabitur in nisl felis. Sed vehicula, lorem quis mollis vestibulum, erat tortor blandit mi, vestibulum molestie erat turpis id dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec facilisis nisi vel est vestibulum quis dapibus ante auctor. Fusce elementum, eros vitae luctus ornare, sem nibh egestas elit, et scelerisque dui nibh quis nunc. Sed facilisis ante vel nisi tristique a bibendum lorem scelerisque. Donec augue nibh, euismod consectetur suscipit ac, mollis et turpis. Proin vitae mi nibh. Vestibulum velit nisi, hendrerit sit amet sodales in, tempus sollicitudin felis.
        In in purus eget mauris fringilla placerat. Proin pellentesque fermentum dui. Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede. Proin ultrices sagittis metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin ultrices nulla id enim. Nullam mi. In ipsum arcu, sodales commodo, elementum at, euismod nec, felis. Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris. Aliquam et enim. Integer vel erat sit amet nulla feugiat scelerisque. Fusce ornare molestie mauris. Aliquam a leo quis eros mollis varius. Quisque egestas velit ac dui. Quisque eu purus vel risus tincidunt dictum. Curabitur sit amet turpis id leo vestibulum imperdiet. Suspendisse mollis ultrices nulla.
    </p>
    <h4>Right wrap <small>(class <code>right</code>)</small></h4>
    <p>
        <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='{$ImageWidth}' height='{$ImageWidth}' viewBox='0 0 200 200'%3E%3Crect width='200' height='200' fill='%23c0392b'/%3E%3Ctext x='100' y='86' fill='%23ffffff' font-family='sans-serif' font-size='18' text-anchor='middle'%3Eright%3C/text%3E%3Ctext x='100' y='136' fill='%23ffffff' font-family='sans-serif' font-size='13' text-anchor='middle'%3E{$ImageWidth} x {$ImageWidth}px%3C/text%3E%3C/svg%3E" alt="placeholder image (Right wrap)" width="{$ImageWidth}" height="{$ImageWidth}" class="right ss-htmleditorfield-file image" loading="lazy" />
         Cras ipsum ligula, porttitor sit amet posuere sed, fermentum a diam. Aenean varius lectus sit amet purus cursus malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam a sem nec mi gravida volutpat id non risus. Aenean elementum venenatis erat, a semper augue eleifend a. Integer faucibus purus vitae nisl vestibulum sit amet bibendum velit venenatis. Sed elit tortor, scelerisque sed bibendum ut, gravida dignissim ante. Phasellus sit amet sem ac dolor faucibus luctus. Quisque in nunc nec orci commodo sodales. Donec molestie viverra ligula, sit amet consequat velit placerat vel. Morbi sed justo augue, id mattis quam. Pellentesque blandit magna ut sem commodo vitae sodales sapien convallis. Donec tempor tellus et neque iaculis sodales. Sed viverra, leo nec molestie euismod, diam quam semper quam, vel lacinia nunc lacus id nisi.
        Etiam pulvinar arcu vel nibh bibendum ac consequat nunc pharetra. Donec dapibus justo eu nisl tempor auctor. Curabitur in nisl felis. Sed vehicula, lorem quis mollis vestibulum, erat tortor blandit mi, vestibulum molestie erat turpis id dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec facilisis nisi vel est vestibulum quis dapibus ante auctor. Fusce elementum, eros vitae luctus ornare, sem nibh egestas elit, et scelerisque dui nibh quis nunc. Sed facilisis ante vel nisi tristique a bibendum lorem scelerisque. Donec augue nibh, euismod consectetur suscipit ac, mollis et turpis. Proin vitae mi nibh. Vestibulum velit nisi, hendrerit sit amet sodales in, tempus sollicitudin felis.
        In in purus eget mauris fringilla placerat. Proin pellentesque fermentum dui. Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede. Proin ultrices sagittis metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin ultrices nulla id enim. Nullam mi. In ipsum arcu, sodales commodo, elementum at, euismod nec, felis. Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris. Aliquam et enim. Integer vel erat sit amet nulla feugiat scelerisque. Fusce ornare molestie mauris. Aliquam a leo quis eros mollis varius. Quisque egestas velit ac dui. Quisque eu purus vel risus tincidunt dictum. Curabitur sit amet turpis id leo vestibulum imperdiet. Suspendisse mollis ultrices nulla.
    </p>

    <h4>Linked image</h4>
    <p>
        <a href="home"><img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='{$ImageWidth}' height='{$ImageWidth}' viewBox='0 0 200 200'%3E%3Crect width='200' height='200' fill='%23ffcc00'/%3E%3Ctext x='100' y='86' fill='%23333333' font-family='sans-serif' font-size='18' text-anchor='middle'%3EleftAlone%3C/text%3E%3Ctext x='100' y='136' fill='%23333333' font-family='sans-serif' font-size='13' text-anchor='middle'%3E{$ImageWidth} x {$ImageWidth}px%3C/text%3E%3C/svg%3E" alt="placeholder image (Left)" width="{$ImageWidth}" height="{$ImageWidth}" class="leftAlone ss-htmleditorfield-file image" loading="lazy" /></a>
        Mauris elementum mi vitae lorem aliquam in tempus justo sollicitudin. Quisque non lectus nunc, non congue arcu. Donec ac lectus eu urna elementum dapibus. Sed eu mauris ac enim ornare vulputate condimentum ut metus.
    </p>

    <h3>With caption</h3>

    <h4>Left with caption <small>(class <code>leftAlone</code>)</small></h4>
    <div class="captionImage leftAlone" style="width: {$ImageWidth}px;">
        <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='{$ImageWidth}' height='{$ImageWidth}' viewBox='0 0 200 200'%3E%3Crect width='200' height='200' fill='%23ffcc00'/%3E%3Ctext x='100' y='86' fill='%23333333' font-family='sans-serif' font-size='18' text-anchor='middle'%3EleftAlone%3C/text%3E%3Ctext x='100' y='110' fill='%23333333' font-family='sans-serif' font-size='14' text-anchor='middle'%3E+ caption%3C/text%3E%3Ctext x='100' y='136' fill='%23333333' font-family='sans-serif' font-size='13' text-anchor='middle'%3E{$ImageWidth} x {$ImageWidth}px%3C/text%3E%3C/svg%3E" alt="placeholder image (Left)" width="{$ImageWidth}" height="{$ImageWidth}" class="leftAlone ss-htmleditorfield-file image" loading="lazy" />
        <p class="caption leftAlone">Left (leftAlone) with caption</p>
    </div>
    <p>
        Cras ipsum ligula, porttitor sit amet posuere sed, fermentum a diam. Aenean varius lectus sit amet purus cursus malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam a sem nec mi gravida volutpat id non risus. Aenean elementum venenatis erat, a semper augue eleifend a. Integer faucibus purus vitae nisl vestibulum sit amet bibendum velit venenatis. Sed elit tortor, scelerisque sed bibendum ut, gravida dignissim ante. Phasellus sit amet sem ac dolor faucibus luctus. Quisque in nunc nec orci commodo sodales. Donec molestie viverra ligula, sit amet consequat velit placerat vel. Morbi sed justo augue, id mattis quam. Pellentesque blandit magna ut sem commodo vitae sodales sapien convallis. Donec tempor tellus et neque iaculis sodales. Sed viverra, leo nec molestie euismod, diam quam semper quam, vel lacinia nunc lacus id nisi.
        Etiam pulvinar arcu vel nibh bibendum ac consequat nunc pharetra. Donec dapibus justo eu nisl tempor auctor. Curabitur in nisl felis. Sed vehicula, lorem quis mollis vestibulum, erat tortor blandit mi, vestibulum molestie erat turpis id dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec facilisis nisi vel est vestibulum quis dapibus ante auctor. Fusce elementum, eros vitae luctus ornare, sem nibh egestas elit, et scelerisque dui nibh quis nunc. Sed facilisis ante vel nisi tristique a bibendum lorem scelerisque. Donec augue nibh, euismod consectetur suscipit ac, mollis et turpis. Proin vitae mi nibh. Vestibulum velit nisi, hendrerit sit amet sodales in, tempus sollicitudin felis.
        In in purus eget mauris fringilla placerat. Proin pellentesque fermentum dui. Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede. Proin ultrices sagittis metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin ultrices nulla id enim. Nullam mi. In ipsum arcu, sodales commodo, elementum at, euismod nec, felis. Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris. Aliquam et enim. Integer vel erat sit amet nulla feugiat scelerisque. Fusce ornare molestie mauris. Aliquam a leo quis eros mollis varius. Quisque egestas velit ac dui. Quisque eu purus vel risus tincidunt dictum. Curabitur sit amet turpis id leo vestibulum imperdiet. Suspendisse mollis ultrices nulla.
    </p>
    <h4>Center with caption <small>(class <code>center</code>)</small></h4>
    <div class="captionImage center" style="width: {$ImageWidth}px;">
        <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='{$ImageWidth}' height='{$ImageWidth}' viewBox='0 0 200 200'%3E%3Crect width='200' height='200' fill='%234a90d9'/%3E%3Ctext x='100' y='86' fill='%23ffffff' font-family='sans-serif' font-size='18' text-anchor='middle'%3Ecenter%3C/text%3E%3Ctext x='100' y='110' fill='%23ffffff' font-family='sans-serif' font-size='14' text-anchor='middle'%3E+ caption%3C/text%3E%3Ctext x='100' y='136' fill='%23ffffff' font-family='sans-serif' font-size='13' text-anchor='middle'%3E{$ImageWidth} x {$ImageWidth}px%3C/text%3E%3C/svg%3E" alt="placeholder image (Center)" width="{$ImageWidth}" height="{$ImageWidth}" class="center ss-htmleditorfield-file image" loading="lazy" />
        <p class="caption center">Center (center) with caption</p>
    </div>
    <p>
        Cras ipsum ligula, porttitor sit amet posuere sed, fermentum a diam. Aenean varius lectus sit amet purus cursus malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam a sem nec mi gravida volutpat id non risus. Aenean elementum venenatis erat, a semper augue eleifend a. Integer faucibus purus vitae nisl vestibulum sit amet bibendum velit venenatis. Sed elit tortor, scelerisque sed bibendum ut, gravida dignissim ante. Phasellus sit amet sem ac dolor faucibus luctus. Quisque in nunc nec orci commodo sodales. Donec molestie viverra ligula, sit amet consequat velit placerat vel. Morbi sed justo augue, id mattis quam. Pellentesque blandit magna ut sem commodo vitae sodales sapien convallis. Donec tempor tellus et neque iaculis sodales. Sed viverra, leo nec molestie euismod, diam quam semper quam, vel lacinia nunc lacus id nisi.
        Etiam pulvinar arcu vel nibh bibendum ac consequat nunc pharetra. Donec dapibus justo eu nisl tempor auctor. Curabitur in nisl felis. Sed vehicula, lorem quis mollis vestibulum, erat tortor blandit mi, vestibulum molestie erat turpis id dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec facilisis nisi vel est vestibulum quis dapibus ante auctor. Fusce elementum, eros vitae luctus ornare, sem nibh egestas elit, et scelerisque dui nibh quis nunc. Sed facilisis ante vel nisi tristique a bibendum lorem scelerisque. Donec augue nibh, euismod consectetur suscipit ac, mollis et turpis. Proin vitae mi nibh. Vestibulum velit nisi, hendrerit sit amet sodales in, tempus sollicitudin felis.
        In in purus eget mauris fringilla placerat. Proin pellentesque fermentum dui. Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede. Proin ultrices sagittis metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin ultrices nulla id enim. Nullam mi. In ipsum arcu, sodales commodo, elementum at, euismod nec, felis. Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris. Aliquam et enim. Integer vel erat sit amet nulla feugiat scelerisque. Fusce ornare molestie mauris. Aliquam a leo quis eros mollis varius. Quisque egestas velit ac dui. Quisque eu purus vel risus tincidunt dictum. Curabitur sit amet turpis id leo vestibulum imperdiet. Suspendisse mollis ultrices nulla.
    </p>
    <h4>Right with caption <small>(class <code>rightAlone</code>)</small></h4>
    <div class="captionImage rightAlone" style="width: {$ImageWidth}px;">
        <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='{$ImageWidth}' height='{$ImageWidth}' viewBox='0 0 200 200'%3E%3Crect width='200' height='200' fill='%238e44ad'/%3E%3Ctext x='100' y='86' fill='%23ffffff' font-family='sans-serif' font-size='18' text-anchor='middle'%3ErightAlone%3C/text%3E%3Ctext x='100' y='110' fill='%23ffffff' font-family='sans-serif' font-size='14' text-anchor='middle'%3E+ caption%3C/text%3E%3Ctext x='100' y='136' fill='%23ffffff' font-family='sans-serif' font-size='13' text-anchor='middle'%3E{$ImageWidth} x {$ImageWidth}px%3C/text%3E%3C/svg%3E" alt="placeholder image (Right)" width="{$ImageWidth}" height="{$ImageWidth}" class="rightAlone ss-htmleditorfield-file image" loading="lazy" />
        <p class="caption rightAlone">Right (rightAlone) with caption</p>
    </div>
    <p>
        Cras ipsum ligula, porttitor sit amet posuere sed, fermentum a diam. Aenean varius lectus sit amet purus cursus malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam a sem nec mi gravida volutpat id non risus. Aenean elementum venenatis erat, a semper augue eleifend a. Integer faucibus purus vitae nisl vestibulum sit amet bibendum velit venenatis. Sed elit tortor, scelerisque sed bibendum ut, gravida dignissim ante. Phasellus sit amet sem ac dolor faucibus luctus. Quisque in nunc nec orci commodo sodales. Donec molestie viverra ligula, sit amet consequat velit placerat vel. Morbi sed justo augue, id mattis quam. Pellentesque blandit magna ut sem commodo vitae sodales sapien convallis. Donec tempor tellus et neque iaculis sodales. Sed viverra, leo nec molestie euismod, diam quam semper quam, vel lacinia nunc lacus id nisi.
        Etiam pulvinar arcu vel nibh bibendum ac consequat nunc pharetra. Donec dapibus justo eu nisl tempor auctor. Curabitur in nisl felis. Sed vehicula, lorem quis mollis vestibulum, erat tortor blandit mi, vestibulum molestie erat turpis id dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec facilisis nisi vel est vestibulum quis dapibus ante auctor. Fusce elementum, eros vitae luctus ornare, sem nibh egestas elit, et scelerisque dui nibh quis nunc. Sed facilisis ante vel nisi tristique a bibendum lorem scelerisque. Donec augue nibh, euismod consectetur suscipit ac, mollis et turpis. Proin vitae mi nibh. Vestibulum velit nisi, hendrerit sit amet sodales in, tempus sollicitudin felis.
        In in purus eget mauris fringilla placerat. Proin pellentesque fermentum dui. Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede. Proin ultrices sagittis metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin ultrices nulla id enim. Nullam mi. In ipsum arcu, sodales commodo, elementum at, euismod nec, felis. Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris. Aliquam et enim. Integer vel erat sit amet nulla feugiat scelerisque. Fusce ornare molestie mauris. Aliquam a leo quis eros mollis varius. Quisque egestas velit ac dui. Quisque eu purus vel risus tincidunt dictum. Curabitur sit amet turpis id leo vestibulum imperdiet. Suspendisse mollis ultrices nulla.
    </p>
    <h4>Left wrap with caption <small>(class <code>left</code>)</small></h4>
    <div class="captionImage left" style="width: {$ImageWidth}px;">
        <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='{$ImageWidth}' height='{$ImageWidth}' viewBox='0 0 200 200'%3E%3Crect width='200' height='200' fill='%232e8b57'/%3E%3Ctext x='100' y='86' fill='%23ffffff' font-family='sans-serif' font-size='18' text-anchor='middle'%3Eleft%3C/text%3E%3Ctext x='100' y='110' fill='%23ffffff' font-family='sans-serif' font-size='14' text-anchor='middle'%3E+ caption%3C/text%3E%3Ctext x='100' y='136' fill='%23ffffff' font-family='sans-serif' font-size='13' text-anchor='middle'%3E{$ImageWidth} x {$ImageWidth}px%3C/text%3E%3C/svg%3E" alt="placeholder image (Left wrap)" width="{$ImageWidth}" height="{$ImageWidth}" class="left ss-htmleditorfield-file image" loading="lazy" />
        <p class="caption left">Left wrap (left) with caption</p>
    </div>
    <p>
        Cras ipsum ligula, porttitor sit amet posuere sed, fermentum a diam. Aenean varius lectus sit amet purus cursus malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam a sem nec mi gravida volutpat id non risus. Aenean elementum venenatis erat, a semper augue eleifend a. Integer faucibus purus vitae nisl vestibulum sit amet bibendum velit venenatis. Sed elit tortor, scelerisque sed bibendum ut, gravida dignissim ante. Phasellus sit amet sem ac dolor faucibus luctus. Quisque in nunc nec orci commodo sodales. Donec molestie viverra ligula, sit amet consequat velit placerat vel. Morbi sed justo augue, id mattis quam. Pellentesque blandit magna ut sem commodo vitae sodales sapien convallis. Donec tempor tellus et neque iaculis sodales. Sed viverra, leo nec molestie euismod, diam quam semper quam, vel lacinia nunc lacus id nisi.
        Etiam pulvinar arcu vel nibh bibendum ac consequat nunc pharetra. Donec dapibus justo eu nisl tempor auctor. Curabitur in nisl felis. Sed vehicula, lorem quis mollis vestibulum, erat tortor blandit mi, vestibulum molestie erat turpis id dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec facilisis nisi vel est vestibulum quis dapibus ante auctor. Fusce elementum, eros vitae luctus ornare, sem nibh egestas elit, et scelerisque dui nibh quis nunc. Sed facilisis ante vel nisi tristique a bibendum lorem scelerisque. Donec augue nibh, euismod consectetur suscipit ac, mollis et turpis. Proin vitae mi nibh. Vestibulum velit nisi, hendrerit sit amet sodales in, tempus sollicitudin felis.
        In in purus eget mauris fringilla placerat. Proin pellentesque fermentum dui. Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede. Proin ultrices sagittis metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin ultrices nulla id enim. Nullam mi. In ipsum arcu, sodales commodo, elementum at, euismod nec, felis. Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris. Aliquam et enim. Integer vel erat sit amet nulla feugiat scelerisque. Fusce ornare molestie mauris. Aliquam a leo quis eros mollis varius. Quisque egestas velit ac dui. Quisque eu purus vel risus tincidunt dictum. Curabitur sit amet turpis id leo vestibulum imperdiet. Suspendisse mollis ultrices nulla.
    </p>
    <h4>Right wrap with caption <small>(class <code>right</code>)</small></h4>
    <div class="captionImage right" style="width: {$ImageWidth}px;">
        <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='{$ImageWidth}' height='{$ImageWidth}' viewBox='0 0 200 200'%3E%3Crect width='200' height='200' fill='%23c0392b'/%3E%3Ctext x='100' y='86' fill='%23ffffff' font-family='sans-serif' font-size='18' text-anchor='middle'%3Eright%3C/text%3E%3Ctext x='100' y='110' fill='%23ffffff' font-family='sans-serif' font-size='14' text-anchor='middle'%3E+ caption%3C/text%3E%3Ctext x='100' y='136' fill='%23ffffff' font-family='sans-serif' font-size='13' text-anchor='middle'%3E{$ImageWidth} x {$ImageWidth}px%3C/text%3E%3C/svg%3E" alt="placeholder image (Right wrap)" width="{$ImageWidth}" height="{$ImageWidth}" class="right ss-htmleditorfield-file image" loading="lazy" />
        <p class="caption right">Right wrap (right) with caption</p>
    </div>
    <p>
        Cras ipsum ligula, porttitor sit amet posuere sed, fermentum a diam. Aenean varius lectus sit amet purus cursus malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam a sem nec mi gravida volutpat id non risus. Aenean elementum venenatis erat, a semper augue eleifend a. Integer faucibus purus vitae nisl vestibulum sit amet bibendum velit venenatis. Sed elit tortor, scelerisque sed bibendum ut, gravida dignissim ante. Phasellus sit amet sem ac dolor faucibus luctus. Quisque in nunc nec orci commodo sodales. Donec molestie viverra ligula, sit amet consequat velit placerat vel. Morbi sed justo augue, id mattis quam. Pellentesque blandit magna ut sem commodo vitae sodales sapien convallis. Donec tempor tellus et neque iaculis sodales. Sed viverra, leo nec molestie euismod, diam quam semper quam, vel lacinia nunc lacus id nisi.
        Etiam pulvinar arcu vel nibh bibendum ac consequat nunc pharetra. Donec dapibus justo eu nisl tempor auctor. Curabitur in nisl felis. Sed vehicula, lorem quis mollis vestibulum, erat tortor blandit mi, vestibulum molestie erat turpis id dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec facilisis nisi vel est vestibulum quis dapibus ante auctor. Fusce elementum, eros vitae luctus ornare, sem nibh egestas elit, et scelerisque dui nibh quis nunc. Sed facilisis ante vel nisi tristique a bibendum lorem scelerisque. Donec augue nibh, euismod consectetur suscipit ac, mollis et turpis. Proin vitae mi nibh. Vestibulum velit nisi, hendrerit sit amet sodales in, tempus sollicitudin felis.
        In in purus eget mauris fringilla placerat. Proin pellentesque fermentum dui. Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede. Proin ultrices sagittis metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin ultrices nulla id enim. Nullam mi. In ipsum arcu, sodales commodo, elementum at, euismod nec, felis. Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris. Aliquam et enim. Integer vel erat sit amet nulla feugiat scelerisque. Fusce ornare molestie mauris. Aliquam a leo quis eros mollis varius. Quisque egestas velit ac dui. Quisque eu purus vel risus tincidunt dictum. Curabitur sit amet turpis id leo vestibulum imperdiet. Suspendisse mollis ultrices nulla.
    </p>
</div>


<div id="InParagraphStyles">
    <h2>Styles within paragraphs</h2>

    <p>
        This is an example of a couple of left-align paragraphs with <strong>bold</strong>, <span style="text-decoration: underline;">underlined</span>, <strike>strikethrough</strike>, <em>italics</em>, super<sup>script</sup> and sub<sub>script</sub> in it.
        It also contains some inline formatting styles (such as bold and italics - see below) Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
        justo quam fermentum ligula, vel hendrerit est sem a orci.
        porttitor nec, fringilla et, massa.
        Integer turpis.
        Etiam sed dolor.
        Aenean non tellus.
        Fusce cursus ornare tortor.
        Nullam risus.
        Suspendisse quam.
        Donec varius semper ipsum.
        Morbi iaculis dolor eget elit.
        Cras velit dui, rhoncus ut, placerat non, porta a, neque.
        Morbi luctus eros ac mauris.
        Cras sed quam.
        Etiam sed quam sit amet nisl viverra iaculis.
        Etiam mattis, est eu ornare varius, dui ligula mattis erat, in condimentum orci turpis et neque.
        Integer odio sapien, pulvinar quis, consequat a, pretium at, tortor.
        <em>italicized</em> Nunc mattis blandit erat.
        <span style="text-decoration: underline;">Underline</span> Phasellus auctor,
        <strong>bold</strong>, Donec.
        <strike>Struck through</strike> Aliquam erat volutpat.
        <strong><em>bold and italic</em></strong> Nunc pulvinar congue arcu.
        <a href="home"><strong>bold link</strong></a> and <a href="home"><em>italic link</em></a>.
        Footnote reference<sup>1</sup> and x<sup>2</sup> + y<sub>i</sub> within a line of text (check the line height does not jump).
        <cite>A cited title</cite> in running text.
        Aliquam a leo quis eros mollis varius.
        Quisque egestas velit ac dui.
        Quisque eu purus vel risus tincidunt dictum.
        Curabitur sit amet turpis id leo vestibulum imperdiet.
        Suspendisse mollis ultrices nulla.
        Donec at sapien eget turpis dictum tempus.
        Nulla rutrum, leo nec ornare rhoncus, augue neque venenatis urna, sit amet consequat leo nisl ut erat.
        Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean vitae nunc sed magna accumsan consectetuer.
        Vestibulum volutpat.
    </p>
</div>


<div id="Lists">
    <h2>Lists</h2>

    <p>
        Below is an unordered (bulleted) list
    </p>
    <ul>
        <li>
        Cras luctus fringilla lorem.
        Donec scelerisque augue non orci.
        </li>
        <li>
        Phasellus felis nunc, mollis nec, laoreet a, facilisis a, dui.
        Vivamus venenatis malesuada tortor.
        Curabitur aliquam sapien ac risus.
        Integer elementum.
        Vestibulum ornare felis sed quam.
        Donec tempor scelerisque nisi.
        Nulla facilisi.
        Donec porttitor.
        Morbi et sapien.
        </li>
        <li>
        In feugiat consectetuer lectus.
        Cras lacinia elit nec libero.
        </li>
        <li>
        Sed id ante in nisi faucibus tristique.
        Suspendisse laoreet.
        </li>
    </ul>
    <p>
        Below is an unordered (bulleted) list within a list (made with the <em>Indent</em> button) ...
    </p>
    <ul>
        <li>
            Cras luctus fringilla lorem.
            Donec scelerisque augue non orci.
            <ul>
                <li>
                    Cras luctus fringilla lorem.
                    Donec scelerisque augue non orci.
                </li>
                <li>
                    Phasellus felis nunc, mollis nec, laoreet a, facilisis a, dui.
                    Vivamus venenatis malesuada tortor.
                    Curabitur aliquam sapien ac risus.
                    <ul>
                        <li>
                            Cras luctus fringilla lorem.
                            Donec scelerisque augue non orci.
                        </li>
                        <li>
                            Sed id ante in nisi faucibus tristique.
                            Suspendisse laoreet.
                            <ul>
                                <li>Donec scelerisque augue non orci.</li>
                                <li>Donec porttitor. Morbi et sapien.</li>
                                <li>Cras lacinia elit nec libero.</li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>
                    In feugiat consectetuer lectus.
                    Cras lacinia elit nec libero.
                </li>
            </ul>
        </li>
        <li>
            Phasellus felis nunc, mollis nec, laoreet a, facilisis a, dui.
            Vivamus venenatis malesuada tortor.
        </li>
        <li>
            In feugiat consectetuer lectus.
            Cras lacinia elit nec libero.
        </li>
    </ul>

    <p>
        Below is an ordered (numbered) list:
    </p>
    <ol>
        <li>
            Cras luctus fringilla lorem.
            Donec scelerisque augue non orci.
        </li>
        <li>
            Phasellus felis nunc, mollis nec, laoreet a, facilisis a, dui.
            Vivamus venenatis malesuada tortor.
            Curabitur aliquam sapien ac risus.
            Integer elementum.
            Vestibulum ornare felis sed quam.
        </li>
        <li>
            In feugiat consectetuer lectus.
            Cras lacinia elit nec libero.
            <ol>
                <li>
                    In feugiat consectetuer lectus.
                    Cras lacinia elit nec libero.
                </li>
                <li>
                    In consectetuer lectus.
                    Cras nec libero.
                    <ol>
                        <li>In feugiat consectetuer lectus.</li>
                        <li>Cras lacinia elit nec libero.</li>
                        <li>In feugiat consectetuer lectus.</li>
                    </ol>
                </li>
            </ol>
        </li>
        <li>
            Sed id ante in nisi faucibus tristique.
            Suspendisse laoreet.
        </li>
        <li>Item 5</li>
        <li>Item 6</li>
        <li>Item 7</li>
        <li>Item 8</li>
        <li>Item 9</li>
        <li>Item 10 (checks two-digit numbers line up)</li>
    </ol>
    <p>
        A numbered list with a bulleted list inside it:
    </p>
    <ol>
        <li>First step
            <ul>
                <li>a detail</li>
                <li>another detail</li>
            </ul>
        </li>
        <li>Second step</li>
    </ol>
    <p>
        Paragraph underneath a list ...
    </p>
</div>


<div id="TereoMaori">
    <h4>testing extended character sets using Te Reo Māori</h4>
    <p>
            The additional characters for Te Reo Maori (the Māori Language) are:  ā, ē, ī, ō, ū, Ā, Ē, Ī, Ō and Ū.
            <br />ā: code (&amp;#257;) shows as: &#257;, Ā: code (&amp;#256;) shows as: &#256;
            <br />ē: code (&amp;#275;) shows as: &#275;, Ē: code (&amp;#274;) shows as: &#274;
            <br />ī: code (&amp;#299;) shows as: &#299;, Ī: code (&amp;#298;) shows as: &#298;
            <br />ō: code (&amp;#333;) shows as: &#333;, Ō: code (&amp;#332;) shows as: &#332;
            <br />ū: code (&amp;#363;) shows as: &#363;, Ū: code (&amp;#362;) shows as: &#362;
    </p>
    <h5>trying the same in bold</h5>
    <p>
        <strong>
            The additional characters for Te Reo Maori (the Māori Language) are:  ā, ē, ī, ō, ū, Ā, Ē, Ī, Ō and Ū.
            <br />ā: code (&amp;#257;) shows as: &#257;, Ā: code (&amp;#256;) shows as: &#256;
            <br />ē: code (&amp;#275;) shows as: &#275;, Ē: code (&amp;#274;) shows as: &#274;
            <br />ī: code (&amp;#299;) shows as: &#299;, Ī: code (&amp;#298;) shows as: &#298;
            <br />ō: code (&amp;#333;) shows as: &#333;, Ō: code (&amp;#332;) shows as: &#332;
            <br />ū: code (&amp;#363;) shows as: &#363;, Ū: code (&amp;#362;) shows as: &#362;
        </strong>
    </p>
    <h5>and in italics</h5>
    <p>
        <em>
            The additional characters for Te Reo Maori (the Māori Language) are:  ā, ē, ī, ō, ū, Ā, Ē, Ī, Ō and Ū.
            <br />ā: code (&amp;#257;) shows as: &#257;, Ā: code (&amp;#256;) shows as: &#256;
            <br />ē: code (&amp;#275;) shows as: &#275;, Ē: code (&amp;#274;) shows as: &#274;
            <br />ī: code (&amp;#299;) shows as: &#299;, Ī: code (&amp;#298;) shows as: &#298;
            <br />ō: code (&amp;#333;) shows as: &#333;, Ō: code (&amp;#332;) shows as: &#332;
            <br />ū: code (&amp;#363;) shows as: &#363;, Ū: code (&amp;#362;) shows as: &#362;
        </em>
    </p>
    <h5>and in italics + bold</h5>
    <p>
        <strong><em>
            The additional characters for Te Reo Maori (the Māori Language) are:  ā, ē, ī, ō, ū, Ā, Ē, Ī, Ō and Ū.
            <br />ā: code (&amp;#257;) shows as: &#257;, Ā: code (&amp;#256;) shows as: &#256;
            <br />ē: code (&amp;#275;) shows as: &#275;, Ē: code (&amp;#274;) shows as: &#274;
            <br />ī: code (&amp;#299;) shows as: &#299;, Ī: code (&amp;#298;) shows as: &#298;
            <br />ō: code (&amp;#333;) shows as: &#333;, Ō: code (&amp;#332;) shows as: &#332;
            <br />ū: code (&amp;#363;) shows as: &#363;, Ū: code (&amp;#362;) shows as: &#362;
        </em></strong>
    </p>
</div>


<div id="Tables">
    <h2>Tables</h2>
    <h4>A fully marked-up table (caption, thead, tfoot, row headings)</h4>
    <table>
        <caption>Table caption</caption>
        <thead>
            <tr>
                <th scope="col">table col heading 1 + row heading 0</th>
                <th scope="col">table heading 1</th>
                <th scope="col">table heading 2</th>
                <th scope="col">table heading 3</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <td colspan="4">footer cell</td>
            </tr>
        </tfoot>
        <tbody>
            <tr>
                <th scope="row">table row heading 1</th>
                <td>cell 1</td>
                <td><p>paragraph in a cell</p></td>
                <td><ul><li>list item in a cell</li><li>list item in a cell</li><li>list item in a cell</li></ul></td>
            </tr>
            <tr>
                <th scope="row">table row heading 2</th>
                <td>cell 1</td>
                <td><p>paragraph in a cell Sed augue purus, sagittis et, bibendum quis, tincidunt ut, risus.</p></td>
                <td>cell 3</td>
            </tr>
            <tr>
                <th scope="row">table row heading 3</th>
                <td rowspan="2">cell spanning two rows</td>
                <td colspan="2">cell spanning two columns</td>
            </tr>
            <tr>
                <th scope="row">table row heading 4</th>
                <td>$14.00</td>
                <td>$1,234.56</td>
            </tr>
        </tbody>
    </table>

    <h4>A table as the editor's <em>Table</em> button makes it</h4>
    <p>Inline width, a header row as <code>&lt;thead&gt;</code> with <code>&lt;td&gt;</code> cells, and the alignment buttons used on cells.</p>
    <table style="border-collapse: collapse; width: 100%;">
        <thead>
            <tr>
                <td style="width: 33.33%;">Header cell (td in thead)</td>
                <td style="width: 33.33%;">Cost</td>
                <td style="width: 33.33%;">Notes</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="text-left">.text-left</td>
                <td class="text-right">$14</td>
                <td class="text-center">.text-center</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="text-right">$140</td>
                <td class="text-justify">.text-justify Mauris elementum mi vitae lorem aliquam in tempus justo sollicitudin. Quisque non lectus nunc, non congue arcu. Donec ac lectus eu urna elementum dapibus. Sed eu mauris ac enim ornare vulputate condimentum ut metus.</td>
            </tr>
        </tbody>
    </table>

    <h4>Table aligned with the alignment buttons (<code>table.center</code>, 50% wide)</h4>
    <table class="center" style="border-collapse: collapse; width: 50%;">
        <tbody>
            <tr><td>cell 1</td><td>cell 2</td></tr>
            <tr><td>cell 3</td><td>cell 4</td></tr>
        </tbody>
    </table>
    <p>Paragraph after a table.</p>
</div>

<div id="OtherFormats">
    <h2>Other formats</h2>
    <p>These elements are allowed by the editor but have no toolbar button &mdash; editors add them with <em>Source code</em>.</p>

    <h5>example of heading 5 - other formats</h5>
    <p>
        Here are some examples of other formats.
        Firstly, here is the address format (you will have to add linebreaks):
    </p>
    <address>
        The Addressee
        <br /> PO Box 1234
        <br /> Postal Town 5555
        <br /> New Zealand / Aotearoa
    </address>
    <pre>Here is an example of the pre-formatted tag.  This is used for things like computer code and recipes.
A second line that is quite long so that we can see what happens when a pre-formatted line is wider than the column it sits in, which happens a lot with code.</pre>
    <p>
        Donec mollis, libero et porttitor imperdiet, est lorem pulvinar libero, id commodo quam mi vitae elit.
        Quisque ac odio id ante semper tincidunt.
        Quisque ultrices eros egestas augue.
        Sed augue purus, sagittis et, bibendum quis, tincidunt ut, risus.
    </p>
    <h5>block quote below (for a larger quote)...</h5>
    <blockquote>
        <p>
            Ut vulputate ante.
            Maecenas nec est.
            Nullam id leo in sapien commodo hendrerit.
            Nam tincidunt augue quis neque.
            Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
            Nulla lobortis. In ante nunc, consequat non, placerat vel, auctor ac, magna.
        </p>
        <p>
            A second paragraph in the same blockquote.
            Integer fringilla, metus in adipiscing venenatis, nisi metus scelerisque magna, id fringilla dolor diam ac ligula.
        </p>
        <p><cite>&mdash; Name of the person quoted</cite></p>
    </blockquote>
    <h5>definition list</h5>
    <dl>
        <dt>Term one</dt>
        <dd>Definition of term one. Nulla consequat nunc id sem.</dd>
        <dt>Term two</dt>
        <dd>Definition of term two.</dd>
        <dd>A second definition of term two.</dd>
    </dl>
    <h5>a div with a class (<code>div.left</code>, as the alignment buttons do)</h5>
    <div class="left" style="width: 40%;">
        <p>Floated div. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.</p>
    </div>
    <p>Cras ipsum ligula, porttitor sit amet posuere sed, fermentum a diam. Aenean varius lectus sit amet purus cursus malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam a sem nec mi gravida volutpat id non risus. Aenean elementum venenatis erat, a semper augue eleifend a. Integer faucibus purus vitae nisl vestibulum sit amet bibendum velit venenatis. Sed elit tortor, scelerisque sed bibendum ut, gravida dignissim ante. Phasellus sit amet sem ac dolor faucibus luctus. Quisque in nunc nec orci commodo sodales. Donec molestie viverra ligula, sit amet consequat velit placerat vel. Morbi sed justo augue, id mattis quam. Pellentesque blandit magna ut sem commodo vitae sodales sapien convallis. Donec tempor tellus et neque iaculis sodales. Sed viverra, leo nec molestie euismod, diam quam semper quam, vel lacinia nunc lacus id nisi.
        Etiam pulvinar arcu vel nibh bibendum ac consequat nunc pharetra. Donec dapibus justo eu nisl tempor auctor. Curabitur in nisl felis. Sed vehicula, lorem quis mollis vestibulum, erat tortor blandit mi, vestibulum molestie erat turpis id dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec facilisis nisi vel est vestibulum quis dapibus ante auctor. Fusce elementum, eros vitae luctus ornare, sem nibh egestas elit, et scelerisque dui nibh quis nunc. Sed facilisis ante vel nisi tristique a bibendum lorem scelerisque. Donec augue nibh, euismod consectetur suscipit ac, mollis et turpis. Proin vitae mi nibh. Vestibulum velit nisi, hendrerit sit amet sodales in, tempus sollicitudin felis.
        In in purus eget mauris fringilla placerat. Proin pellentesque fermentum dui. Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede. Proin ultrices sagittis metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin ultrices nulla id enim. Nullam mi. In ipsum arcu, sodales commodo, elementum at, euismod nec, felis. Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris. Aliquam et enim. Integer vel erat sit amet nulla feugiat scelerisque. Fusce ornare molestie mauris. Aliquam a leo quis eros mollis varius. Quisque egestas velit ac dui. Quisque eu purus vel risus tincidunt dictum. Curabitur sit amet turpis id leo vestibulum imperdiet. Suspendisse mollis ultrices nulla.</p>
</div>

<div id="Videos">
    <h2>Embedded media</h2>
    <p>
        Videos inserted with <em>Insert media via URL</em> render as a <code>div.ss-htmleditorfield-file.embed</code>
        with the same five alignment classes as images, and an optional <code>p.caption</code>.
    </p>

    <h4>Left with caption <small>(class <code>leftAlone</code>, vimeo)</small></h4>
    <div class="leftAlone ss-htmleditorfield-file embed">
        <iframe loading="lazy" src="https://player.vimeo.com/video/740010189" width="480" height="270" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen title="Graphic design can change your life"></iframe>
        <p class="caption">Left (leftAlone) embed with caption</p>
    </div>
    <p>Mauris elementum mi vitae lorem aliquam in tempus justo sollicitudin. Quisque non lectus nunc, non congue arcu. Donec ac lectus eu urna elementum dapibus. Sed eu mauris ac enim ornare vulputate condimentum ut metus.</p>
    <h4>Center <small>(class <code>center</code>, youtube)</small></h4>
    <div class="center ss-htmleditorfield-file embed">
        <iframe loading="lazy" width="480" height="270" src="https://www.youtube.com/embed/E8mjzRmQSN0?feature=oembed" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen title="YouTube video"></iframe>
    </div>
    <p>Mauris elementum mi vitae lorem aliquam in tempus justo sollicitudin. Quisque non lectus nunc, non congue arcu. Donec ac lectus eu urna elementum dapibus. Sed eu mauris ac enim ornare vulputate condimentum ut metus.</p>
    <h4>Right <small>(class <code>rightAlone</code>, youtube)</small></h4>
    <div class="rightAlone ss-htmleditorfield-file embed">
        <iframe loading="lazy" width="480" height="270" src="https://www.youtube.com/embed/E8mjzRmQSN0?feature=oembed" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen title="YouTube video"></iframe>
    </div>
    <p>Mauris elementum mi vitae lorem aliquam in tempus justo sollicitudin. Quisque non lectus nunc, non congue arcu. Donec ac lectus eu urna elementum dapibus. Sed eu mauris ac enim ornare vulputate condimentum ut metus.</p>
    <h4>Left wrap <small>(class <code>left</code>, vimeo)</small></h4>
    <div class="left ss-htmleditorfield-file embed">
        <iframe loading="lazy" src="https://player.vimeo.com/video/740010189" width="480" height="270" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen title="Graphic design can change your life"></iframe>
    </div>
    <p>Cras ipsum ligula, porttitor sit amet posuere sed, fermentum a diam. Aenean varius lectus sit amet purus cursus malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam a sem nec mi gravida volutpat id non risus. Aenean elementum venenatis erat, a semper augue eleifend a. Integer faucibus purus vitae nisl vestibulum sit amet bibendum velit venenatis. Sed elit tortor, scelerisque sed bibendum ut, gravida dignissim ante. Phasellus sit amet sem ac dolor faucibus luctus. Quisque in nunc nec orci commodo sodales. Donec molestie viverra ligula, sit amet consequat velit placerat vel. Morbi sed justo augue, id mattis quam. Pellentesque blandit magna ut sem commodo vitae sodales sapien convallis. Donec tempor tellus et neque iaculis sodales. Sed viverra, leo nec molestie euismod, diam quam semper quam, vel lacinia nunc lacus id nisi.
        Etiam pulvinar arcu vel nibh bibendum ac consequat nunc pharetra. Donec dapibus justo eu nisl tempor auctor. Curabitur in nisl felis. Sed vehicula, lorem quis mollis vestibulum, erat tortor blandit mi, vestibulum molestie erat turpis id dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec facilisis nisi vel est vestibulum quis dapibus ante auctor. Fusce elementum, eros vitae luctus ornare, sem nibh egestas elit, et scelerisque dui nibh quis nunc. Sed facilisis ante vel nisi tristique a bibendum lorem scelerisque. Donec augue nibh, euismod consectetur suscipit ac, mollis et turpis. Proin vitae mi nibh. Vestibulum velit nisi, hendrerit sit amet sodales in, tempus sollicitudin felis.
        In in purus eget mauris fringilla placerat. Proin pellentesque fermentum dui. Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede. Proin ultrices sagittis metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin ultrices nulla id enim. Nullam mi. In ipsum arcu, sodales commodo, elementum at, euismod nec, felis. Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris. Aliquam et enim. Integer vel erat sit amet nulla feugiat scelerisque. Fusce ornare molestie mauris. Aliquam a leo quis eros mollis varius. Quisque egestas velit ac dui. Quisque eu purus vel risus tincidunt dictum. Curabitur sit amet turpis id leo vestibulum imperdiet. Suspendisse mollis ultrices nulla.</p>
    <h4>Right wrap with caption <small>(class <code>right</code>, youtube)</small></h4>
    <div class="right ss-htmleditorfield-file embed">
        <iframe loading="lazy" width="480" height="270" src="https://www.youtube.com/embed/E8mjzRmQSN0?feature=oembed" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen title="YouTube video"></iframe>
        <p class="caption">Right wrap embed with caption</p>
    </div>
    <p>Cras ipsum ligula, porttitor sit amet posuere sed, fermentum a diam. Aenean varius lectus sit amet purus cursus malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam a sem nec mi gravida volutpat id non risus. Aenean elementum venenatis erat, a semper augue eleifend a. Integer faucibus purus vitae nisl vestibulum sit amet bibendum velit venenatis. Sed elit tortor, scelerisque sed bibendum ut, gravida dignissim ante. Phasellus sit amet sem ac dolor faucibus luctus. Quisque in nunc nec orci commodo sodales. Donec molestie viverra ligula, sit amet consequat velit placerat vel. Morbi sed justo augue, id mattis quam. Pellentesque blandit magna ut sem commodo vitae sodales sapien convallis. Donec tempor tellus et neque iaculis sodales. Sed viverra, leo nec molestie euismod, diam quam semper quam, vel lacinia nunc lacus id nisi.
        Etiam pulvinar arcu vel nibh bibendum ac consequat nunc pharetra. Donec dapibus justo eu nisl tempor auctor. Curabitur in nisl felis. Sed vehicula, lorem quis mollis vestibulum, erat tortor blandit mi, vestibulum molestie erat turpis id dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec facilisis nisi vel est vestibulum quis dapibus ante auctor. Fusce elementum, eros vitae luctus ornare, sem nibh egestas elit, et scelerisque dui nibh quis nunc. Sed facilisis ante vel nisi tristique a bibendum lorem scelerisque. Donec augue nibh, euismod consectetur suscipit ac, mollis et turpis. Proin vitae mi nibh. Vestibulum velit nisi, hendrerit sit amet sodales in, tempus sollicitudin felis.
        In in purus eget mauris fringilla placerat. Proin pellentesque fermentum dui. Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede. Proin ultrices sagittis metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin ultrices nulla id enim. Nullam mi. In ipsum arcu, sodales commodo, elementum at, euismod nec, felis. Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris. Aliquam et enim. Integer vel erat sit amet nulla feugiat scelerisque. Fusce ornare molestie mauris. Aliquam a leo quis eros mollis varius. Quisque egestas velit ac dui. Quisque eu purus vel risus tincidunt dictum. Curabitur sit amet turpis id leo vestibulum imperdiet. Suspendisse mollis ultrices nulla.</p>
</div>

<hr />
<p>these are horizontal lines</p>
<hr />

<div id="ExtraHTML">
    <h2>Extra HTML (not allowed by the CMS editor by default)</h2>
    <p>
        These elements are stripped by the default editor rules, but they may still appear in your templates
        (or in the editor, if you allow them &mdash; see <a href="#WYSIWYG">the setup steps</a>).
    </p>
    <ul>
        <li><s>strikethrough</s> (<code>&lt;s&gt;</code> &mdash; what TinyMCE's own strikethrough button produces)</li>
        <li><del>deleted text</del> and <ins>inserted text</ins> (<code>&lt;del&gt;</code> / <code>&lt;ins&gt;</code>)</li>
        <li>Inline quote: <q>Quote goes here</q> (<code>&lt;q&gt;</code>)</li>
        <li>Inline code: <code>TinyMCEConfig::get('cms')</code> and keyboard input: <kbd>Ctrl</kbd> + <kbd>S</kbd></li>
        <li>Abbreviation: <abbr title="Content Management System">CMS</abbr> (<code>&lt;abbr&gt;</code>)</li>
        <li><small>small print</small> (<code>&lt;small&gt;</code>) and <mark>highlighted text</mark> (<code>&lt;mark&gt;</code>)</li>
    </ul>
</div>

<div id="EditorCoverage">
    <h2>Silverstripe 6 editor checklist</h2>
    <p>Every option in the default <code>cms</code> editor configuration (silverstripe/htmleditor-tinymce, TinyMCE 6) and where to check it on this page.</p>
    <table>
        <thead>
            <tr>
                <th scope="col">Editor option</th>
                <th scope="col">Saves as</th>
                <th scope="col">Check it in</th>
            </tr>
        </thead>
        <tbody>
            <tr><th scope="row">Bold / Italic</th><td><code>strong</code> / <code>em</code></td><td><a href="#BasicStyles">Basic styles</a></td></tr>
            <tr><th scope="row">Underline</th><td><code>span style="text-decoration: underline;"</code></td><td><a href="#BasicStyles">Basic styles</a></td></tr>
            <tr><th scope="row">Clear formatting</th><td>removes formatting</td><td>&ndash;</td></tr>
            <tr><th scope="row">Align left / center / right / justify</th><td><code>.text-left</code> etc. on text; <code>.left</code> / <code>.center</code> / <code>.right</code> on tables, divs, images</td><td><a href="#TextAlignment">Text alignment</a>, <a href="#Tables">Tables</a></td></tr>
            <tr><th scope="row">Bullet list / Numbered list</th><td><code>ul</code> / <code>ol</code></td><td><a href="#Lists">Lists</a></td></tr>
            <tr><th scope="row">Indent / Outdent</th><td>nested lists, or <code>padding-left: 40px</code> per step</td><td><a href="#Lists">Lists</a>, <a href="#TextAlignment">Text alignment</a></td></tr>
            <tr><th scope="row">Blocks</th><td>Paragraph, Heading 1&ndash;6, Preformatted</td><td><a href="#ParagraphsAndHeadings">Paragraphs and headings</a></td></tr>
            <tr><th scope="row">Paste as text</th><td>plain text</td><td>&ndash;</td></tr>
            <tr><th scope="row">Table</th><td><code>table</code>, <code>thead</code>, <code>tbody</code>, <code>tfoot</code>, <code>caption</code>, <code>th</code>, <code>td</code></td><td><a href="#Tables">Tables</a></td></tr>
            <tr><th scope="row">Insert media (image)</th><td><code>leftAlone</code>, <code>center</code>, <code>rightAlone</code>, <code>left</code>, <code>right</code>; optional <code>div.captionImage</code></td><td><a href="#ImagesInParagraphs">Images</a></td></tr>
            <tr><th scope="row">Insert media via URL (embed)</th><td><code>div.embed</code> with the same five alignments; optional <code>p.caption</code></td><td><a href="#Videos">Embedded media</a></td></tr>
            <tr><th scope="row">Insert link</th><td>page, anchor, file, external URL, email, phone; open in new window; description</td><td><a href="#Links">Links</a></td></tr>
            <tr><th scope="row">Anchor</th><td>empty <code>a id="..."</code></td><td><a href="#Links">Links</a></td></tr>
            <tr><th scope="row">Remove link</th><td>&ndash;</td><td>&ndash;</td></tr>
            <tr><th scope="row">Source code</th><td>any allowed element: <code>u</code>, <code>strike</code>, <code>sup</code>, <code>sub</code>, <code>cite</code>, <code>blockquote</code>, <code>address</code>, <code>hr</code>, <code>dl</code>, <code>div</code>, <code>span</code>, <code>br</code></td><td><a href="#BasicStyles">Basic styles</a>, <a href="#OtherFormats">Other formats</a></td></tr>
            <tr><th scope="row">Show blocks, Find and replace, Word count, Help</th><td>editor only &mdash; nothing saved</td><td>&ndash;</td></tr>
        </tbody>
    </table>
</div>

<div id="WYSIWYG">
    <h3>Typography and the WYSIWYG editor (Silverstripe 6)</h3>
    <p>Below are the steps to make your HTMLEditorFields in the CMS WYSIWYG (<em>what you see is what you get</em>):</p>
    <ol>
        <li>Put your content styles in <code>themes/mytheme/css/typography.css</code>. All styles should start with .typography, e.g.
            <pre>.typography p {font-size: 1.2em; color: mauve;}</pre>
        </li>
        <li>Include the typography file on the front end, e.g. in your template:
            <pre>&lt;% require themedCSS('typography') %&gt;</pre>
        </li>
        <li>Create <code>themes/mytheme/css/editor.css</code> that imports the same styles.
            Silverstripe 6 loads a themed <code>editor.css</code> into the editor automatically, and the editor body already has the
            <code>typography</code> class, so your <code>.typography</code> rules apply there too:
            <pre>@import url('typography.css');</pre>
        </li>
        <li>For any areas of your project where you display content edited by an HTMLEditorField, add the typography class:
            <pre>&lt;div class="typography"&gt;[editable HTML goes here]&lt;/div&gt;</pre>
        </li>
        <li>Optional: add strikethrough, superscript and subscript buttons in <code>app/_config.php</code>:
            <pre>use SilverStripe\TinyMCE\TinyMCEConfig;

TinyMCEConfig::get('cms')->insertButtonsAfter('underline', ['strikethrough', 'superscript', 'subscript']);</pre>
            The strikethrough button saves <code>&lt;s&gt;</code>, which is not allowed by default, so allow it in <code>app/_config/htmleditor.yml</code>:
            <pre>SilverStripe\Forms\HTMLEditor\HTMLEditorConfig:
  default_config_definitions:
    cms:
      extraElementRules:
        s:
          removeIfEmpty: true
          attributes:
            class: true</pre>
        </li>
    </ol>
</div>



<hr />

$Form
</div>
