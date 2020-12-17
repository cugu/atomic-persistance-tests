# Admin: powershell -exec bypass .\eval1.ps1

IEX (IWR 'https://raw.githubusercontent.com/redcanaryco/invoke-atomicredteam/master/install-atomicredteam.ps1' -UseBasicParsing);
Install-AtomicRedTeam -getAtomics

Import-Module "C:\AtomicRedTeam\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force

Invoke-AtomicTest T1037.001 -GetPrereqs
Invoke-AtomicTest T1037.002 -GetPrereqs
Invoke-AtomicTest T1037.004 -GetPrereqs
Invoke-AtomicTest T1037.005 -GetPrereqs
Invoke-AtomicTest T1053.001 -GetPrereqs
Invoke-AtomicTest T1053.002 -GetPrereqs
Invoke-AtomicTest T1053.003 -GetPrereqs
Invoke-AtomicTest T1053.004 -GetPrereqs
Invoke-AtomicTest T1053.005 -GetPrereqs
Invoke-AtomicTest T1078.001 -GetPrereqs
Invoke-AtomicTest T1078.003 -GetPrereqs
Invoke-AtomicTest T1098 -GetPrereqs
Invoke-AtomicTest T1098.004 -GetPrereqs
Invoke-AtomicTest T1133 -GetPrereqs
Invoke-AtomicTest T1136.001 -GetPrereqs
Invoke-AtomicTest T1136.002 -GetPrereqs
Invoke-AtomicTest T1137.002 -GetPrereqs
Invoke-AtomicTest T1176 -GetPrereqs
Invoke-AtomicTest T1197 -GetPrereqs
Invoke-AtomicTest T1505.001 -GetPrereqs
Invoke-AtomicTest T1505.002 -GetPrereqs
Invoke-AtomicTest T1505.003 -GetPrereqs
Invoke-AtomicTest T1543.001 -GetPrereqs
Invoke-AtomicTest T1543.002 -GetPrereqs
Invoke-AtomicTest T1543.003 -GetPrereqs
Invoke-AtomicTest T1543.004 -GetPrereqs
Invoke-AtomicTest T1546.001 -GetPrereqs
Invoke-AtomicTest T1546.002 -GetPrereqs
Invoke-AtomicTest T1546.003 -GetPrereqs
Invoke-AtomicTest T1546.004 -GetPrereqs
Invoke-AtomicTest T1546.005 -GetPrereqs
Invoke-AtomicTest T1546.007 -GetPrereqs
Invoke-AtomicTest T1546.008 -GetPrereqs
Invoke-AtomicTest T1546.010 -GetPrereqs
Invoke-AtomicTest T1546.011 -GetPrereqs
Invoke-AtomicTest T1546.012 -GetPrereqs
Invoke-AtomicTest T1546.013 -GetPrereqs
Invoke-AtomicTest T1546.014 -GetPrereqs
Invoke-AtomicTest T1547.001 -GetPrereqs
Invoke-AtomicTest T1547.004 -GetPrereqs
Invoke-AtomicTest T1547.005 -GetPrereqs
Invoke-AtomicTest T1547.006 -GetPrereqs
Invoke-AtomicTest T1547.007 -GetPrereqs
Invoke-AtomicTest T1547.009 -GetPrereqs
Invoke-AtomicTest T1547.011 -GetPrereqs
Invoke-AtomicTest T1574.001 -GetPrereqs
Invoke-AtomicTest T1574.002 -GetPrereqs
Invoke-AtomicTest T1574.006 -GetPrereqs
Invoke-AtomicTest T1574.009 -GetPrereqs
Invoke-AtomicTest T1574.011 -GetPrereqs
Invoke-AtomicTest T1574.012 -GetPrereqs

Invoke-AtomicTest T1037.001
Invoke-AtomicTest T1037.002
Invoke-AtomicTest T1037.004
Invoke-AtomicTest T1037.005
Invoke-AtomicTest T1053.001
Invoke-AtomicTest T1053.002
Invoke-AtomicTest T1053.003
Invoke-AtomicTest T1053.004
Invoke-AtomicTest T1053.005
Invoke-AtomicTest T1078.001
Invoke-AtomicTest T1078.003
Invoke-AtomicTest T1098
Invoke-AtomicTest T1098.004
Invoke-AtomicTest T1133
Invoke-AtomicTest T1136.001
Invoke-AtomicTest T1136.002
Invoke-AtomicTest T1137.002
Invoke-AtomicTest T1176
Invoke-AtomicTest T1197
Invoke-AtomicTest T1505.001
Invoke-AtomicTest T1505.002
Invoke-AtomicTest T1505.003
Invoke-AtomicTest T1543.001
Invoke-AtomicTest T1543.002
Invoke-AtomicTest T1546.001
Invoke-AtomicTest T1543.003
Invoke-AtomicTest T1543.004
Invoke-AtomicTest T1546.002
Invoke-AtomicTest T1546.003
Invoke-AtomicTest T1546.004
Invoke-AtomicTest T1546.005
Invoke-AtomicTest T1546.007
Invoke-AtomicTest T1546.008
Invoke-AtomicTest T1546.010
Invoke-AtomicTest T1546.011
Invoke-AtomicTest T1546.012
Invoke-AtomicTest T1546.013
Invoke-AtomicTest T1546.014
Invoke-AtomicTest T1547.001
Invoke-AtomicTest T1547.004
Invoke-AtomicTest T1547.005
Invoke-AtomicTest T1547.006
Invoke-AtomicTest T1547.007
Invoke-AtomicTest T1547.009
Invoke-AtomicTest T1547.011
Invoke-AtomicTest T1574.001
Invoke-AtomicTest T1574.002
Invoke-AtomicTest T1574.006
Invoke-AtomicTest T1574.009
Invoke-AtomicTest T1574.011
Invoke-AtomicTest T1574.012
