component accessors = true {

    property userEntityBean;

    public void function getByEmail ( session ) {
        var user = userEntityBean.getByEmail ( session.userEmail )
    };

}