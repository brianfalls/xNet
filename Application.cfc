component extends="framework.one" output="false" {

    this.name = 'NAGR-xNet';
	this.applicationTimeout = createTimeSpan(0, 0, 15, 0);
	this.setClientCookies = true;
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0, 0, 15, 0);

	// FW/1 settings
	variables.framework = {
		action = 'action',
		defaultSection = 'main',
		defaultItem = 'default',
		generateSES = true,
		SESOmitIndex = false,
		diEngine = "di1",
		diComponent = "framework.ioc",
		diLocations = "model, controllers",
        diConfig = { },
        routes = [ ],
        trace = true
	};

    this.datasources["xnetdb"] = {
	    class: 'com.microsoft.sqlserver.jdbc.SQLServerDriver',
        bundleName: 'mssqljdbc4',
        bundleVersion: '4.0.2206.100',
        connectionString: 'jdbc:sqlserver://server.nagrdev.com:1433;DATABASENAME=xnetdb;sendStringParametersAsUnicode=true;SelectMethod=direct',
        username: 'xnetuser',
        password: "encrypted:b2ee7875b7393d07125a5c3a7bf0192a98611902507a6e31a64a85a9013989c0"
    };

    this.ormEnabled       = true;
    this.datasource       = "xnetdb";
    this.ormSettings      = {
        cfclocation       = "models",
        dialect           = "MicrosoftSQLServer"
    };

    public void function setupApplication() {
        application.adminEmail = 'webmaster@nagrhq.org';
    }

	public void function setupSession() {
        controller( 'security.session' );
    }

	public void function setupRequest() {
        controller( 'security.authorize' );
    }

	public void function setupView() {  }

	public void function setupResponse() {  }

	public string function onMissingView(struct rc = {}) {
		return "Error 404 - Page not found.";
	}

}