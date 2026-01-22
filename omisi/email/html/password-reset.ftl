<#import "template.ftl" as layout>
<@layout.emailLayout>
<p>${msg("passwordResetBodyHtml", link, linkExpiration, realmName, linkExpirationFormatter(linkExpiration))}</p>
<p style="text-align: center;">
    <a href="${link}" class="email-button">${msg("passwordResetBtn")}</a>
</p>
<p style="font-size: 14px; color: #6b7280;">${msg("passwordResetLinkNote")}</p>
<p style="word-break: break-all; font-size: 14px;"><a href="${link}" class="email-link">${link}</a></p>
</@layout.emailLayout>
