<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main">
        <title>Perfil</title>
    </head>
    <body>
        <div class="container-fluid">
            <div id="heading" class="page-header">
                <h1><i class="icon20 i-user"></i> Página de perfil</h1>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="icon"><i class="icon20 i-user"></i></div> 
                            <h4>Datos del usuario</h4>
                            <a href="#" class="minimize"></a>
                        </div><!-- End .panel-heading -->

                        <div class="panel-body">
                            <g:form class="form-horizontal" name="userEditForm" controller="user" action="update" plugin="spring-security.ui" enctype ='multipart/form-data'>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="avatar">Avatar</label>
                                    <div class="col-lg-10">
                                        <div class="profile-avatar">
                                            <g:if test="${usuario.foto}">
                                                <g:link controller="imagen" action="mostrar" id="${usuario.id}">
                                                    <img width="30%" height="60%" src="http://localhost:8080/Sicogaem/imagen/mostrar/${usuario.id}">
                                                </g:link>
                                            </g:if>                                            
                                        </div>
                                        <%--<div class="uploader">
                                            <input type="foto" class="form-control"/>
                                            <span class="filename" style="-moz-user-select: none;">
                                                Ningún archivo seleccionado
                                            </span>
                                            <span class="action" style="-moz-user-select: none;">
                                                Elegir un archivo tipo imagen
                                            </span>
                                        </div>--%>
                                    </div>
                                </div><!-- End .control-group  -->
                                
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="username">Nombre de usuario:</label>
                                    
                                        ${usuario.username}
                                    
                                </div><!-- End .control-group  -->
                                
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="firstName">Nombre:</label>
                                    
                                        ${usuario.firstName}
                                    
                                </div><!-- End .control-group  -->
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="lastName">Apellidos:</label>
                                    
                                        ${usuario.lastName}
                                    
                                </div><!-- End .control-group  -->
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="email">em@il:</label>
                                    
                                        ${usuario.email}
                                    
                                </div><!-- End .control-group  -->
                                <%--<div class="form-group">
                                    <label class="col-lg-2 control-label" for="email">Contraseña</label>
                                    <div class="col-lg-10">
                                        <input class="form-control" type="password" name="password" value="somepass">
                                    </div>
                                </div>--%><!-- End .control-group  -->
                                <%--<div class="form-group">
                                    <label class="col-lg-2 control-label" for="email">Repeat password</label>
                                    <div class="col-lg-10">
                                        <input class="form-control" type="password" name="password1" value="">
                                    </div>
                                </div>--%><!-- End .control-group  -->
                                <%--<div class="form-group">
                                    <label class="col-lg-2 control-label" for="gender">Género</label>
                                    <div class="checkbox-inline">
                                        <label for="Hombre">
                                            <span class="checked">
                                                <input type="radio" name="radio" value="1"  checked=""/>Hombre                                            
                                            </span>
                                        </label>                        
                                        <label for="Mujer">
                                            <span class="checked">                                           
                                                <input type="radio" name="radio" value="2"/>Mujer
                                            </span>
                                        </label>
                                    </div>
                                </div>--%><!-- End .control-group  -->
                                <%--<div class="form-group">
                                    <label class="col-lg-2 control-label" for="info">More info</label>
                                    <div class="col-lg-10">
                                        <textarea name="info" id="info" rows="5" class="col-lg-20"></textarea>
                                    </div>
                                </div>--%><!-- End .control-group  -->

                                <div class="form-group">
                                    <div class="col-lg-offset-2">
                                        <div class="pad-left15">
                                            <g:link class="btn btn-go" controller="user" action="edit" id="${usuario.id}">Editar</g:link>
                                            <%--<button type="submit" class="btn btn-primary">Guardar cambios</button>--%>
                                            <%--<button type="button" class="btn">Cancelar</button>--%>
                                        </div>                                                
                                    </div>      
                                </div>
                            </g:form>
                        </div><!-- End .panel-body -->
                    </div><!-- End .widget -->

                </div><!-- End .col-lg-12  --> 
            </div><!-- End .row-fluid  -->

        </div> <!-- End .container-fluid  -->
    </body>
</html>
