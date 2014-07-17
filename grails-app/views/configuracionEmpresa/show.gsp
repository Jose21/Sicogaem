
<%@ page import="com.app.catalogos.ConfiguracionEmpresa" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'configuracionEmpresa.label', default: 'ConfiguracionEmpresa')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>             
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">                    
                    <div class="panel panel-default">                        
                        <div class="panel-heading">
                            <div class="icon"><i class="icon20 i-profile"></i></div> 
                            <h4>Datos Generales</h4>                        
                        </div><!-- End .panel-heading -->                       
                    </div>
                    <g:render template="/shared/alerts" />
                    <div class="col-lg-8">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="icon"><i class="icon20 i-address-book-2"></i></div> 
                                <h4>Modificar Datos</h4>
                                <a href="#" class="minimize"></a>
                            </div><!-- End .panel-heading -->
                            <div class="panel-body ">
                                <div class="chat-layout">
                                    <div class="panel-body">
                                        <div class="toDo">
                                            <g:if test="${configuracionEmpresaInstance?.nombreDeEmpresa}">
                                                <h4 class="period"><span id="nombreDeEmpresa-label" class="property-label"><g:message code="configuracionEmpresa.nombreDeEmpresa.label" default="Nombre De Empresa" /></span></h4>                                
                                                <ul class="todo-list" id="today">
                                                    <li class="task-item clearfix">                                        
                                                        <span class="priority tip"><i class="icon12 i-circle-2"></i></span>                                        
                                                        <span class="task">
                                                            <span class="property-value" aria-labelledby="nombreDeEmpresa-label"><g:fieldValue bean="${configuracionEmpresaInstance}" field="nombreDeEmpresa"/></span>
                                                        </span>                                            
                                                    </li>
                                                </ul>
                                            </g:if>                              
                                            <g:if test="${configuracionEmpresaInstance?.domicilio}">
                                                <h4 class="period"><span id="domicilio-label" class="property-label"><g:message code="configuracionEmpresa.domicilio.label" default="Domicilio" /></span></h4>                                
                                                <ul class="todo-list" id="today">
                                                    <li class="task-item clearfix">                                            
                                                        <span class="priority tip"><i class="icon12 i-circle-2"></i></span>                                            
                                                        <span class="task">
                                                            <span class="property-value" aria-labelledby="domicilio-label"><g:fieldValue bean="${configuracionEmpresaInstance}" field="domicilio"/></span>
                                                        </span>                                            
                                                    </li>
                                                </ul>
                                            </g:if>
                                            <g:if test="${configuracionEmpresaInstance?.email}">
                                                <h4 class="period"><span id="domicilio-label" class="property-label"><g:message code="configuracionEmpresa.email.label" default="Correo Electrónico" /></span></h4>                                
                                                <ul class="todo-list" id="today">
                                                    <li class="task-item clearfix">                                            
                                                        <span class="priority tip"><i class="icon12 i-circle-2"></i></span>                                            
                                                        <span class="task">
                                                            <span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${configuracionEmpresaInstance}" field="email"/></span>
                                                        </span>                                            
                                                    </li>
                                                </ul>
                                            </g:if>
                                        </div>
                                    </div>
                                    <div class="panel-heading">

                                        <g:form url="[resource:estadoInstance, action:'delete']" method="DELETE">
                                            <g:link class="btn btn-warning" action="edit" resource="${configuracionEmpresaInstance}">
                                                <i class="icon16 i-pencil-5"></i> Editar
                                            </g:link>                                            
                                            <!--g:actionSubmit class="delete" action="delete" id="${configuracionEmpresaInstance.id}" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /-->
                                        </g:form>
                                    </div>
                                </div>
                            </div><!-- End .panel-body -->
                        </div><!-- End .widget -->
                    </div><!-- End .col-lg-6  -->
                    <div class="col-lg-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="icon"><i class="icon20 i-image-2"></i></div> 
                                <h4>Logo de la Empresa</h4>
                                <a href="#" class="minimize"></a>
                            </div><!-- End .panel-heading -->

                            <div class="panel-body ">
                                <div class="chat-layout">
                                    <ul>
                                        <li class="clearfix leftside">
                                            <g:render template="logo"/>
                                        </li>
                                    </ul>                                   
                                </div>
                            </div><!-- End .panel-body -->
                        </div><!-- End .widget -->
                    </div><!-- End .col-lg-6  -->
                </div>
                </body>
                </html>
