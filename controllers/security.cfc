component {

    function init( fw ) {
        variables.fw = fw;
    }

    function session( rc ) {

        session.auth = {};
        session.auth.isLoggedIn = false;
        session.auth.fullname = 'Guest';

    }

    function authorize( rc ) {

        if  ( not (StructKeyExists(session, "auth") && session.auth.isLoggedIn)
                && !ListFindNoCase('login', variables.fw.getSection())
                && !ListFindNoCase('main.error', variables.fw.getFullyQualifiedAction())
            )
            {
            // variables.fw.redirect('login');
        }

    }

}