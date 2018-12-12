#!../../bin/linux-x86_64/deploytest

## You may have to change deploytest to something else
## everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase("../../dbd/deploytest.dbd",0,0)
deploytest_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/deploytest.db","user=aderbenev")

iocInit()

## Start any sequence programs
#seq sncdeploytest,"user=aderbenev"
