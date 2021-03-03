# Week 2 - Scripting Like A Developer

The code found in this repository is to help you learn how to script like a Developer.

## PowerShell Code

The PowerShell code found in `Week-2-Scripting-Like-A-Developer` is for anyone that wants to create a Resource Group in Azure.

## How To Use The Powershell Code

The `New-ResourceGroup` function is found under the `Powershell` directory and can be used as a reusable function. A user has the ability to pass in parameters at runtime to ensure they can re-use the script at any point in any environment.

## Python Code

The Python code found in `Week-2-Scripting-Like-A-Developer` is for anyone that wants to create an S3 bucket in AWS.

## How To Use The Python Code

The `s3bucket.py` script is designed to be re-used at any point for any environment. There are no hard-coded values.

## Examples

```Powershell
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
```

```Python
import sys
import boto3

try:
    def main():
        create_s3bucket(TonysBucket447)

except Exception as e:
    print(e)

def create_s3bucket(TonysBucket447):
    s3_bucket=boto3.client(
        's3',
    )

    bucket = s3_bucket.create_bucket(
        Bucket=TonysBucket447,
        ACL='private',
    )

    print(bucket)

TonysBucket447 = sys.argv[1]

if __name__ == '__main__':
    main()

```

## Testing

Both the PowerShell and Python code have unit tests available to ensure that the desired outcomes, including values and types, are accurate.

The tests can be found in the `PowerShell` and `Python` directories.

## Summary of Issues Encountered

### Project 2:
-Had to install Python
-Deployment didnt work to EU-West data centre so changed to US-EAST-1 for testing the bucket deployment which worked fine

### Project 3:
-Had to install the AZ module (Install-Module -Name AZ) and import it (Import-Module AZ)
-Connect to AZ Account (Connect-AzAccount)

### Project 4:
pip install pylint [Install the linting tool for Python]
-Installed fine but got an error when running pylint
    - Had to reinstall pylint with the force command (pip install pylint --force)

## Contributors

1. Tony Pack
