<#import "template.ftl" as layout>
<@layout.emailLayout>
<p>${msg("eventRemoveTotpBodyHtml", event.date, event.ipAddress)}</p>
<p style="font-size: 14px; color: #6b7280;">${msg("eventRemoveTotpNote")}</p>
</@layout.emailLayout>
