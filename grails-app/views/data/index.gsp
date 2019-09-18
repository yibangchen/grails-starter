<%--
  Created by IntelliJ IDEA.
  User: Yibang Chen
  Date: 9/17/2019
  Time: 2:09 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <g:javascript library="jquery" plugin="jquery"/>
    <title></title>
</head>

<body>
<g:form controller="data" action="save" class="container">
    <g:textField name="firstName" placeholder="First Name" class="flex-item field"/><br/>
    <g:textField name="lastName" placeholder="Last Name" class="flex-item field"/><br/>
    <g:textField name="age" placeholder="age" class="flex-item field"/><br/>
    <g:actionSubmit value="Save" class="flex-item button"/>
</g:form>

    <g:each in="${data}" var="person" status="i">
        <div class="container profile">
            <div class="flex-item list-item">${person.lastName}</div>
            <div class="flex-item list-item">${person.firstName}</div>
            <div class="flex-item list-item">${person.age}</div>
            <div class="flex-item button delete-profile"> x </div>
        </div>
        <br/>
    </g:each>

<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
<script>
    function deleteProfile(id){
        // delete from view
        // remove from database

    }
</script>

</body>
</html>