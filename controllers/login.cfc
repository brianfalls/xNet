component accessors=true {

    property userService;

    function init( fw ) {
        variables.fw = fw;
        return this;
    }

    function before( rc ) {
        if (StructKeyExists(session, "auth") && session.auth.isLoggedIn && variables.fw.getItem != "logout") {
            variables.fw.redirect( "main ");
        }
    }

    function login( rc ) {

        writeDump("kilroy");
        abort;

        if ( !StructKeyExists(rc, "email") || !StructKeyExists(rc, "password") ) {
            variables.fw.redirect( "login" );
        }

        var user = variables.userService.getByEmail( rc.email );

        if ( user ) {
            variables.userService.validatePassword( user, rc.password );

        } else {
            rc.message = ["Invalid Username or Password"];
            variables.fw.redirect( "login", "You're not logged in; good luck with that!" );
        }

        session.auth.isLoggedIn = true;
        session.auth.fullname = user.getFirstName() & " " & user.getLastName();
        session.auth.user = user;

        variables.fw.redirect( "main" );

    }

    function logout( rc ) {

        session.auth.isLoggedIn = false;
        session.auth.fullname = "Guest";
        StructDelete( session.auth, "user" );
        rc.message = ["You have successfully logged out, good job!"];
        variables.fw.redirect( "login", "Log In" );

    }

}