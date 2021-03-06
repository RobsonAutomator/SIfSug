# Bring parameters into scope
. $PSScriptRoot\..\parameters.ps1

$uninstallArgs = @{
    Path = "$PSScriptRoot\uninstall.json"
    Prefix = $prefix
    SolrRoot = $sitecoreSolr.SolrRoot
    SolrService = $sitecoreSolr.SolrService
    SqlServer = $sqlServer
}

Install-SitecoreConfiguration @uninstallArgs