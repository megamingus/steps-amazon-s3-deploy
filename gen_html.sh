#!/bin/bash
# Generates an xml structured plist with the minimum required entries from inner sketch.manifest.latest.plist in ipa

generated_html_path="./index.html"
if [ -e "${generated_html_path}" ]; then
	rm "${generated_html_path}"
fi

echo "<html>
        <head>
            <meta http-equiv=\"refresh\" content=\"0; url=itms-services://?action=download-manifest&url=$S3_DEPLOY_STEP_URL_PLIST\" />
        </head>
        <body>
        <a href=\"url=itms-services://?action=download-manifest&url=$S3_DEPLOY_STEP_URL_PLIST\" >
				<img src=\"http://s3.amazonaws.com/ios-vnext-pr/AppStoreInstallButton.png\" /></a>
        </body>

</html>" > "${generated_html_path}"

rm -rf ./Payload
