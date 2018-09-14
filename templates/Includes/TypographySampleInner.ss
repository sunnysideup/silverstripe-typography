<% if ShowFirstHeading %><h1>Formatting Test Page</h1><% end_if %>
<p>Main sections on this page:
    <a href="#typography">typography definitions</a>,
    <a href="#WYSIWYG">how to setup WYSIWIG editor</a>,
    <% if SiteColours %><a href="#CssColorChart">colour charts</a>, <% end_if %>
    and <a href="#Form">form definitions</a>.
</p>

<h2 id="typography">Typography</h2>
<p>Sections in the typography include:</p>
<ul>
    <li><a href="#BasicStyles">Basic styles</a></li>
    <li><a href="#ParagraphsAndHeadings">Paragraphs and headings</a></li>
    <li><a href="#ImagesInParagraphs">Paragraphs with images</a></li>
    <li><a href="#InParagraphStyles">Styles within paragraphs (such as bold)</a></li>
    <li><a href="#Lists">Lists</a></li>
    <li><a href="#TereoMaori">Special characters</a></li>
    <li><a href="#Tables">Tables</a></li>
    <li><a href="#OtherFormats">Other Formats</a></li>
    <li><a href="#Videos">Videos</a></li>
</ul>
<p>
    This page allows you to review typographic formatting for this website.
    This directly relates to the areas that are editable in the Content Management System.
    While the options and configurations are endless, most websites require the following minimum elements:
</p>
<ul>
    <li>heading one through to heading six where heading one is the most important one (e.g. page title) and heading six the <i>smallest</i> heading.</li>
    <li>paragraphs</li>
    <li>bulleted lists</li>
    <li>numbered lists</li>
    <li>blockquote (i.e. a longer quote)</li>
    <li>address</li>
    <li>horizontal line</li>
    <li>pre-formatted text (e.g. recipes, computer code)</li>
    <li>tables with table heading (e.g. will show the word "cost") and table data cells (e.g. will show "$14")</li>
    <li>images and whether they break up text, or that the text wraps around it to either the left or the right.</li>
    <li>bold, italics, and underline - e.g. bold can actually be achieved by having a different colour rather than bold text</li>
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
    <li>italic, bold, underlined or strikken through (looks like deleted text).</li>
</ul>
<p>
    Below is a variety of styles that you may use in your SilverStripe Content Management System.
    The styles should look the same (or similar) in your Content Management System as they do on this page.
    Special formats are interspersed with a paragraph as this is a more normal typographic setting than having heading after heading after heading.
    Each start of a new section will tell you what to look for.
    Make sure to also check for the <i>within paragraph</i> formatting.
</p>
<p>
    At the bottom of this page, you will also find the most common form elements and their proposed formatting.
</p>
<p>
    It is important to remember that the page below only focusses on typography (writing) and not on the design of the page as a whole (e.g. where the menu goes, how wide the page is, etc...)
</p>

<div id="BasicStyles">
    <h2>Basic styles</h2>
    <ul>
        <li><strong>bold 1</strong>, <b>bold 2</b></li>
        <li><u>underlined</u></li>
        <li><em>italics 1</em> or <i>italics 2</i> </li>
        <li><a href="home">internal link</a></li>
        <li><a href="http://www.sunnysideup.co.nz">external link</a></li>
        <li><a href="/">visited link</a></li>
        <li><a href="$RandomLinkInternal">unvisited internal link</a></li>
        <li><a href="$RandomLinkExternal">unvisited external link</a></li>
        <li><a href="mailto:foo@bar.com">foo@bar.com</a></li>
    </ul>
</div>

