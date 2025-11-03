<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>New Contact Form Submission</title>
  </head>
  <body style="margin:0; background-color:#f3f4f6; font-family:'Segoe UI', Roboto, Arial, sans-serif;">

    <table width="100%" cellpadding="0" cellspacing="0" style="background-color:#f3f4f6; padding:40px 0;">
      <tr>
        <td align="center">

          <!-- Outer Card -->
          <table width="600" cellpadding="0" cellspacing="0" style="background-color:#ffffff; border-radius:12px; box-shadow:0 4px 10px rgba(0,0,0,0.05); overflow:hidden;">
            
            <!-- Header -->
            <tr>
              <td align="center" style="background:linear-gradient(90deg,#6CD3E7,#235A66); padding:24px;">
                <img 
                  src="<?php echo get_field('header_logo','options')['url']; ?>" 
                  alt="Company Logo" 
                  width="150" 
                  style="display:block; margin:auto;"
                />
              </td>
            </tr>

            <!-- Body -->
            <tr>
              <td style="padding:32px;">
                <h2 style="color:#111827; font-size:22px; font-weight:700; margin-bottom:16px; text-align:center;">
                  📬 New Contact Form Submission
                </h2>

                <table width="100%" cellpadding="0" cellspacing="0" style="font-size:15px; color:#374151;">
                  <tr><td style="padding:4px 0;"><strong>Name:</strong> {{name}}</td></tr>
                  <tr><td style="padding:4px 0;"><strong>Email:</strong> {{email}}</td></tr>
                  <tr><td style="padding:4px 0;"><strong>Company:</strong> {{company}}</td></tr>
                </table>

                <div style="margin-top:20px; border-left:4px solid #6CD3E7; background-color:#f9fafb; padding:16px; border-radius:6px;">
                  <p style="color:#111827; font-weight:600; margin-bottom:6px;">Message:</p>
                  <p style="color:#374151; line-height:1.6;">{{message}}</p>
                </div>

                <!-- Button -->
                <div style="text-align:center; margin-top:30px;">
                  <a href="{{site_url}}" 
                    style="background:linear-gradient(90deg,#6CD3E7,#235A66); color:#ffffff; text-decoration:none; 
                           padding:12px 24px; border-radius:8px; display:inline-block; font-weight:600;">
                    View Website
                  </a>
                </div>

                <p style="font-size:13px; color:#6b7280; margin-top:30px; text-align:center; border-top:1px solid #e5e7eb; padding-top:20px;">
                  Sent from <a href="{{site_url}}" style="color:#235A66; text-decoration:none;">{{site_url}}</a>
                </p>
              </td>
            </tr>

            <!-- Footer -->
            <tr>
              <td align="center" style="background-color:#f9fafb; color:#9ca3af; font-size:12px; padding:16px; border-top:1px solid #e5e7eb;">
                © <?php echo date('Y'); ?> Digital Distribution Solutions. All rights reserved.
              </td>
            </tr>

          </table>

        </td>
      </tr>
    </table>

  </body>
</html>
