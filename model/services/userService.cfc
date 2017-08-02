component accessors = true {

    function init( any beanFactory ) {
        variables.beanFactory = beanFactory;
        variables.users = ormstuffhere;

        return this;
    }

    function getByEmail( string email ) {
        var result = "";

        if ( len(email) ){
            for ( var userId in variables.users ) {
                var user = variables.users[ userId ];
                if( !CompareNoCase(email, user.getEmail() ) ) {
                    result = user;
                }
            }
        }

        if ( !IsStruct( result ) ) {
            result = variables.beanFactory.getBean( "userBean" );
        }

        return result;

    }

    /* cflib.org */

    /**
    * Tests passed value to see if it is a valid e-mail address (supports subdomain nesting and new top-level domains).
    * Update by David Kearns to support '
    * SBrown@xacting.com pointing out regex still wasn't accepting ' correctly.
    * Should support + gmail style addresses now.
    * More TLDs
    * Version 4 by P Farrel, supports limits on u/h
    * Added mobi
    * v6 more tlds
    *
    * @param str      The string to check. (Required)
    * @return Returns a boolean.
    * @author Jeff Guillaume (SBrown@xacting.comjeff@kazoomis.com)
    * @version 7, May 8, 2009
    */
    function isEmail(str) {
        return REFindNoCase("^['_a-z0-9-\+]+(\.['_a-z0-9-\+]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*\.(([a-z]{2,3})|(aero|asia|biz|cat|coop|info|museum|name|jobs|post|pro|tel|travel|mobi))$",str) &&
            len( listFirst(str, "@") ) <= 64 &&
            len( listRest(str, "@") ) <= 255;
    }

}