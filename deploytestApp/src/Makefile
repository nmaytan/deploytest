TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = deploytest
# deploytest.dbd will be created and installed
DBD += deploytest.dbd

# deploytest.dbd will be made up from these files:
deploytest_DBD += base.dbd

# Include dbd files from all support applications:
#deploytest_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#deploytest_LIBS += xxx

# deploytest_registerRecordDeviceDriver.cpp derives from deploytest.dbd
deploytest_SRCS += deploytest_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
deploytest_SRCS_DEFAULT += deploytestMain.cpp
deploytest_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#deploytest_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
deploytest_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

