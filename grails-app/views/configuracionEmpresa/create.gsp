<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'configuracionEmpresa.label', default: 'ConfiguracionEmpresa')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="icon"><i class="icon20 i-user"></i></div> 
                            <h4>Datos Generales</h4>
                            <a href="#" class="minimize"></a>
                        </div><!-- End .panel-heading -->
                        <div class="panel-body">                            
                            <div class="container-fluid">                               
                                <g:if test="${flash.message}">
                                    <div class="message" role="status">${flash.message}</div>
                                </g:if>
                                <g:hasErrors bean="${configuracionEmpresaInstance}">
                                    <ul class="errors" role="alert">
                                        <g:eachError bean="${configuracionEmpresaInstance}" var="error">
                                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                            </g:eachError>
                                    </ul>
                                </g:hasErrors>
                                <g:form url="[resource:configuracionEmpresaInstance, action:'save']" class="form-horizontal" role="form" >
                                    <fieldset class="form">
                                        <g:render template="form"/>
                                    </fieldset>                                    
                                    <div class="form-group">
                                        <div class="col-lg-offset-2">
                                            <div class="pad-left15">
                                                <g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />                                                
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
