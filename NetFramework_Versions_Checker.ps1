function Get-Result ($netFrameworkResult) { 
    if ($netFrameworkResult -eq "True") { Return "YES" } else { Return "NO" }
}

function Get-Color ($netFrameworkResult) { 
    if ($netFrameworkResult -eq "True") { Return "Green" } else { Return "Red" }
}

#
# Check_NetFramework_Versions.ps1
#

    Write-Host ""
    Write-Host "##### .NET FRAMEWORK VERSION CHECKER SCRIPT #####" -ForegroundColor Magenta

    $PowerShellVersion = $PSVersionTable.PSVersion
    Write-Host "This script determines which .NET Framework versions are installed" -ForegroundColor Cyan
    Write-Host "Reference: https://docs.microsoft.com/en-us/dotnet/framework/migration-guide/how-to-determine-which-versions-are-installed" -ForegroundColor Cyan
    Write-Host ("PowerShell version installed: " + $PSVersionTable.PSVersion) -ForegroundColor Yellow
    Write-Host ""

    Write-Host "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&&@&@*****@@@@@*****@&@&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/&&*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/&*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*&/@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/@**@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*&@/@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@@@@@@@@@@@@@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@@@@@@@@@@@@@/@%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@@@@@@@@@@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@@@@@@@@@@@&*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*&@@@@@@@@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@@@@@@@@/&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&/@@@@@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@@@@@@@/*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*&@@@@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@@@@/&@***@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*@/@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@@@&********@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@&@************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*&@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@***************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@******************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@&&*********************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%/@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@&**************************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@/****************************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*&@@@@@" -ForegroundColor White
    Write-Host "@@@@@******************%%%%%********@@@@@@@@@@*****@@@@@@@@******************@@@@************************@@@@@@@@*/@@@@" -ForegroundColor White
    Write-Host "@@@&******************@&@@@@/&********@@@@@@@@&@@@&@@@@@@@@&@@@@@@@@@@@@@@@@&@@@*&@@@@@@@@@@@@@@@@@@@@@@&@@@@@@@@@*&@@@" -ForegroundColor White
    Write-Host "@@@&******************@&@@@@@@@**********@@@@@&@@@&@@@@@@@@&@@@&*************@@@@*********&@@@&**********@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@&*******************@&@@&&@@@@@*********@@@@&@@@&@@@@@@@@&@@@%@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@&@@@@@@@@@@@@@@@@@@@@@&@@" -ForegroundColor White
    Write-Host "@&********************@&@@/@&@@@@&**********@@&@@@&@@@@@@@@&@@@%@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@&@@@@@@@@@@@@@@@@@@@@@*&@" -ForegroundColor White
    Write-Host "@&********************@&@@/@*@&@@@&***********&@@@&@@@@@@@@&@@@%@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@&@@@@@@@@@@@@@@@@@@@@@@&@" -ForegroundColor White
    Write-Host "&*********************@&@@/@***&/@@@**********@@@@&@@@@@@@@&@@@%@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@&@@@@@@@@@@@@@@@@@@@@@@*&" -ForegroundColor White
    Write-Host "&*********************@&@@/@****&/@@/*********@@@@&@@@@@@@@&@@@%@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@&@@@@@@@@@@@@@@@@@@@@@@@&" -ForegroundColor White
    Write-Host "&*********************@&@@/@******&@@&%*******@@@@&*@@@@@@@&@@@@@@@@@@@@@@@/*@@@@@@@@@@@@@&@@@&@@@@@@@@@@@@@@@@@@@@@@@&" -ForegroundColor White
    Write-Host "@*********************@&@@/@*******&@@@&******@@@@&***@@@@@&@@@////////////&*@@@@@@@@@@@@@&@@@&@@@@@@@@@@@@@@@@@@@@@@@*" -ForegroundColor White
    Write-Host "**********************@&@@/@********&@@@&&****@@@@&******@@&@@@%@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@&@@@@@@@@@@@@@@@@@@@@@@@*" -ForegroundColor White
    Write-Host "**********************@&@@/@*********&@@@&%***@@@@&*******@&@@@%@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@&@@@@@@@@@@@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "**********************@&@@/@**********&/@@@&**@@@@&********&@@@%@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@&@@@@@@@@@@@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "**********************@&@@/@************&@@@&*@@@@&********&@@@%@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@&@@@@@@@@@@@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "**********************@&@@/@*************@&@@&@@@@&********&@@@&*@@@@@@@@@@@@@@@@@@@@@@@@@&@@@&@@@@@@@@@@@@@@@@@@@@@@@*" -ForegroundColor White
    Write-Host "************@&&*******@&@@/@**************%&@@@@@@&********&@@@&**@@@@@@@@@@@@@@@@@@@@@@@@&@@@&@@@@@@@@@@@@@@@@@@@@@@@*" -ForegroundColor White
    Write-Host "@*********@@@@@&@*****@&@@/@****************/@@@@@&********&@@@@@@@@@@@@@@@@@&@@@@@@@@@@@@&@@@&@@@@@@@@@@@@@@@@@@@@@@@*" -ForegroundColor White
    Write-Host "&**********&&@&********&&&&******************&&&&&&********&&&&&&&&&&&&&&&&&&&@@@@@@@@@@@@@&&&%@@@@@@@@@@@@@@@@@@@@@@@&" -ForegroundColor White
    Write-Host "&************************************************************************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&" -ForegroundColor White
    Write-Host "&*************************************************************************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*&" -ForegroundColor White
    Write-Host "@&**************************************************************************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@" -ForegroundColor White
    Write-Host "@&*************&/@@@@&********************************************************@@@@@@@@@@@@@@@@@@@&&@@@@@@@@@@@@@@@@@*&@" -ForegroundColor White
    Write-Host "@@&************&&****************************************************************@@@@@@@@@@@@@@@@&&@@@@@@@@@@@@@@@@@&@@" -ForegroundColor White
    Write-Host "@@@&***********&&*******&&@&&**&&@&@&****@&@&&&@&@&@&****&@&&&&**@@****&&***@****@&&&@*@@@*&&&&*@&&@@*@*@@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@&***********&/&&&@***&&**********&&***&****&&****&%**&&****&&**&&**@&@**&&**@&***@@&&*@*&*@@@@&&*@*@@@@@@@@@@@@*&@@@" -ForegroundColor White
    Write-Host "@@@@@**********&&*******&&*****&@&%@&&***&****&&****&&*@&&&&&&&@***&*&&*&&*&***@@******@*@*&@@@@@&&&@@@@@@@@@@@@@*/@@@@" -ForegroundColor White
    Write-Host "@@@@@/*********&&*******&&****&&****&&***&****&&****&&**&&*********&&@***@@&***&@*****@%*@*&@@@@@&&@&&@@@@@@@@@@*&@@@@@" -ForegroundColor White
    Write-Host "@@@@@@&********@&*******&&*****&@&&&&&***&****&&****&&***&&&&&@*****&&***%&*****@@&&&&%****&@@@@@&&@@*&*@@@@@@@*@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@&&***********************************************************************************@@@@@@@@@@@@@@@@@@%/@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@************************************************************************************@@@@@@@@@@@@@@@&@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@**************************************************************************************@@@@@@@@@@*@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@&@*************************************************************************************@@@@@@@@*&@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@@@&**************************************************************************************@@@@@&@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@@@@/&@**************************************************************************************//@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@@@@@@@/@*********************************************************************************@/@@@@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@@@@@@@@/@*******************************************************************************@/@@@@@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@@@@@@@@@@@&@*************************************************************************@&@@@@@@@@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@@@@@@@@@@@@@/@&*******************************************************************&@@@@@@@@@@@@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@@@@@@@@@@@@@@@@@@&*************************************************************&@@@@@@@@@@@@@@@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/&@*******************************************************&&/@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&***********************************************&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" -ForegroundColor White
    Write-Host "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&***********************************&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" -ForegroundColor White

    Write-Host ""
    Write-Host "Loading global variables..." -ForegroundColor Yellow

    $RegEditPath = "HKLM:SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full\"

    $NetFramework45Title = ".NET Framework 4.5"
    $NetFramework451Title = ".NET Framework 4.5.1"
    $NetFramework452Title = ".NET Framework 4.5.2"
    $NetFramework46Title = ".NET Framework 4.6"
    $NetFramework461Title = ".NET Framework 4.6.1"
    $NetFramework462Title = ".NET Framework 4.6.2"
    $NetFramework47Title = ".NET Framework 4.7"
    $NetFramework471Title = ".NET Framework 4.7.1"
    $NetFramework472Title = ".NET Framework 4.7.2"
    
    $NetFramework45 = "378389"
    $NetFramework451 = "378675"
    $NetFramework452 = "379893"
    $NetFramework46 = "393295"
    $NetFramework461 = "394254"
    $NetFramework462 = "394802"
    $NetFramework47 = "460798"
    $NetFramework471 = "461308"
    $NetFramework472 = "461808"

    Write-Host "Done!" -ForegroundColor Green
    Write-Host ""
    Write-Host "Checking .NET Framework Versions" -ForegroundColor Yellow

    $NetFramework45Result = Get-ChildItem $RegEditPath | Get-ItemPropertyValue -Name Release | ForEach-Object { $_ -ge $NetFramework45 }
    $NetFramework451Result = Get-ChildItem $RegEditPath | Get-ItemPropertyValue -Name Release | ForEach-Object { $_ -ge $NetFramework451 }
    $NetFramework452Result = Get-ChildItem $RegEditPath | Get-ItemPropertyValue -Name Release | ForEach-Object { $_ -ge $NetFramework452 }
    $NetFramework46Result = Get-ChildItem $RegEditPath | Get-ItemPropertyValue -Name Release | ForEach-Object { $_ -ge $NetFramework46 }
    $NetFramework461Result = Get-ChildItem $RegEditPath | Get-ItemPropertyValue -Name Release | ForEach-Object { $_ -ge $NetFramework461 }
    $NetFramework462Result = Get-ChildItem $RegEditPath | Get-ItemPropertyValue -Name Release | ForEach-Object { $_ -ge $NetFramework462 }
    $NetFramework47Result = Get-ChildItem $RegEditPath | Get-ItemPropertyValue -Name Release | ForEach-Object { $_ -ge $NetFramework47 }
    $NetFramework471Result = Get-ChildItem $RegEditPath | Get-ItemPropertyValue -Name Release | ForEach-Object { $_ -ge $NetFramework471 }
    $NetFramework472Result = Get-ChildItem $RegEditPath | Get-ItemPropertyValue -Name Release | ForEach-Object { $_ -ge $NetFramework472 }

    Write-Host "Done!" -ForegroundColor Green
    Write-Host ""
    Write-Host "Results" -ForegroundColor Yellow

    # .NET FRAMEWORK 4.5
    Write-Host $Tab ($NetFramework45Title + ": ") -NoNewline -ForegroundColor Green
    Write-Host $Tab $Tab $(Get-Result($NetFramework45Result)) -ForegroundColor $(Get-Color($NetFramework45Result))

    # .NET FRAMEWORK 4.5.1
    Write-Host $Tab ($NetFramework451Title + ": ") -NoNewline -ForegroundColor Green
    Write-Host $(Get-Result($NetFramework451Result)) -ForegroundColor $(Get-Color($NetFramework451Result))

    # .NET FRAMEWORK 4.5.2
    Write-Host $Tab ($NetFramework452Title + ": ") -NoNewline -ForegroundColor Green
    Write-Host $(Get-Result($NetFramework452Result)) -ForegroundColor $(Get-Color($NetFramework452Result))

    # .NET FRAMEWORK 4.6
    Write-Host $Tab ($NetFramework46Title + ": ") -NoNewline -ForegroundColor Green
    Write-Host $Tab $Tab $(Get-Result($NetFramework46Result)) -ForegroundColor $(Get-Color($NetFramework46Result))

    # .NET FRAMEWORK 4.6.1
    Write-Host $Tab ($NetFramework461Title + ": ") -NoNewline -ForegroundColor Green
    Write-Host $(Get-Result($NetFramework461Result)) -ForegroundColor $(Get-Color($NetFramework461Result))

    # .NET FRAMEWORK 4.6.2
    Write-Host $Tab ($NetFramework462Title + ": ") -NoNewline -ForegroundColor Green
    Write-Host $(Get-Result($NetFramework462Result)) -ForegroundColor $(Get-Color($NetFramework462Result))

    # .NET FRAMEWORK 4.7
    Write-Host $Tab ($NetFramework47Title + ": ") -NoNewline -ForegroundColor Green
    Write-Host $Tab $Tab $(Get-Result($NetFramework47Result)) -ForegroundColor $(Get-Color($NetFramework47Result))

    # .NET FRAMEWORK 4.7.1
    Write-Host $Tab ($NetFramework471Title + ": ") -NoNewline -ForegroundColor Green
    Write-Host $(Get-Result($NetFramework471Result)) -ForegroundColor $(Get-Color($NetFramework471Result))

    # .NET FRAMEWORK 4.7.2
    Write-Host $Tab ($NetFramework472Title + ": ") -NoNewline -ForegroundColor Green
    Write-Host $(Get-Result($NetFramework472Result)) -ForegroundColor $(Get-Color($NetFramework472Result))

    Write-Host ""




