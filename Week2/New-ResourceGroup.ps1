function New-ResourceGroup {
    [cmdletbinding()]

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
    
    New-AZResourceGroup @params
}
# Run selection then run the function : New-ResourceGroup -rgName CloudSkillsTest -location UKSouth