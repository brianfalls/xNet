component name="auth" accessors="true" {

    property securityService;

    function authorize ( session ) {
        securityService.authorize( session );
    }

    function authenticate ( form ) {
        securityService.authenticate( form );
    }

}