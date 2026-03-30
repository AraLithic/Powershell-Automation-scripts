<#
.SYNOPSIS
	Lists motherboard details
.DESCRIPTION
	This PowerShell script lists the motherboard details.
.EXAMPLE
	PS> ./check-motherboard.ps1
	✅ Motherboard Status by Aralithic
.LINK
	https://github.com/Aralithic/PowerShell-Automation-scripts
.NOTES
	Author: Sayed Umair Ali
#>

try {
	if ($IsLinux) {
	} else {
		$details = Get-WmiObject -Class Win32_BaseBoard
		"✅ Motherboard $($details.Product) by $($details.Manufacturer)"
	}
	exit 0 # success
} catch {
	"⚠️ ERROR: $($Error[0]) (script line $($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
