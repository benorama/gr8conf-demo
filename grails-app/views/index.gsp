<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Gr8Conf demo</a>
        </div>
        <div class="navbar-collapse collapse">
            <form class="navbar-form navbar-right" role="form">
                <div class="form-group">
                    <input type="text" placeholder="Email" class="form-control">
                </div>
                <div class="form-group">
                    <input type="password" placeholder="Password" class="form-control">
                </div>
                <button type="submit" class="btn btn-success">Sign in</button>
            </form>
        </div><!--/.navbar-collapse -->
    </div>
</div>

<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
    <div class="container">
        <h1>
            Should I deploy to production ?
        </h1>
        <sec:ifLoggedIn>
            <p>
                Welcome Back!
            </p>
        </sec:ifLoggedIn>

        <sec:ifNotLoggedIn>
            <p>
                Please authenticate to get the answer !
            </p>
            <p>
                <oauth:connect provider="facebook" class="btn btn-default btn-lg">
                    <i class="fa fa-facebook-square"></i>
                    Connect with Facebook
                </oauth:connect>
            </p>
            <p>
                <oauth:connect provider="twitter" class="btn btn-default btn-lg">
                    <span class="fa fa-twitter-square"></span>
                    Connect with Twitter
                </oauth:connect>
            </p>
        </sec:ifNotLoggedIn>
    </div>
</div>

<div class="container">
    Logged with facebook?
    <s2o:ifLoggedInWith provider="facebook">yes</s2o:ifLoggedInWith>
    <s2o:ifNotLoggedInWith provider="facebook">no</s2o:ifNotLoggedInWith><br/>

    Logged with twitter?
    <s2o:ifLoggedInWith provider="twitter">yes</s2o:ifLoggedInWith>
    <s2o:ifNotLoggedInWith provider="twitter">no</s2o:ifNotLoggedInWith>

    <hr>

    <footer>
        <p>&copy; <a href="">Company</a> 2014</p>
    </footer>
</div>