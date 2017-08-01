component accessors = true {

    property ormService;

    function authorize ( session ) {
        variables.fw.renderData()
            .data( result )
            .type( "json" );

        if ( session.loggedIn ) {
            variables.fw.renderer().header( "X-result", "User Authorized" );
        } else {
            variables.fw.renderer().header( "X-result", "User Failed Authorization" );
        }
    }

    function authenticate ( form ) {
        var user = ormService.getByEmail();
    }

}