<div id="ParagraphsAndHeadings">
    <h2>Paragraphs and headings</h2>

    <p>Vivamus egestas vulputate egestas. Aenean convallis mi eu ipsum commodo ultrices. Suspendisse tincidunt faucibus libero, id interdum enim interdum sed. Donec id nibh nunc. Sed vel quam a diam mollis porttitor. Pellentesque placerat pharetra augue, ut scelerisque elit rutrum eget. Nam dapibus, risus ut adipiscing blandit, quam massa dignissim elit, sed cursus est risus et diam. Integer quis consectetur magna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.</p>
    <p>Mauris faucibus sodales orci, a fermentum eros euismod id. Sed lacinia elementum risus vel ullamcorper. Fusce tincidunt eget augue quis eleifend. Pellentesque in vulputate ante. Aenean urna velit, mattis a diam sit amet, ultricies scelerisque tortor. Maecenas posuere dolor erat, et facilisis enim feugiat nec. Nam urna libero, tincidunt id blandit vitae, tempor quis augue.</p>
    <p>
        In in purus eget mauris fringilla placerat.
        Proin pellentesque fermentum dui.
        Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede.
        Proin ultrices sagittis metus.
        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
        Proin ultrices nulla id enim.
        Nullam mi.
        In ipsum arcu, sodales commodo, elementum at, euismod nec, felis.
        Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris.
        Aliquam et enim.
        Integer vel erat sit amet nulla feugiat scelerisque.
        Fusce ornare molestie mauris.
        Integer erat.
        Integer pulvinar cursus dolor.
        Nunc interdum.
    </p>
    <h2>heading 2: The quick brown fox jumps over the lazy dog</h2>
    <p>Praesent suscipit nisi sit amet felis facilisis, eget iaculis tellus viverra. Donec et commodo urna. Nulla facilisi. Nulla placerat hendrerit est, at mollis elit vehicula sed. Vestibulum convallis purus in diam gravida laoreet. Phasellus mattis vulputate augue, at semper nulla consequat at. Sed vehicula bibendum felis, eu euismod neque. Sed accumsan a neque vitae ullamcorper. Aliquam ante risus, interdum at nisi vel, hendrerit mollis magna. Sed a ligula magna. Etiam et nibh in enim cursus suscipit.</p>
    <h3>heading 3: The quick brown fox jumps over the lazy dog</h3>
    <p>In interdum consectetur urna, in ornare augue laoreet sit amet. Fusce ornare scelerisque mauris. Ut vel sapien vitae mi laoreet congue. Nullam blandit gravida nibh, ornare porta massa venenatis nec. Fusce at diam quis dolor egestas aliquam adipiscing a sapien. Quisque et lacus quis odio feugiat malesuada in et arcu. Ut interdum lorem eget est egestas porttitor. Praesent ornare neque eu leo placerat, quis ultricies arcu posuere. Suspendisse nisi enim, faucibus ut gravida vitae, interdum euismod sem. Quisque vestibulum mi id est tincidunt interdum. Vestibulum leo orci, eleifend ut sapien id, tristique ultricies turpis. Donec felis quam, ultrices eget ante quis, ultricies aliquet orci. Vestibulum imperdiet massa sem, non convallis dui eleifend id. Donec facilisis ante a dui mattis, sed vehicula purus faucibus.</p>
    <h4>heading 4: The quick brown fox jumps over the lazy dog</h4>
    <p>Aliquam porta enim ut mollis rhoncus. Vivamus vulputate urna a nulla tincidunt dapibus. Pellentesque ac massa lectus. Curabitur aliquam pellentesque magna non malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent dignissim ullamcorper libero, et laoreet purus ornare a. Vivamus vitae neque nunc. Fusce id massa lobortis, vehicula nisi in, egestas nunc. Duis dapibus aliquet congue. Sed fringilla justo auctor eros accumsan tincidunt.</p>
    <h5>heading 5: The quick brown fox jumps over the lazy dog</h5>
    <p>Duis vitae massa et eros sodales adipiscing. Nam non ante pretium velit hendrerit sodales. Maecenas egestas semper placerat. Nullam blandit auctor orci et faucibus. Donec dictum sodales quam, id vestibulum ipsum malesuada a. In mollis, lectus ac dictum gravida, nibh lorem lacinia nibh, ut accumsan tellus mi in odio. Sed leo nisi, tempor vel tortor a, suscipit hendrerit est. Donec luctus leo a nibh tincidunt, nec pretium justo venenatis.</p>
    <h6>heading 6: The quick brown fox jumps over the lazy dog</h6>
    <p>Etiam egestas vitae arcu eu pulvinar. Suspendisse mollis mi rhoncus leo fermentum, non mollis eros blandit. Aliquam vehicula sed felis consectetur euismod. Aenean vel porttitor leo. Donec at massa et ipsum porta dignissim eu quis mi. Suspendisse non aliquam felis, a euismod dui. Cras interdum consectetur fringilla.</p>
</div>


