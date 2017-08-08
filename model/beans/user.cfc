component persistent = true {

    property name = "UserID"        column = "UserID"        fieldtype = "id" generator = "native";
    property name = "userName"      column = "userName";
    property name = "firstName"     column = "firstName";
    property name = "lastName"      column = "lastName";
    property name = "email"         column = "email";
    property name = "isActive"      column = "isActive";
    property name = "passwordHash"  column = "passwordHash";
    property name = "passwordSalt"  column = "passwordSalt";
    property name = "userRole"      column = "userRole";

    public function init(
        string UserID = 0,
        string userName = "",
        string firstName = "",
        string lastName = "",
        string email = "",
        string isActive = "",
        string passwordHash = "",
        string passwordSalt = "",
        string userRole = ""
        ) {
            variables.UserID = UserID;
            variables.userName = username;
            variables.firstName = firstName;
            variables.lastName = lastName;
            variables.email = email;
            variables.isActive = isActive;
            variables.passwordHash = passwordHash;
            variables.passwordSalt = passwordSalt;
            variables.userRole = userRole;

            return this;
    }

}