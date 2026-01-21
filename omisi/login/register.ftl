<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('firstName','lastName','email','username','password','password-confirm'); section>
    <#if section = "form">
        <form id="kc-register-form" action="${url.registrationAction}" method="post">
            <#if !realm.registrationEmailAsUsername>
                <div class="omisi-form-group">
                    <label for="username" class="omisi-label">${msg("username")} <span class="omisi-required">*</span></label>
                    <div class="omisi-input-wrapper">
                        <input type="text" id="username" class="omisi-input" name="username"
                               value="${(register.formData.username!'')}"
                               aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"
                               placeholder="${msg("usernamePlaceholder","Enter username")}"
                               autocomplete="username"
                        />
                        <span class="omisi-input-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                <circle cx="12" cy="7" r="4"></circle>
                            </svg>
                        </span>
                    </div>
                    <#if messagesPerField.existsError('username')>
                        <span class="omisi-error-message" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('username'))?no_esc}
                        </span>
                    </#if>
                </div>
            </#if>

            <div class="omisi-form-group">
                <label for="email" class="omisi-label">${msg("email")} <span class="omisi-required">*</span></label>
                <div class="omisi-input-wrapper">
                    <input type="email" id="email" class="omisi-input" name="email"
                           value="${(register.formData.email!'')}"
                           aria-invalid="<#if messagesPerField.existsError('email')>true</#if>"
                           placeholder="${msg("emailPlaceholder","Enter email")}"
                           autocomplete="email"
                    />
                    <span class="omisi-input-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
                            <polyline points="22,6 12,13 2,6"></polyline>
                        </svg>
                    </span>
                </div>
                <#if messagesPerField.existsError('email')>
                    <span class="omisi-error-message" aria-live="polite">
                        ${kcSanitize(messagesPerField.get('email'))?no_esc}
                    </span>
                </#if>
            </div>

            <div class="omisi-form-group">
                <label for="firstName" class="omisi-label">${msg("firstName")} <span class="omisi-required">*</span></label>
                <div class="omisi-input-wrapper">
                    <input type="text" id="firstName" class="omisi-input" name="firstName"
                           value="${(register.formData.firstName!'')}"
                           aria-invalid="<#if messagesPerField.existsError('firstName')>true</#if>"
                           placeholder="${msg("firstNamePlaceholder","Enter first name")}"
                    />
                    <span class="omisi-input-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                            <circle cx="12" cy="7" r="4"></circle>
                        </svg>
                    </span>
                </div>
                <#if messagesPerField.existsError('firstName')>
                    <span class="omisi-error-message" aria-live="polite">
                        ${kcSanitize(messagesPerField.get('firstName'))?no_esc}
                    </span>
                </#if>
            </div>

            <div class="omisi-form-group">
                <label for="lastName" class="omisi-label">${msg("lastName")} <span class="omisi-required">*</span></label>
                <div class="omisi-input-wrapper">
                    <input type="text" id="lastName" class="omisi-input" name="lastName"
                           value="${(register.formData.lastName!'')}"
                           aria-invalid="<#if messagesPerField.existsError('lastName')>true</#if>"
                           placeholder="${msg("lastNamePlaceholder","Enter last name")}"
                    />
                    <span class="omisi-input-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                            <circle cx="12" cy="7" r="4"></circle>
                        </svg>
                    </span>
                </div>
                <#if messagesPerField.existsError('lastName')>
                    <span class="omisi-error-message" aria-live="polite">
                        ${kcSanitize(messagesPerField.get('lastName'))?no_esc}
                    </span>
                </#if>
            </div>

            <#if passwordRequired??>
                <div class="omisi-form-group">
                    <label for="password" class="omisi-label">${msg("password")} <span class="omisi-required">*</span></label>
                    <div class="omisi-input-wrapper">
                        <input type="password" id="password" class="omisi-input" name="password"
                               aria-invalid="<#if messagesPerField.existsError('password','password-confirm')>true</#if>"
                               placeholder="${msg("passwordPlaceholder","Enter password")}"
                               autocomplete="new-password"
                        />
                        <span class="omisi-input-icon omisi-password-toggle" onclick="togglePassword('password', 'eye-password')">
                            <svg id="eye-password" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
                                <circle cx="12" cy="12" r="3"></circle>
                            </svg>
                        </span>
                    </div>
                    <#if messagesPerField.existsError('password')>
                        <span class="omisi-error-message" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('password'))?no_esc}
                        </span>
                    </#if>
                </div>

                <div class="omisi-form-group">
                    <label for="password-confirm" class="omisi-label">${msg("passwordConfirm")} <span class="omisi-required">*</span></label>
                    <div class="omisi-input-wrapper">
                        <input type="password" id="password-confirm" class="omisi-input" name="password-confirm"
                               aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>"
                               placeholder="${msg("passwordConfirmPlaceholder","Confirm password")}"
                               autocomplete="new-password"
                        />
                        <span class="omisi-input-icon omisi-password-toggle" onclick="togglePassword('password-confirm', 'eye-password-confirm')">
                            <svg id="eye-password-confirm" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
                                <circle cx="12" cy="12" r="3"></circle>
                            </svg>
                        </span>
                    </div>
                    <#if messagesPerField.existsError('password-confirm')>
                        <span class="omisi-error-message" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                        </span>
                    </#if>
                </div>
            </#if>

            <#if recaptchaRequired??>
                <div class="omisi-form-group">
                    <div class="g-recaptcha" data-size="compact" data-sitekey="${recaptchaSiteKey}"></div>
                </div>
            </#if>

            <div class="omisi-form-group">
                <a href="${url.loginUrl}" class="omisi-back-link">${msg("backToLogin")}</a>
            </div>

            <div class="omisi-form-buttons">
                <button class="omisi-btn-primary" type="submit">
                    ${msg("doRegister")}
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <line x1="5" y1="12" x2="19" y2="12"></line>
                        <polyline points="12 5 19 12 12 19"></polyline>
                    </svg>
                </button>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>

<script>
function togglePassword(inputId, iconId) {
    var passwordInput = document.getElementById(inputId);
    var eyeIcon = document.getElementById(iconId);
    if (passwordInput.type === 'password') {
        passwordInput.type = 'text';
        eyeIcon.style.opacity = '0.5';
    } else {
        passwordInput.type = 'password';
        eyeIcon.style.opacity = '1';
    }
}
</script>