<div id="ImagesInParagraphs">
    <h2>paragraph with images</h2>

    <p>
        <a href="home"><img src="/typography/images/kapiti.jpg" alt="loading image" class="leftAlone"/></a>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vestibulum aliquam ipsum nec rutrum. Donec posuere blandit sapien, a gravida enim feugiat sit amet. Integer non risus vel tortor egestas egestas id ut mauris. Donec purus ipsum, lobortis quis malesuada posuere, ornare a nibh. Cras pretium, neque sit amet porta ultricies, metus nisi vulputate ante, in pulvinar elit mi ac urna. Integer pretium consequat enim in viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer sollicitudin, massa at dictum vulputate, eros odio adipiscing est, sit amet molestie turpis odio a enim. Donec rhoncus auctor mauris, vitae viverra odio condimentum vel. In lectus odio, posuere semper lobortis sed, dictum eget felis. Vivamus pharetra urna a risus molestie vehicula consequat sapien lacinia.
        In in purus eget mauris fringilla placerat.
        Proin pellentesque fermentum dui.
        Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede.
        Proin ultrices sagittis metus.
        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
        Proin ultrices nulla id enim.
        Nullam mi.
        In ipsum arcu, sodales commodo, elementum at, euismod nec, felis.
        Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris.
        Aliquam et enim.
        Integer vel erat sit amet nulla feugiat scelerisque.
        Fusce ornare molestie mauris.
        Aliquam a leo quis eros mollis varius.
        Quisque egestas velit ac dui.
        Quisque eu purus vel risus tincidunt dictum.
        Curabitur sit amet turpis id leo vestibulum imperdiet.
        Suspendisse mollis ultrices nulla.
        Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede.
        Proin ultrices sagittis metus.
        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
        Proin ultrices nulla id enim.
        Nullam mi.
    </p>
    <p>
        <img src="/typography/images/kapiti.jpg" alt="loading image"  class="center" />
        Maecenas in ante et erat malesuada elementum. Aliquam erat volutpat. Nunc pulvinar congue arcu, a tempor augue condimentum eget. Quisque ac tortor a turpis tempus vulputate. Maecenas id odio non purus luctus dictum. Sed ut nisi sit amet diam pharetra ultricies eu id dui. Maecenas varius ligula ut sem tristique eu facilisis diam feugiat. Donec quis aliquam diam. Proin aliquam, quam quis suscipit volutpat, odio neque condimentum sapien, eget scelerisque nulla metus in elit. Phasellus commodo erat eu mi porttitor accumsan. In hac habitasse platea dictumst. Sed placerat sapien id eros varius id interdum nulla dignissim. Nam risus quam, molestie at rutrum nec, pellentesque eu quam. In hac habitasse platea dictumst. Donec ipsum ligula, congue luctus rutrum ut, blandit vitae diam. In sit amet neque nisi, vitae scelerisque massa. Fusce aliquet aliquet libero, vel elementum augue vulputate eu. Nulla eget dolor pulvinar sem imperdiet porta sed quis leo. Quisque sit amet sem ut nisi aliquam varius et et dolor. Phasellus laoreet ultrices leo non dictum.
        In in purus eget mauris fringilla placerat.
        Proin pellentesque fermentum dui.
        Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede.
        Proin ultrices sagittis metus.
        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
        Proin ultrices nulla id enim.
        Nullam mi.
        In ipsum arcu, sodales commodo, elementum at, euismod nec, felis.
        Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris.
        Aliquam et enim.
        Integer vel erat sit amet nulla feugiat scelerisque.
        Fusce ornare molestie mauris.
        Aliquam a leo quis eros mollis varius.
        Quisque egestas velit ac dui.
        Quisque eu purus vel risus tincidunt dictum.
        Curabitur sit amet turpis id leo vestibulum imperdiet.
        Suspendisse mollis ultrices nulla.
        Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede.
        Proin ultrices sagittis metus.
        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
        Proin ultrices nulla id enim.
        Nullam mi.
    </p>
    <p>
        <img src="/typography/images/kapiti.jpg" alt="loading image"  class="left" />
        Cras ipsum ligula, porttitor sit amet posuere sed, fermentum a diam. Aenean varius lectus sit amet purus cursus malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam a sem nec mi gravida volutpat id non risus. Aenean elementum venenatis erat, a semper augue eleifend a. Integer faucibus purus vitae nisl vestibulum sit amet bibendum velit venenatis. Sed elit tortor, scelerisque sed bibendum ut, gravida dignissim ante. Phasellus sit amet sem ac dolor faucibus luctus. Quisque in nunc nec orci commodo sodales. Donec molestie viverra ligula, sit amet consequat velit placerat vel. Morbi sed justo augue, id mattis quam. Pellentesque blandit magna ut sem commodo vitae sodales sapien convallis. Donec tempor tellus et neque iaculis sodales. Sed viverra, leo nec molestie euismod, diam quam semper quam, vel lacinia nunc lacus id nisi.
        Etiam pulvinar arcu vel nibh bibendum ac consequat nunc pharetra. Donec dapibus justo eu nisl tempor auctor. Curabitur in nisl felis. Sed vehicula, lorem quis mollis vestibulum, erat tortor blandit mi, vestibulum molestie erat turpis id dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec facilisis nisi vel est vestibulum quis dapibus ante auctor. Fusce elementum, eros vitae luctus ornare, sem nibh egestas elit, et scelerisque dui nibh quis nunc. Sed facilisis ante vel nisi tristique a bibendum lorem scelerisque. Donec augue nibh, euismod consectetur suscipit ac, mollis et turpis. Proin vitae mi nibh. Vestibulum velit nisi, hendrerit sit amet sodales in, tempus sollicitudin felis.
        In in purus eget mauris fringilla placerat.
        Proin pellentesque fermentum dui.
        Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede.
        Proin ultrices sagittis metus.
        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
        Proin ultrices nulla id enim.
        Nullam mi.
        In ipsum arcu, sodales commodo, elementum at, euismod nec, felis.
        Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris.
        Aliquam et enim.
        Integer vel erat sit amet nulla feugiat scelerisque.
        Fusce ornare molestie mauris.
        Aliquam a leo quis eros mollis varius.
        Quisque egestas velit ac dui.
        Quisque eu purus vel risus tincidunt dictum.
        Curabitur sit amet turpis id leo vestibulum imperdiet.
        Suspendisse mollis ultrices nulla.
        Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede.
        Proin ultrices sagittis metus.
        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
        Proin ultrices nulla id enim.
        Nullam mi.
    </p>
    <p>
        <img src="/typography/images/kapiti.jpg" alt="loading image"  class="right" />
        Cras ipsum ligula, porttitor sit amet posuere sed, fermentum a diam. Aenean varius lectus sit amet purus cursus malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam a sem nec mi gravida volutpat id non risus. Aenean elementum venenatis erat, a semper augue eleifend a. Integer faucibus purus vitae nisl vestibulum sit amet bibendum velit venenatis. Sed elit tortor, scelerisque sed bibendum ut, gravida dignissim ante. Phasellus sit amet sem ac dolor faucibus luctus. Quisque in nunc nec orci commodo sodales. Donec molestie viverra ligula, sit amet consequat velit placerat vel. Morbi sed justo augue, id mattis quam. Pellentesque blandit magna ut sem commodo vitae sodales sapien convallis. Donec tempor tellus et neque iaculis sodales. Sed viverra, leo nec molestie euismod, diam quam semper quam, vel lacinia nunc lacus id nisi.
        Etiam pulvinar arcu vel nibh bibendum ac consequat nunc pharetra. Donec dapibus justo eu nisl tempor auctor. Curabitur in nisl felis. Sed vehicula, lorem quis mollis vestibulum, erat tortor blandit mi, vestibulum molestie erat turpis id dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec facilisis nisi vel est vestibulum quis dapibus ante auctor. Fusce elementum, eros vitae luctus ornare, sem nibh egestas elit, et scelerisque dui nibh quis nunc. Sed facilisis ante vel nisi tristique a bibendum lorem scelerisque. Donec augue nibh, euismod consectetur suscipit ac, mollis et turpis. Proin vitae mi nibh. Vestibulum velit nisi, hendrerit sit amet sodales in, tempus sollicitudin felis.
        In in purus eget mauris fringilla placerat.
        Proin pellentesque fermentum dui.
        Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede.
        Proin ultrices sagittis metus.
        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
        Proin ultrices nulla id enim.
        Nullam mi.
        In ipsum arcu, sodales commodo, elementum at, euismod nec, felis.
        Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris.
        Aliquam et enim.
        Integer vel erat sit amet nulla feugiat scelerisque.
        Fusce ornare molestie mauris.
        Aliquam a leo quis eros mollis varius.
        Quisque egestas velit ac dui.
        Quisque eu purus vel risus tincidunt dictum.
        Curabitur sit amet turpis id leo vestibulum imperdiet.
        Suspendisse mollis ultrices nulla.
        Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede.
        Proin ultrices sagittis metus.
        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
        Proin ultrices nulla id enim.
        Nullam mi.
    </p>
    <div class="captionImage leftAlone" style="width: 370px;">
        <img  title="title" alt="alt" src="/typography/images/kapiti.jpg" width="370" height="247" class="leftAlone" />
        <p class="caption leftAlone">leftAlone with caption</p>
    </div>
    <p>
    Mauris elementum mi vitae lorem aliquam in tempus justo sollicitudin. Quisque non lectus nunc, non congue arcu. Donec ac lectus eu urna elementum dapibus. Sed eu mauris ac enim ornare vulputate condimentum ut metus. Nam pellentesque dictum sem, ac consectetur dolor consequat sed. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vestibulum consequat, risus sit amet faucibus vestibulum, tortor ligula volutpat metus, a tincidunt massa metus et dolor. Donec non odio risus. Curabitur fermentum leo eget nisi suscipit accumsan. Integer feugiat laoreet enim in dapibus. Nullam tempus imperdiet sem a congue. Etiam eu libero eros, eu mattis nisi. Integer eu placerat arcu. Phasellus faucibus, enim a dictum iaculis, dui justo vestibulum mauris, ac vehicula dolor orci sed neque. Nulla tristique lacus eget diam condimentum scelerisque. Duis vel libero sagittis purus pharetra feugiat quis at ligula. Morbi ultrices dolor vitae tortor fermentum sit amet vestibulum tellus porta. Fusce aliquam lacus vitae purus rutrum convallis.
    In in purus eget mauris fringilla placerat.
    Proin pellentesque fermentum dui.
    Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede.
    Proin ultrices sagittis metus.
    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
    Proin ultrices nulla id enim.
    Nullam mi.
    In ipsum arcu, sodales commodo, elementum at, euismod nec, felis.
    Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris.
    Aliquam et enim.
    Integer vel erat sit amet nulla feugiat scelerisque.
    Fusce ornare molestie mauris.
    Aliquam a leo quis eros mollis varius.
    Quisque egestas velit ac dui.
    Quisque eu purus vel risus tincidunt dictum.
    Curabitur sit amet turpis id leo vestibulum imperdiet.
    Suspendisse mollis ultrices nulla.
    Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede.
    Proin ultrices sagittis metus.
    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
    Proin ultrices nulla id enim.
    Nullam mi.
    </p>
    <div class="captionImage center" style="width: 370px;">
        <img title="title" alt="alt" src="/typography/images/kapiti.jpg" width="370" height="247" class="center" />
        <p class="caption center">center with caption</p>
    </div>
    <p>
        Mauris elementum mi vitae lorem aliquam in tempus justo sollicitudin. Quisque non lectus nunc, non congue arcu. Donec ac lectus eu urna elementum dapibus. Sed eu mauris ac enim ornare vulputate condimentum ut metus. Nam pellentesque dictum sem, ac consectetur dolor consequat sed. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vestibulum consequat, risus sit amet faucibus vestibulum, tortor ligula volutpat metus, a tincidunt massa metus et dolor. Donec non odio risus. Curabitur fermentum leo eget nisi suscipit accumsan. Integer feugiat laoreet enim in dapibus. Nullam tempus imperdiet sem a congue. Etiam eu libero eros, eu mattis nisi. Integer eu placerat arcu. Phasellus faucibus, enim a dictum iaculis, dui justo vestibulum mauris, ac vehicula dolor orci sed neque. Nulla tristique lacus eget diam condimentum scelerisque. Duis vel libero sagittis purus pharetra feugiat quis at ligula. Morbi ultrices dolor vitae tortor fermentum sit amet vestibulum tellus porta. Fusce aliquam lacus vitae purus rutrum convallis.
        In in purus eget mauris fringilla placerat.
        Proin pellentesque fermentum dui.
        Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede.
        Proin ultrices sagittis metus.
        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
        Proin ultrices nulla id enim.
        Nullam mi.
        In ipsum arcu, sodales commodo, elementum at, euismod nec, felis.
        Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris.
        Aliquam et enim.
        Integer vel erat sit amet nulla feugiat scelerisque.
        Fusce ornare molestie mauris.
        Aliquam a leo quis eros mollis varius.
        Quisque egestas velit ac dui.
        Quisque eu purus vel risus tincidunt dictum.
        Curabitur sit amet turpis id leo vestibulum imperdiet.
        Suspendisse mollis ultrices nulla.
        Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede.
        Proin ultrices sagittis metus.
        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
        Proin ultrices nulla id enim.
        Nullam mi.
    </p>
    <div class="captionImage left" style="width: 370px;">
        <img title="title" alt="alt" src="/typography/images/kapiti.jpg" width="370" height="247" class="left" />
        <p class="caption left">left wrap with caption</p>
    </div>
    <p>
        In sapien lectus, scelerisque eu ultrices venenatis, lacinia nec mauris. Praesent eget felis scelerisque mi feugiat suscipit et eu eros. Vestibulum ac risus sapien, quis faucibus mi. Praesent ac odio dui, nec congue ligula. Mauris vel magna leo. Nullam vitae libero at tellus feugiat tristique. Maecenas convallis rutrum justo, quis pellentesque est condimentum in. Fusce id purus lectus, at condimentum arcu. Aliquam pharetra luctus porttitor. Nunc ipsum magna, sagittis ut porta sit amet, interdum ut nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut volutpat iaculis nulla. Nulla neque neque, accumsan quis pretium eget, vehicula in nisi. Etiam laoreet tristique felis in tristique. Phasellus commodo, lacus ac auctor ultrices, est massa imperdiet massa, a tincidunt odio risus id lectus. Vivamus adipiscing tristique accumsan.
        In in purus eget mauris fringilla placerat.
        Proin pellentesque fermentum dui.
        Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede.
        Proin ultrices sagittis metus.
        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
        Proin ultrices nulla id enim.
        Nullam mi.
        In ipsum arcu, sodales commodo, elementum at, euismod nec, felis.
        Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris.
        Aliquam et enim.
        Integer vel erat sit amet nulla feugiat scelerisque.
        Fusce ornare molestie mauris.
        Aliquam a leo quis eros mollis varius.
        Quisque egestas velit ac dui.
        Quisque eu purus vel risus tincidunt dictum.
        Curabitur sit amet turpis id leo vestibulum imperdiet.
        Suspendisse mollis ultrices nulla.
        Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede.
        Proin ultrices sagittis metus.
        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
        Proin ultrices nulla id enim.
        Nullam mi.
    </p>
    <div class="captionImage right" style="width: 370px;">
        <img title="title" alt="alt" src="/typography/images/kapiti.jpg" width="370" height="247" class="right" />
        <p class="caption right">right wrap with caption</p>
    </div>
    <p>
        In sapien lectus, scelerisque eu ultrices venenatis, lacinia nec mauris. Praesent eget felis scelerisque mi feugiat suscipit et eu eros. Vestibulum ac risus sapien, quis faucibus mi. Praesent ac odio dui, nec congue ligula. Mauris vel magna leo. Nullam vitae libero at tellus feugiat tristique. Maecenas convallis rutrum justo, quis pellentesque est condimentum in. Fusce id purus lectus, at condimentum arcu. Aliquam pharetra luctus porttitor. Nunc ipsum magna, sagittis ut porta sit amet, interdum ut nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut volutpat iaculis nulla. Nulla neque neque, accumsan quis pretium eget, vehicula in nisi. Etiam laoreet tristique felis in tristique. Phasellus commodo, lacus ac auctor ultrices, est massa imperdiet massa, a tincidunt odio risus id lectus. Vivamus adipiscing tristique accumsan.
        In in purus eget mauris fringilla placerat.
        Proin pellentesque fermentum dui.
        Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede.
        Proin ultrices sagittis metus.
        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
        Proin ultrices nulla id enim.
        Nullam mi.
        In ipsum arcu, sodales commodo, elementum at, euismod nec, felis.
        Vestibulum laoreet, felis at vulputate posuere, tellus lorem ornare ante, eget commodo magna metus vitae mauris.
        Aliquam et enim.
        Integer vel erat sit amet nulla feugiat scelerisque.
        Fusce ornare molestie mauris.
        Aliquam a leo quis eros mollis varius.
        Quisque egestas velit ac dui.
        Quisque eu purus vel risus tincidunt dictum.
        Curabitur sit amet turpis id leo vestibulum imperdiet.
        Suspendisse mollis ultrices nulla.
        Donec tortor sapien, condimentum a, iaculis at, faucibus id, pede.
        Proin ultrices sagittis metus.
        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
        Proin ultrices nulla id enim.
        Nullam mi.
    </p>
