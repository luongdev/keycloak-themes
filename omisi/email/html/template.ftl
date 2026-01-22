<#macro emailLayout>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>${msg("emailTitle", realmName)}</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');

        body {
            margin: 0;
            padding: 0;
            background-color: #f3f4f6;
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            font-size: 16px;
            line-height: 1.6;
            color: #1a1a1a;
        }

        .email-wrapper {
            width: 100%;
            background-color: #f3f4f6;
            padding: 40px 20px;
        }

        .email-container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #ffffff;
            border-radius: 16px;
            overflow: hidden;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
        }

        .email-header {
            background: linear-gradient(160deg, #5AB9A5 0%, #3D9B8F 50%, #2D8B7A 100%);
            padding: 40px 30px;
            text-align: center;
        }

        .email-logo {
            max-width: 150px;
            height: auto;
            margin-bottom: 20px;
        }

        .email-header-title {
            color: #ffffff;
            font-size: 24px;
            font-weight: 600;
            margin: 0;
        }

        .email-body {
            padding: 40px 30px;
        }

        .email-body p {
            margin: 0 0 16px 0;
            color: #4b5563;
        }

        .email-body p:last-child {
            margin-bottom: 0;
        }

        .email-button {
            display: inline-block;
            background: #3D9B8F;
            color: #ffffff !important;
            text-decoration: none;
            padding: 14px 32px;
            border-radius: 8px;
            font-weight: 500;
            font-size: 16px;
            margin: 24px 0;
            transition: background 0.2s;
        }

        .email-button:hover {
            background: #2D8B7A;
        }

        .email-link {
            color: #3D9B8F;
            text-decoration: none;
        }

        .email-link:hover {
            text-decoration: underline;
        }

        .email-code {
            display: inline-block;
            background: #f3f4f6;
            padding: 12px 24px;
            border-radius: 8px;
            font-family: monospace;
            font-size: 24px;
            font-weight: 600;
            letter-spacing: 4px;
            color: #1a1a1a;
            margin: 16px 0;
        }

        .email-footer {
            padding: 24px 30px;
            background: #f9fafb;
            text-align: center;
            border-top: 1px solid #e5e7eb;
        }

        .email-footer p {
            margin: 0;
            font-size: 14px;
            color: #9ca3af;
        }

        .email-footer a {
            color: #3D9B8F;
            text-decoration: none;
        }

        @media only screen and (max-width: 600px) {
            .email-wrapper {
                padding: 20px 10px;
            }

            .email-header {
                padding: 30px 20px;
            }

            .email-body {
                padding: 30px 20px;
            }

            .email-footer {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <div class="email-wrapper">
        <div class="email-container">
            <div class="email-header">
                <#if realmName?has_content>
                    <h1 class="email-header-title">${realmName}</h1>
                </#if>
            </div>
            <div class="email-body">
                <#nested>
            </div>
            <div class="email-footer">
                <p>${msg("emailFooter", realmName)}</p>
            </div>
        </div>
    </div>
</body>
</html>
</#macro>
