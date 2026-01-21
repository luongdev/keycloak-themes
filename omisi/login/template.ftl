<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true displayRequiredFields=false>
<!DOCTYPE html>
<html class="${properties.kcHtmlClass!}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <#if properties.meta?has_content>
        <#list properties.meta?split(' ') as meta>
            <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
        </#list>
    </#if>
    <title>${msg("loginTitle",(realm.displayName!''))}</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico" />
    <#if properties.stylesCommon?has_content>
        <#list properties.stylesCommon?split(' ') as style>
            <link href="${url.resourcesCommonPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');
    </style>
</head>
<body class="omisi-login-page">
    <div class="omisi-container">
        <!-- Left Panel - Branding -->
        <div class="omisi-left-panel">
            <div class="omisi-branding-content">
                <div class="omisi-logo-box">
                    <img src="${url.resourcesPath}/img/logo.png" alt="Logo" class="omisi-logo">
                </div>
                <h1 class="omisi-welcome-title">Chào mừng</h1>
                <p class="omisi-welcome-text">Đăng nhập để truy cập hệ thống quản lý của bạn</p>
            </div>
        </div>

        <!-- Right Panel - Form -->
        <div class="omisi-right-panel">
            <div class="omisi-form-container">
                <#if realm.internationalizationEnabled && locale.supported?size gt 1>
                    <div class="omisi-locale-dropdown">
                        <select id="locale-select" onchange="window.location.href=this.value">
                            <#list locale.supported as l>
                                <option value="${l.url}" <#if l.label == locale.current>selected</#if>>${l.label}</option>
                            </#list>
                        </select>
                    </div>
                </#if>

                <div class="omisi-form-header">
                    <h2 class="omisi-form-title">${msg("loginAccountTitle")}</h2>
                    <p class="omisi-form-subtitle">${msg("loginAccountSubtitle","Nhập thông tin tài khoản của bạn")}</p>
                </div>

                <#if displayMessage && message?has_content && (message.type != 'warning' || !isAppInitiatedAction??)>
                    <div class="omisi-alert omisi-alert-${message.type}">
                        ${kcSanitize(message.summary)?no_esc}
                    </div>
                </#if>

                <#nested "form">

                <#if displayInfo>
                    <#nested "info">
                </#if>

                <#nested "socialProviders">
            </div>
        </div>
    </div>
</body>
</html>
</#macro>
