<#import "template.ftl" as layout>
<@layout.emailLayout>
<p>${msg("emailVerificationBodyHtml", link, linkExpiration, realmName, linkExpirationFormatter(linkExpiration))}</p>
<p style="text-align: center;">
    <a href="${link}" class="email-button">${msg("emailVerificationBtn")}</a>
</p>
<p style="font-size: 14px; color: #6b7280;">${msg("emailVerificationLinkNote")}</p>
<p style="word-break: break-all; font-size: 14px;"><a href="${link}" class="email-link">${link}</a></p>
</@layout.emailLayout>