</div>


<div id="InParagraphStyles">
    <h2>styles within paragrahs</h2>

    <p>
        This is an example of a couple of left-align paragraphs with <strong>bold</strong>, <u>underlined</u>, and <em>italics</em> in it.
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
        <u>Underline</u> Phasellus auctor,
        <strong>bold</strong>, Donec.
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
        Below is an unordered (bulleted) list within a list...
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
                    Integer elementum.
                    Vestibulum ornare felis sed quam.
                    Donec tempor scelerisque nisi.
                    Nulla facilisi.
                    Donec porttitor.
                    Morbi et sapien.
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
                            <ul>
                                <li>
                                    Donec scelerisque augue non orci.
                                </li>
                                <li>
                                    Donec porttitor.
                                    Morbi et sapien.
                                </li>
                                <li>
                                    Cras lacinia elit nec libero.
                                </li>
                                <li>
                                    Suspendisse laoreet.
                                </li>
                            </ul>
                        </li>
                    </ul>
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
            Donec tempor scelerisque nisi.
            Nulla facilisi.
            Donec porttitor.
            Morbi et sapien.
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
                        <li>
                            In feugiat consectetuer lectus.
                            Cras lacinia elit nec libero.
                        </li>
                        <li>
                            In feugiat consectetuer lectus.
                            Cras lacinia elit nec libero.
                        </li>
                        <li>
                            In feugiat consectetuer lectus.
                            Cras lacinia elit nec libero.
                        </li>
                        <li>
                            In feugiat consectetuer lectus.
                            Cras lacinia elit nec libero.
                        </li>
                        <li>
                            In feugiat consectetuer lectus.
                            Cras lacinia elit nec libero.
                        </li>
                    </ol>
                </li>
            </ol>
        </li>
        <li>
            Sed id ante in nisi faucibus tristique.
            Suspendisse laoreet.
        </li>
    </ol>
    <p>
        Paragraph underneath a list ...
    </p>
