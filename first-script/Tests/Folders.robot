*** Settings ***

Resource  ../Resources/PO/OS.robot

*** Test Cases ***

Create some directories
    [Tags]  OperatingSystem
    OS.Create the base directory
    OS.Create directory 1
    OS.Create directory 2

Create some files
    [Tags]  OperatingSystem
    OS.Create file 1
    OS.Create file 2
    OS.Create file 3

Move some files
    [Tags]  OperatingSystem
    OS.Move file 3 from directory 2 to directory 1