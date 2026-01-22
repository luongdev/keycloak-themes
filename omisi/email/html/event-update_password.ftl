<#import "template.ftl" as layout>
<@layout.emailLayout>
<p>${msg("eventUpdatePasswordBodyHtml", event.date, event.ipAddress)}</p>
<p style="font-size: 14px; color: #6b7280;">${msg("eventUpdatePasswordNote")}</p>
</@layout.emailLayout>
