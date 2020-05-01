# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.

<#
    This is used to centralize the regEx patterns, note that the backslashes are
    escaped, a single "\s" would be represented as "\\s"
#>
data regularExpression
{
    ConvertFrom-StringData -StringData @'
        nxPackageName  = (sudo)? apt(-get)? (install|remove)\\s*(?'packageName'(\\w*(-?))+)
        nxPackageState = (sudo)? apt(-get)? (?'packageState'(install|remove))
'@
}
