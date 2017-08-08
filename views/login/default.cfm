<cfform action=#buildURL('login.login')# method='POST'>
    <input type="email" placeholder="Email Address" required />
    <input type="password" placeholder="Password" required />
    <input type="submit"  value="Log In" />
</cfform>

<ul>
    <li>form: <cfdump var="#form#"></li>
    <li>session: <cfdump var="#session#"></li>
    <li>application: <cfdump var="#application#"></li>


</ul>
