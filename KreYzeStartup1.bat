cd %~dp0
@echo off
setlocal enabledelayedexpansion

rem Define lists of values
set manufacturers[0]=Dell
set manufacturers[1]=HP
set manufacturers[2]=Lenovo
set manufacturers[3]=ASUS
set manufacturers[4]=Acer
set manufacturers[5]=MSI
set manufacturers[6]=ASRock
set manufacturers[7]=Gigabyte
set manufacturers[8]=Razer
set manufacturers[9]=Alienware
set manufacturers[10]=Samsung
set manufacturers[11]=Toshiba
set manufacturers[12]=Sony
set manufacturers[13]=Fujitsu
set manufacturers[14]=Panasonic
set manufacturers[15]=IBM
set manufacturers[16]=Compaq
set manufacturers[17]=Packard Bell
set manufacturers[18]=Medion
set manufacturers[19]=Sharp
set manufacturers[20]=Gateway
set manufacturers[21]=Alienware
set manufacturers[22]=CyberPowerPC
set manufacturers[23]=EVGA

set productNames[0]=Inspiron 15
set productNames[1]=Pavilion x360
set productNames[2]=ThinkPad X1
set productNames[3]=ROG Zephyrus
set productNames[4]=Swift 3
set productNames[5]=Titan GT77
set productNames[6]=Aspire 7
set productNames[7]=Legion 5
set productNames[8]=Omen 15
set productNames[9]=Predator Helios 300
set productNames[10]=MacBook Pro 14
set productNames[11]=ZenBook Duo
set productNames[12]=Surface Laptop 4
set productNames[13]=Chromebook Flip
set productNames[14]=VivoBook S15
set productNames[15]=XPS 13
set productNames[16]=Elite Dragonfly
set productNames[17]=Blade 15 Advanced
set productNames[18]=TUF Gaming A17
set productNames[19]=Envy 13
set productNames[20]=Strix Scar 16
set productNames[21]=Nitro 5
set productNames[22]=Yoga 9i

set systemVersions[0]=1.0
set systemVersions[1]=2.1
set systemVersions[2]=3.5
set systemVersions[3]=4.0
set systemVersions[4]=5.2
set systemVersions[5]=6.1
set systemVersions[6]=7.0
set systemVersions[7]=8.5
set systemVersions[8]=9.1
set systemVersions[9]=10.0
set systemVersions[10]=11.3
set systemVersions[11]=12.2

set motherboardBrands[0]=ASUS ROG STRIX B550-F
set motherboardBrands[1]=MSI MAG B550 TOMAHAWK
set motherboardBrands[2]=Gigabyte AORUS X570
set motherboardBrands[3]=ASRock B450M Steel Legend
set motherboardBrands[4]=EVGA Z690 DARK
set motherboardBrands[5]=Biostar B450MH
set motherboardBrands[6]=Intel DZ77GA-70K
set motherboardBrands[7]=Supermicro X11SPA-T
set motherboardBrands[8]=NZXT N7 B650E
set motherboardBrands[9]=ASUS PRIME Z590-A
set motherboardBrands[10]=MSI MEG X570 UNIFY
set motherboardBrands[11]=Gigabyte Z790 AORUS MASTER
set motherboardBrands[12]=ASRock X570 Phantom Gaming
set motherboardBrands[13]=EVGA X299 DARK
set motherboardBrands[14]=Supermicro X12SPA-T
set motherboardBrands[15]=MSI PRO Z690-A DDR4
set motherboardBrands[16]=Gigabyte B450 AORUS ELITE
set motherboardBrands[17]=ASUS TUF GAMING B660M-PLUS
set motherboardBrands[18]=Intel DQ77KB
set motherboardBrands[19]=NZXT N5 Z690

set biosVersions[0]=P2.50
set biosVersions[1]=F11
set biosVersions[2]=3203
set biosVersions[3]=F14e
set biosVersions[4]=P3.40
set biosVersions[5]=7C02v3A
set biosVersions[6]=A.80
set biosVersions[7]=E7B98IMS.1A0
set biosVersions[8]=F7
set biosVersions[9]=P1.70
set biosVersions[10]=0805
set biosVersions[11]=1.15
set biosVersions[12]=F21
set biosVersions[13]=0406
set biosVersions[14]=3016
set biosVersions[15]=1203
set biosVersions[16]=F23b
set biosVersions[17]=1.02
set biosVersions[18]=P3.30
set biosVersions[19]=F5a

rem Generate random values from the lists
set /a manufacturerIndex=!random! %% 24
set /a productNameIndex=!random! %% 23
set /a systemVersionIndex=!random! %% 12
set /a motherboardIndex=!random! %% 20
set /a biosVersionIndex=!random! %% 20

set selectedManufacturer=!manufacturers[%manufacturerIndex%]
set selectedProductName=!productNames[%productNameIndex%]
set selectedSystemVersion=!systemVersions[%systemVersionIndex%]
set selectedMotherboard=!motherboardBrands[%motherboardIndex%]
set selectedBiosVersion=!biosVersions[%biosVersionIndex%]

rem Set the working directory
cd /d "C:\Windows\Globalization\Time Zone"

rem Run AMIDEWINx64.EXE with various commands
AMIDEWINx64.EXE /SU auto
cls
AMIDEWINx64.EXE /BS %lastGeneratedSerials%
cls
AMIDEWINx64.EXE /CS %lastGeneratedSerials%
cls
AMIDEWINx64.EXE /SS "To Be Filled By O.E.M"
cls
AMIDEWINx64.EXE /SK "To Be Filled By O.E.M"
cls
AMIDEWINx64.EXE /SF "To Be Filled By O.E.M"
cls
AMIDEWINx64.EXE /BT "To Be Filled By O.E.M"
cls
AMIDEWINx64.EXE /BLC "To Be Filled By O.E.M"
cls
AMIDEWINx64.EXE /CM "To Be Filled By O.E.M"
cls
AMIDEWINx64.EXE /CV "To Be Filled By O.E.M"
cls
AMIDEWINx64.EXE /CA "To Be Filled By O.E.M"
cls
AMIDEWINx64.EXE /CSK "SKU"
cls
AMIDEWINx64.EXE /PSN "To Be Filled By O.E.M"
cls

rem Keep specified values
AMIDEWINx64.EXE /BM "American Megatrends Inc."
cls
AMIDEWINx64.EXE /BV "1.0"
cls
AMIDEWINx64.EXE /SM "American Megatrends Inc."
cls

netsh winsock reset
cls
netsh winsock reset catalog
cls
netsh int ip reset
cls
netsh advfirewall reset
cls
netsh int reset all
cls
netsh int ipv4 reset
cls
netsh int ipv6 reset
cls

ipconfig /release
cls
ipconfig /flushdns
cls
ipconfig /renew
cls
ipconfig /flushdns
cls

WMIC PATH WIN32_NETWORKADAPTER WHERE PHYSICALADAPTER=TRUE CALL DISABLE
cls
WMIC PATH WIN32_NETWORKADAPTER WHERE PHYSICALADAPTER=TRUE CALL ENABLE
cls

arp -d

net stop winmgmt /y
net start winmgmt

endlocal

exit
