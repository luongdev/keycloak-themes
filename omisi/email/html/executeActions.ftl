<#import "template.ftl" as layout>
<@layout.emailLayout>
<p>${msg("executeActionsBodyHtml", link, linkExpiration, realmName, linkExpirationFormatter(linkExpiration), requiredActionsText)}</p>
<p style="text-align: center;">
    <a href="${link}" class="email-button">${msg("executeActionsBtn")}</a>
</p>
<p style="font-size: 14px; color: #6b7280;">${msg("executeActionsLinkNote")}</p>
<p style="word-break: break-all; font-size: 14px;"><a href="${link}" class="email-link">${link}</a></p>
</@layout.emailLayout>
