<#import "template.ftl" as layout>
<@layout.emailLayout>
<p>${msg("eventUpdateTotpBodyHtml", event.date, event.ipAddress)}</p>
<p style="font-size: 14px; color: #6b7280;">${msg("eventUpdateTotpNote")}</p>
</@layout.emailLayout>
