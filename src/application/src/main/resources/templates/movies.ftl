<#import "/spring.ftl" as spring>
<html>
<h1>My Movies</h1>
<ul>
<#list movies as movie>
    <li>${movie}</li>
</#list>
</ul>
<br>
<a href="/">Go Back</a>
</html>