<%
if(session.getAttribute("name")==null){
	response.sendRedirect("Login.jsp");
}

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wellcome to User</title>
    <link rel="stylesheet" href="./Style1.css">
</head>
<body>
    <div id="wrapper">
        <div id="header" class="container">
            <div id="logo">
                <h1><a href="#">Atmosphere </a></h1>
                <p>Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a></p>
            </div>
            <div id="menu">
                <ul>
                    <li class="current_page_item"><a href="#">Homepage</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Photos</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
        </div>
        <!-- end #header -->
        <div id="page">
            <div id="content">
                <div class="post">
                    <h2 class="title"><a href="#">Welcome to Atmosphere </a></h2>
                    <p class="meta"><span class="date">August 28, 2011</span><span class="posted">Posted by <a href="#">Someone</a></span></p>
                    <div style="clear: both;">&nbsp;</div>
                    <div class="entry">
                        <p>This is <strong>Atmosphere </strong>, a free, fully standards-compliant CSS template designed by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.  This free template is released under the <a href="http://templated.co/license">Creative Commons Attribution</a> license, so you’re pretty much free to do whatever you want with it (even use it commercially) provided you give us credit for it. Have fun :)</p>
                        <p>Sed lacus. Donec lectus. Nullam pretium nibh ut turpis. Nam bibendum. In nulla tortor, elementum ipsum. Proin imperdiet est. Phasellus dapibus semper urna. Pellentesque ornare, orci in felis. Donec ut ante. In id eros. Suspendisse lacus turpis, cursus egestas at sem.</p>
                        <p class="links"><a href="#" class="more">Read More</a><a href="#" title="b0x" class="comments">Comments</a></p>
                    </div>
                </div>
                <div class="post">
                    <h2 class="title"><a href="#">Lorem ipsum sed aliquam</a></h2>
                    <p class="meta"><span class="date">August 20, 2011</span><span class="posted">Posted by <a href="#">Someone</a></span></p>
                    <div style="clear: both;">&nbsp;</div>
                    <div class="entry">
                        <p>Sed lacus. Donec lectus. Nullam pretium nibh ut turpis. Nam bibendum. In nulla tortor, elementum vel, tempor at, varius non, purus. Mauris vitae nisl nec metus placerat consectetuer. Donec ipsum. Proin imperdiet est. Phasellus <a href="#">dapibus semper urna</a>. Pellentesque ornare, orci in consectetuer hendrerit, urna elit eleifend nunc, ut consectetuer nisl felis ac diam. Etiam non felis. Donec ut ante. In id eros. Suspendisse lacus turpis, cursus egestas at sem.  Mauris quam enim, molestie in, rhoncus ut, lobortis a, est.</p>
                        <p class="links"><a href="#" class="more">Read More</a><a href="#" title="b0x" class="comments">Comments</a></p>
                    </div>
                </div>
                <div class="post">
                    <h2 class="title"><a href="#">Consecteteur hendrerit </a></h2>
                    <p class="meta"><span class="date">August 10, 2011</span><span class="posted">Posted by <a href="#">Someone</a></span></p>
                    <div style="clear: both;">&nbsp;</div>
                    <div class="entry">
                        <p>Sed lacus. Donec lectus. Nullam pretium nibh ut turpis. Nam bibendum. In nulla tortor, elementum vel, tempor at, varius non, purus. Mauris vitae nisl nec metus placerat consectetuer. Donec ipsum. Proin imperdiet est. Phasellus <a href="#">dapibus semper urna</a>. Pellentesque ornare, orci in consectetuer hendrerit, urna elit eleifend nunc, ut consectetuer nisl felis ac diam. Etiam non felis. Donec ut ante. In id eros. Suspendisse lacus turpis, cursus egestas at sem.  Mauris quam enim, molestie in, rhoncus ut, lobortis a, est.</p>
                        <p class="links"><a href="#" class="more">Read More</a><a href="#" title="b0x" class="comments">Comments</a></p>
                    </div>
                </div>
                <div style="clear: both;">&nbsp;</div>
            </div>
            <!-- end #content -->
            <div id="sidebar">
                <ul>
                    <li>
                        <div id="search" >
                            <form method="get" action="#">
                                <div>
                                    <input type="text" name="s" id="search-text" value="" />
                                    <input type="submit" id="search-submit" value="GO" />
                                </div>
                            </form>
                        </div>
                        <div style="clear: both;">&nbsp;</div>
                    </li>
                    <li>
                        <h2>Aliquam tempus</h2>
                        <p>Mauris vitae nisl nec metus placerat perdiet est. Phasellus dapibus semper consectetuer hendrerit.</p>
                    </li>
                    <li>
                        <h2>Categories</h2>
                        <ul>
                            <li><a href="#">Aliquam libero</a></li>
                            <li><a href="#">Consectetuer adipiscing elit</a></li>
                            <li><a href="#">Metus aliquam pellentesque</a></li>
                            <li><a href="#">Suspendisse iaculis mauris</a></li>
                            <li><a href="#">Urnanet non molestie semper</a></li>
                            <li><a href="#">Proin gravida orci porttitor</a></li>
                        </ul>
                    </li>
                    <li>
                        <h2>Blogroll</h2>
                        <ul>
                            <li><a href="#">Aliquam libero</a></li>
                            <li><a href="#">Consectetuer adipiscing elit</a></li>
                            <li><a href="#">Metus aliquam pellentesque</a></li>
                            <li><a href="#">Suspendisse iaculis mauris</a></li>
                            <li><a href="#">Urnanet non molestie semper</a></li>
                            <li><a href="#">Proin gravida orci porttitor</a></li>
                        </ul>
                    </li>
                    <li>
                        <h2>Archives</h2>
                        <ul>
                            <li><a href="#">Aliquam libero</a></li>
                            <li><a href="#">Consectetuer adipiscing elit</a></li>
                            <li><a href="#">Metus aliquam pellentesque</a></li>
                            <li><a href="#">Suspendisse iaculis mauris</a></li>
                            <li><a href="#">Urnanet non molestie semper</a></li>
                            <li><a href="#">Proin gravida orci porttitor</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- end #sidebar -->
            <div style="clear: both;">&nbsp;</div>
        </div>
        <!-- end #page -->
    </div>
    <div id="footer-content">
        <div id="footer-bg" class="container">
            <div id="column1">
                <h2>Welcome to my website</h2>
                <p>In posuere eleifend odio quisque semper augue mattis wisi maecenas ligula. Donec leo, vivamus fermentum nibh in augue praesent a lacus at urna congue rutrum. Quisque dictum integer nisl risus, sagittis convallis, rutrum id, congue, and nibh.</p>
            </div>
            <div id="column2">
                <h2>Etiam rhoncus volutpat</h2>
                <p>Sed lacus. Donec lectus. Nullam pretium nibh ut turpis. Nam bibendum. In nulla tortor, elementum vel, tempor at, varius non, purus. Mauris vitae nisl nec metus consectetuer. Donec ipsum. Proin imperdiet est. Phasellus dapibus semper urna.</p>
            </div>
            <div id="column3">
                <h2>Recommended Links</h2>
                <ul>
                    <li><a href="#">Consectetuer adipiscing elit</a></li>
                    <li><a href="#">Metus aliquam pellentesque</a></li>
                    <li><a href="#">Suspendisse iaculis mauris</a></li>
                    <li><a href="#">Urnanet non molestie semper</a></li>
                    <li><a href="#">Proin gravida orci porttitor</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div id="footer">
        <p>&copy; Untitled. All rights reserved. Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
    </div>
    <script src="./script.js"></script>
</body>
</html>