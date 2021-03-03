# To run the test:
# Invoke-Pester .\New-ResourceGroup_test.ps1

Describe "New-ResourceGroup" {
    $location = 'UKSouth'
    $name = 'cloudskillsbootcamp'

    It "Name should be cloudskillsbootcamp" {
        $name | Should Be 'cloudskillsbootcamp'
    }

    It "location should be uksouth" {
        $location | Should Be 'uksouth'
    }
}