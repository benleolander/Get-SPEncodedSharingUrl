# Get-SPEncodedSharingUrl

Quick PowerShell module to return the encoded sharing Url for a Sharepoint file for use with the Microsoft Graph `/shares/` endpoint.

## Usage

```
$encodedUrl = Get-SPEncodedSharingUrl -AbsoluteUrl https://contoso.sharepoint.com/sites/path/to/file.ext

GET https://graph.microsoft.com/v1.0/shares/$encodedUrl/driveItem
```