</div>


<div id="TereoMaori">
    <h4 >testing extended character sets using Te Reo Māori</h4>
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
        <strong><b>
            The additional characters for Te Reo Maori (the Māori Language) are:  ā, ē, ī, ō, ū, Ā, Ē, Ī, Ō and Ū.
            <br />ā: code (&amp;#257;) shows as: &#257;, Ā: code (&amp;#256;) shows as: &#256;
            <br />ē: code (&amp;#275;) shows as: &#275;, Ē: code (&amp;#274;) shows as: &#274;
            <br />ī: code (&amp;#299;) shows as: &#299;, Ī: code (&amp;#298;) shows as: &#298;
            <br />ō: code (&amp;#333;) shows as: &#333;, Ō: code (&amp;#332;) shows as: &#332;
            <br />ū: code (&amp;#363;) shows as: &#363;, Ū: code (&amp;#362;) shows as: &#362;

        </b></strong>
    </p>
    <h5>and in italics</h5>
    <p>
        <i>
            The additional characters for Te Reo Maori (the Māori Language) are:  ā, ē, ī, ō, ū, Ā, Ē, Ī, Ō and Ū.
            <br />ā: code (&amp;#257;) shows as: &#257;, Ā: code (&amp;#256;) shows as: &#256;
            <br />ē: code (&amp;#275;) shows as: &#275;, Ē: code (&amp;#274;) shows as: &#274;
            <br />ī: code (&amp;#299;) shows as: &#299;, Ī: code (&amp;#298;) shows as: &#298;
            <br />ō: code (&amp;#333;) shows as: &#333;, Ō: code (&amp;#332;) shows as: &#332;
            <br />ū: code (&amp;#363;) shows as: &#363;, Ū: code (&amp;#362;) shows as: &#362;

        </i>
    </p>
    <h5>and in italics + bold</h5>
    <p>
        <strong><b>
            <i><em>
                The additional characters for Te Reo Maori (the Māori Language) are:  ā, ē, ī, ō, ū, Ā, Ē, Ī, Ō and Ū.
                <br />ā: code (&amp;#257;) shows as: &#257;, Ā: code (&amp;#256;) shows as: &#256;
                <br />ē: code (&amp;#275;) shows as: &#275;, Ē: code (&amp;#274;) shows as: &#274;
                <br />ī: code (&amp;#299;) shows as: &#299;, Ī: code (&amp;#298;) shows as: &#298;
                <br />ō: code (&amp;#333;) shows as: &#333;, Ō: code (&amp;#332;) shows as: &#332;
                <br />ū: code (&amp;#363;) shows as: &#363;, Ū: code (&amp;#362;) shows as: &#362;
            </em></i>
        </b></strong>
    </p>
</div>


<div id="Tables">
    <h2>Tables</h2>
    <table>
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
                <td>cell 3</td> </tr>
            <tr>
                <th scope="row">table row heading 3</th>
                <td>cell 1</td>
                <td>cell 2</td>
                <td>cell 3</td>
            </tr>
        </tbody>
    </table>
</div>
<div id="OtherFormats">
    <h2>Other formats</h2>

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
    <pre>Here is an example of the pre-formatted tag.  This is used for things like computer code and recipes.</pre>
    <p>
        Donec mollis, libero et porttitor imperdiet, est lorem pulvinar libero, id commodo quam mi vitae elit.
        Quisque ac odio id ante semper tincidunt.
        Quisque ultrices eros egestas augue.
        Sed augue purus, sagittis et, bibendum quis, tincidunt ut, risus.
        Ut gravida sodales nisi.
        Morbi pede.
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
            In eget mi.
            Sed hendrerit.
            Integer fringilla, metus in adipiscing venenatis, nisi metus scelerisque magna, id fringilla dolor diam ac ligula.
            Nulla consequat nunc id sem.
        </p>
    </blockquote>
    <h5>and here is some quoted text (for a smaller quote)</h5>
    <p>
        Ut vulputate ante.
        <q>Quote goes here</q>
        Maecenas nec est.
        Nullam id leo in sapien commodo hendrerit.
        Nam tincidunt augue quis neque.
        Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
        Nulla lobortis. In ante nunc, consequat non, placerat vel, auctor ac, magna.
        In eget mi.
        Sed hendrerit.
        <q>Another quote here...</q>
        Integer fringilla, metus in adipiscing venenatis, nisi metus scelerisque magna, id fringilla dolor diam ac ligula.
        Nulla consequat nunc id sem.
    </p>
</div>

<div id="Videos">
    <p>Below are two examples of videos as they are typically inserted into the editor:</p>
    <p> <div class="media leftAlone"><iframe src="https://player.vimeo.com/video/19441320" width="600" height="338" frameborder="0" title="Graphic design can change your life" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen=""></iframe></div></p>
    <p><div class="media leftAlone"><iframe width="480" height="270" src="https://www.youtube.com/embed/E8mjzRmQSN0?feature=oembed" frameborder="0" allowfullscreen=""></iframe></div></p>

</div>

<hr />
<p>these are horizontal lines</p>
<hr />

<div id="WYSIWYG">
    <h3>Typography and WYSIWYG editor</h3>
    <p>Below are the steps to make your HTMLEditorFields in the CMS WYSIWYG (<em>what you see is what you get</em>):</p>
    <ol>
        <li>Create a typography.css file.  In it, all styles should start with .typography e.g.
            <pre>.typography p {font-size: 1.2em; color: mauve;}</pre>
            You can also add styles without the .typography prefix. These definitions will be added as <em>styles</em> to your HTML Editor
        </li>
        <li>Include your typography file into your project:
            <pre>Requirements::themedCSS("typography", 'app');</pre>
        </li>
        <li>Add the following line to your _config.php file:
            <pre>
                HtmlEditorConfig::get('cms')->setOption('ContentCSS', 'themes/myproject/css/typography.css');
            </pre>
        </li>
        <li>For any areas of your project where you display content edited by an HTMLEditorField, add the typography class:
            <pre>&lt;div class="typopgrahy"&gt;[editable HTML goes here]&lt;/div&gt;</pre>
        </li>
    </ol>
</div>


<% if SiteColours %>
<div id="CssColorChart">
    <h1>Colours currently used on the site:</h1>
    $SiteColours
</div>
<% end_if %>

<hr />
