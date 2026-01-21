<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username') displayInfo=true; section>
    <#if section = "form">
        <form id="kc-reset-password-form" action="${url.loginAction}" method="post">
            <div class="omisi-form-group">
                <label for="username" class="omisi-label">
                    <#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>
                </label>
                <div class="omisi-input-wrapper">
                    <input type="text" id="username" name="username" class="omisi-input" autofocus
                           value="${(auth.attemptedUsername!'')}"
                           aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"
                           placeholder="<#if !realm.loginWithEmailAllowed>${msg("usernamePlaceholder","Enter username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmailPlaceholder","Enter username or email")}<#else>${msg("emailPlaceholder","Enter email")}</#if>"
                    />
                    <span class="omisi-input-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
                            <polyline points="22,6 12,13 2,6"></polyline>
                        </svg>
                    </span>
                </div>
                <#if messagesPerField.existsError('username')>
                    <span class="omisi-error-message" aria-live="polite">
                        ${kcSanitize(messagesPerField.get('username'))?no_esc}
                    </span>
                </#if>
            </div>

            <div class="omisi-form-group">
                <a href="${url.loginUrl}" class="omisi-back-link">${msg("backToLogin")}</a>
            </div>

            <div class="omisi-form-buttons">
                <button class="omisi-btn-primary" type="submit">
                    ${msg("doSubmit")}
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <line x1="5" y1="12" x2="19" y2="12"></line>
                        <polyline points="12 5 19 12 12 19"></polyline>
                    </svg>
                </button>
            </div>
        </form>
    <#elseif section = "info">
        <div class="omisi-info-text">
            ${msg("emailInstruction")}
        </div>
    </#if>
</@layout.registrationLayout>
