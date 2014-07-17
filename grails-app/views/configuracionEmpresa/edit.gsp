<%@ page import="com.app.catalogos.ConfiguracionEmpresa" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'configuracionEmpresa.label', default: 'ConfiguracionEmpresa')}" />
        <title>Editar</title>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div id="edit-configuracionEmpresa" class="content scaffold-edit" role="main">                                          
                            <g:hasErrors bean="${configuracionEmpresaInstance}">
                                <ul class="errors" role="alert">
                                    <g:eachError bean="${configuracionEmpresaInstance}" var="error">
                                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                        </g:eachError>
                                </ul>           
                            </g:hasErrors>
                        </div>
                        <div class="panel-heading">
                            <div class="icon"><i class="icon20 i-user"></i></div> 
                            <h4>Datos Generales</h4>
                            <a href="#" class="minimize"></a>
                        </div><!-- End .panel-heading -->
                        <g:render template="/shared/alerts" />
                        </br>
                        <div class="panel-body">                            
                            <div class="container-fluid">
                                <g:form url="[resource:configuracionEmpresaInstance, action:'update']" method="PUT" >
                                    <g:hiddenField name="version" value="${configuracionEmpresaInstance?.version}" />
                                    <fieldset class="form">
                                        <g:render template="form"/>
                                    </fieldset>
                                    </br>
                                    </br>
                                    <div class="form-group">
                                        <div class="col-lg-offset-2">
                                            <div class="pad-left15">
                                                <g:actionSubmit class="btn btn-success" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                                            </div>
                                        </div>
                                    </div>
                                </g:form>
                            </div>
                        </div><!-- End .panel-body -->
                    </div><!-- End .widget -->
                </div><!-- End .col-lg-12  --> 
            </div><!-- End .row-fluid  -->
        </div> <!-- End .container-fluid  -->    
    </body>
</html>
