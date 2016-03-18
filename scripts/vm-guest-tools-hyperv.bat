:: installs the Hyper-V guest integration services
:: the drivers are included in KB3063109
set devcon=A:\devcon.exe
set wvmic=%WINDIR%\winsxs\amd64_wvmic.inf_31bf3856ad364e35_6.3.9600.18080_none_f29bea752067564e\wvmic.inf

:: heartbeat
"%devcon%" install "%wvmic%" "vmbus\{57164f39-9115-4e78-ab55-382f3bd5422d}"

:: data exchange
"%devcon%" install "%wvmic%" "vmbus\{242ff919-07db-4180-9c2e-b86cb68c8c55}"

:: shutdown
"%devcon%" install "%wvmic%" "vmbus\{b6650ff7-33bc-4840-8048-e0676786f393}"

:: time sync
"%devcon%" install "%wvmic%" "vmbus\{2dd1ce17-079e-403c-b352-a1921ee207ee}"

:: volume shadow copy
"%devcon%" install "%wvmic%" "vmbus\{2450ee40-33bf-4fbd-892e-9fb06e9214cf}"

:: remote desktop virtualization
"%devcon%" install "%wvmic%" "vmbus\{276aacf4-ac15-426c-98dd-7521ad3f01fe}"

:: guest service interface
"%devcon%" install "%wvmic%" "vmbus\{EB765408-105F-49b6-B4AA-C123B64D17D4}"
