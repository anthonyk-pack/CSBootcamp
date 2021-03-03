function New-ResourceGroup {
    [cmdletbinding(SupportsShouldProcess)]

    param (
        [parameter(Mandatory)]
        [string]$rgName,

        [parameter(Mandatory)]
        [string]$location
    )
    $params = @{
        'Name' = $rgName
        'Location' = $location
    }
    If ($PSCmdlet.ShouldProcess('location')) {
        New-AZResourceGroup @params
    }
}
# Run selection then run the function : New-ResourceGroup -rgName CloudSkillsTest -location UKSouth