function Get-SPEncodedSharingUrl {
    param(
        [Parameter(Mandatory=$true)]
        [string] $absoluteUrl
    )

    $encodedBytes = [System.Text.Encoding]::UTF8.GetBytes($absoluteUrl)
    $encodedText = [System.Convert]::ToBase64String($encodedBytes)
    return "u!" + $encodedText.TrimEnd('=').Replace('/','_').Replace('+','-')
}
Export-ModuleMember -Function Get-SPEncodedSharingUrl