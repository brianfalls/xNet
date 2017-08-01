component persistent = true {

    property name = "UserID"        column = "UserID" fieldtype = "id" generator = "native";
    property name = "userName"      column = "userName";
    property name = "firstName"     column = "firstName";
    property name = "lastName"      column = "lastName";
    property name = "email"         column = "email";
    property name = "isActive"      column = "isActive";
    property name = "passwordHash"  column = "passwordHash";
    property name = "passwordSalt"  column = "passwordSalt";
    property name = "userRole"      column = "userRole";

    public void function getByEmail( email ) {
        var user = entityLoad( "user", { email: email } );
        return user;
    }

}