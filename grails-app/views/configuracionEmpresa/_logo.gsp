<%@ page import="com.app.catalogos.ConfiguracionEmpresa" %>

<div class="form-group">
    <label class="col-lg-2 control-label" for="avatar">Logo</label>
    <div class="col-lg-10">
        <div class="profile-avatar">
            <img src="http://localhost:8080/Sicogaem/configuracionEmpresa/showImage/${configuracionEmpresaInstance.id}">
        </div>        
        <g:uploadForm action="uploadLogo">
            <g:hiddenField name="id" value="${configuracionEmpresaInstance?.id}" />
            <input type="file" name="logo" class="form-control" />
            <button class="btn btn-link gap-right10 tip pad5" title="Guardar image"><i class="icon16 i-upload gap-left0 gap-right0"></i></button>
            <!--input type="submit" /-->
            </g:uploadForm>
    </div>
</div><!-- End .control-group  -->