<html>
    <%@ page import="grails.util.Holders" %>

    <sec:ifNotSwitched>
        <sec:ifAllGranted roles='ROLE_SWITCH_USER'>
            <g:if test='${user.username}'>
                <g:set var='canRunAs' value='${true}'/>
            </g:if>
        </sec:ifAllGranted>
    </sec:ifNotSwitched>

    <head>
        <meta name='layout' content='springSecurityUI'/>
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
        <title><g:message code="default.edit.label" args="[entityName]"/></title>
    </head>

    <body>

        <h3><g:message code="default.edit.label" args="[entityName]"/></h3>

        <g:form action="update" name='userEditForm' class="button-style" enctype ='multipart/form-data'>
            <g:hiddenField name="id" value="${user?.id}"/>
            <g:hiddenField name="version" value="${user?.version}"/>

            <%
def tabData = []
tabData << [name: 'userinfo', icon: 'icon_user', messageCode: 'spring.security.ui.user.info']
tabData << [name: 'roles',    icon: 'icon_role', messageCode: 'spring.security.ui.user.roles']
boolean isOpenId = Holders.pluginManager.hasGrailsPlugin('springSecurityOpenid')
if (isOpenId) {
    tabData << [name: 'openIds', icon: 'icon_role', messageCode: 'spring.security.ui.user.openIds']
}
%>

        <s2ui:tabs elementId='tabs' height='375' data="${tabData}">

            <s2ui:tab name='userinfo' height='350'>
                <table class="table">

                  <tbody>
                    <g:if test="${user.foto}">
                        <g:link controller="imagen" action="mostrar" id="${user.id}">${fieldValue(bean: userInstance, field: "id")}
                            <img width="30%" height="60%" src="http://localhost:8080/Sicogaem/imagen/mostrar/${user.id}">
                        </g:link> 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Elegir otra imagen: &nbsp;&nbsp;<input type="file" name="foto"/>
                    </g:if>
                    <g:else>
                    &nbsp;Elegir imagen &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="file" name="foto"/>
                    </g:else>
                    <p></p>
                    <s2ui:textFieldRow name='firstName' labelCode='user.firstName.label' bean="${user}"
                                       labelCodeDefault='Nombre' value="${user?.firstName}"/>

                    <s2ui:textFieldRow name='lastName' labelCode='user.lastName.label' bean="${user}"
                                       labelCodeDefault='Apellidos' value="${user?.lastName}"/>

                    <s2ui:textFieldRow name='email' labelCode='user.email.label' bean="${user}"
                                       labelCodeDefault='Email' value="${user?.email}"/>

                    <s2ui:textFieldRow name='username' labelCode='user.username.label' bean="${user}"
                                       labelCodeDefault='Username' value="${user?.username}"/>
                    
                    <s2ui:passwordFieldRow name='password' labelCode='user.password.label' bean="${user}"
                                               labelCodeDefault='Password' value="${user?.password}"/>                          

                    <s2ui:checkboxRow name='enabled' labelCode='user.enabled.label' bean="${user}"
                                      labelCodeDefault='Enabled' value="${user?.enabled}"/>

                    <s2ui:checkboxRow name='accountExpired' labelCode='user.accountExpired.label' bean="${user}"
                                      labelCodeDefault='Account Expired' value="${user?.accountExpired}"/>

                    <s2ui:checkboxRow name='accountLocked' labelCode='user.accountLocked.label' bean="${user}"
                                      labelCodeDefault='Account Locked' value="${user?.accountLocked}"/>

                    <s2ui:checkboxRow name='passwordExpired' labelCode='user.passwordExpired.label' bean="${user}"
                                      labelCodeDefault='Password Expired' value="${user?.passwordExpired}"/>
                  </tbody>
                </table>
            </s2ui:tab>

            <s2ui:tab name='roles' height='275'>
                <g:each var="entry" in="${roleMap}">
                    <div>
                        <g:checkBox name="${entry.key.authority}" value="${entry.value}"/>
                        <g:link controller='role' action='edit' id='${entry.key.id}'>${entry.key.authority.encodeAsHTML()}</g:link>
                        </div>
                </g:each>
            </s2ui:tab>

            <g:if test='${isOpenId}'>
                <s2ui:tab name='openIds' height='275'>
                    <g:if test='${user?.openIds}'>
                        <ul>
                            <g:each var="openId" in="${user.openIds}">
                                <li>${openId.url}</li>
                                </g:each>
                        </ul>
                    </g:if>
                    <g:else>
                        No OpenIDs registered
                    </g:else>
                </s2ui:tab>
            </g:if>

        </s2ui:tabs>

        <div style='float:left; margin-top: 10px;'>
            <s2ui:submitButton elementId='update' form='userEditForm' messageCode='default.button.update.label'/>

            <g:if test='${user}'>
                <s2ui:deleteButton />
            </g:if>

            <g:if test='${canRunAs}'>
                <a id="runAsButton">${message(code:'spring.security.ui.runas.submit')}</a>
            </g:if>

        </div>

    </g:form>

    <g:if test='${user}'>
        <s2ui:deleteButtonForm instanceId='${user.id}'/>
    </g:if>

    <g:if test='${canRunAs}'>
        <form name='runAsForm' action='${request.contextPath}/j_spring_security_switch_user' method='POST'>
            <g:hiddenField name='j_username' value="${user.username}"/>
            <input type='submit' class='s2ui_hidden_button' />
        </form>
    </g:if>

    <script>
        $(document).ready(function() {
        $('#username').focus();

	<s2ui:initCheckboxes/>

        $("#runAsButton").button();
        $('#runAsButton').bind('click', function() {
        document.forms.runAsForm.submit();
        });
        });
    </script>

</body>
</html>
