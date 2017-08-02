component name="auth" accessors="true" {

    property framework;
    property userEntityBean;

    public void function authorize () {

        if ( session.loggedIn ) {
            variables.framework.renderdata( "json", "User Authorized" );
        } else {
            variables.framework.redirect( action = 'login' );
        }
    }

    public void function authenticate ( form ) {
        var user = userEntityBean.getByEmail();
    }

}