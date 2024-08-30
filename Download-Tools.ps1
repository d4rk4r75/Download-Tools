$PSTools=@(
  "https://raw.githubusercontent.com/peass-ng/PEASS-ng/master/winPEAS/winPEASps1/winPEAS.ps1"
  # PrivEscCheck
  "https://raw.githubusercontent.com/itm4n/PrivescCheck/master/PrivescCheck.ps1"
  # SigmanPotato
  "https://raw.githubusercontent.com/tylerdotrar/SigmaPotato/main/Invoke-SigmaPotato.ps1"
  # JuicyPotato
  "https://raw.githubusercontent.com/d0nkeys/redteam/master/privilege-escalation/JuicyPotato.ps1"
  # MimiKatz
  "https://raw.githubusercontent.com/g4uss47/Invoke-Mimikatz/master/Invoke-Mimikatz.ps1"
  # PowerSharpPack
  "https://raw.githubusercontent.com/S3cur3Th1sSh1t/PowerSharpPack/master/PowerSharpPack.ps1"
  # PowerUp
  "https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Privesc/PowerUp.ps1"
  # adPEAS
  "https://raw.githubusercontent.com/61106960/adPEAS/main/adPEAS.ps1"
  # ADRecon
  "https://raw.githubusercontent.com/sense-of-security/ADRecon/master/ADRecon.ps1"
  # PowerView
  "https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Recon/PowerView.ps1"
  # Invoke-ADEnum
  "https://raw.githubusercontent.com/Leo4j/Invoke-ADEnum/main/Invoke-ADEnum.ps1"
  # Invoke-DCSync
  "https://raw.githubusercontent.com/Haxxnet/Invoke-DCSync/main/Invoke-DCSync.ps1"
  # Sherlock
  "https://raw.githubusercontent.com/rasta-mouse/Sherlock/master/Sherlock.ps1"
  # JAWS
  "https://raw.githubusercontent.com/411Hall/JAWS/master/jaws-enum.ps1"
  # Invoke-NinjaCopy
  "https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Exfiltration/Invoke-NinjaCopy.ps1"
  # powercat
  "https://raw.githubusercontent.com/besimorhino/powercat/master/powercat.ps1"
  # DomainPasswordSpray
  "https://raw.githubusercontent.com/dafthack/DomainPasswordSpray/master/DomainPasswordSpray.ps1"
)

$WinExecutables=@(
  # nc64.exe
  "https://github.com/int0x33/nc.exe/raw/master/nc64.exe"
  # nc.exe
  "https://github.com/int0x33/nc.exe/raw/master/nc.exe"
  # PrintSpoofer32
  "https://github.com/itm4n/PrintSpoofer/releases/download/v1.0/PrintSpoofer32.exe"
  # PrintSpoofer64
  "https://github.com/itm4n/PrintSpoofer/releases/download/v1.0/PrintSpoofer64.exe"
  # Certify
  "https://github.com/r3motecontrol/Ghostpack-CompiledBinaries/raw/master/Certify.exe"
  # Koh.exe
  "https://github.com/r3motecontrol/Ghostpack-CompiledBinaries/raw/master/Koh.exe"
  # LockLess.exe
  "https://github.com/r3motecontrol/Ghostpack-CompiledBinaries/raw/master/LockLess.exe"
  # RestrictedAdmin.exe
  "https://github.com/r3motecontrol/Ghostpack-CompiledBinaries/raw/master/RestrictedAdmin.exe"
  # Rubeus.exe
  "https://github.com/r3motecontrol/Ghostpack-CompiledBinaries/raw/master/Rubeus.exe"
  # SafetyKatz.exe
  "https://github.com/r3motecontrol/Ghostpack-CompiledBinaries/raw/master/SafetyKatz.exe"
  # Seatbelt.exe
  "https://github.com/r3motecontrol/Ghostpack-CompiledBinaries/raw/master/Seatbelt.exe"
  # SharpChrome.exe
  "https://github.com/r3motecontrol/Ghostpack-CompiledBinaries/raw/master/SharpChrome.exe"
  # SharpDPAPI.exe
  "https://github.com/r3motecontrol/Ghostpack-CompiledBinaries/raw/master/SharpDPAPI.exe"
  # SharpDump.exe
  "https://github.com/r3motecontrol/Ghostpack-CompiledBinaries/raw/master/SharpDump.exe"
  # SharpRoast.exe
  "https://github.com/r3motecontrol/Ghostpack-CompiledBinaries/raw/master/SharpRoast.exe"
  # SharpUp.exe
  "https://github.com/r3motecontrol/Ghostpack-CompiledBinaries/raw/master/SharpUp.exe"
  # SharpWMI.exe
  "https://github.com/r3motecontrol/Ghostpack-CompiledBinaries/raw/master/SharpWMI.exe"
  # SysInternalsSuite.zip
  "https://download.sysinternals.com/files/SysinternalsSuite.zip"
  # WinPEASany.exe
  "https://github.com/peass-ng/PEASS-ng/releases/download/20240818-ea81ae32/winPEASany.exe"
  # WinPEASx64.exe
  "https://github.com/peass-ng/PEASS-ng/releases/download/20240818-ea81ae32/winPEASx64.exe"
  # WinPEASx86.exe
  # "https://github.com/peass-ng/PEASS-ng/releases/download/20240818-ea81ae32/winPEASx86.exe"
)

if (!(Test-Path "C:\Workspace")) {
  New-Item -Path "C:\Workspace" -ItemType Directory
}

foreach ($PSTool in $PSTools) {
  $ScriptName = Split-Path $PSTools -Leaf
  Invoke-WebRequest -Uri $PSTool -UseBasicParsing -OutFile "C:\Workspace\$ScriptName"
}

foreach ($WinExe in $WinExecutables) {
  $ExeName = Split-Path $WinExe -Leaf
  Invoke-WebRequest -Uri $WinExe -UseBasicParsing -OutFile "C:\Workspace\$ExeName"
}
