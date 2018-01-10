# LS-CAT IOC Camera Configuration
#
# 2015-8-31:
# Using two AVT Cameras per station
#
# Location  Model          H      V     ND Array Size
# ======== ============== ===    ===  ================
# Spindle: Manta G-46C    780 X  580    1357200
#  Sample: Manta G-146C  1388 X 1038    4322232
#
# STN         Spindle        Sample
# ===        ========       ========
#  D          cam29          cam38
#  E          cam35          cam34
#  F          cam36          cam39
#  G          cam37          cam40
#
# IP Address: 10.1.18.X  where X = camera number from above table.
#
# Various Locations
#
errlogInit(20000)
epicsEnvSet("TOP",                   "/usr/local/epics/synApps_5_8/support/areaDetector/ADProsilica/iocs/prosilicaIOC")
epicsEnvSet("ADCORE",                "/usr/local/epics/synApps_5_8/support/areaDetector/ADCore")
epicsEnvSet("ADPLUGINEDGE",          "/usr/local/epics/synApps_5_8/support/areaDetector/ADPluginEdge")
epicsEnvSet("ADPROSILICA",           "/usr/local/epics/synApps_5_8/support/areaDetector/ADProsilica")
epicsEnvSet("CALC",                  "/usr/local/epics/synApps_5_8/support/calc-3-4-2-1")
epicsEnvSet("SSCAN",                 "/usr/local/epics/synApps_5_8/support/sscan-2-10-1")
epicsEnvSet("AUTOSAVE",              "/usr/local/epics/synApps_5_8/support/autosave-5-6-1")
epicsEnvSet("EPICS_DB_INCLUDE_PATH", "$(ADCORE)/db:$(ADPLUGINEDGE)/db");

# Load procilica driver
#
dbLoadDatabase("$(TOP)/dbd/prosilicaApp.dbd")
prosilicaApp_registerRecordDeviceDriver(pdbbase)

# Common Configuration Settings
#
epicsEnvSet( "PREFIX", "21:ECAMS:")
epicsEnvSet( "QSIZE",  "20")
epicsEnvSet( "NCHANS", "2048")
epicsEnvSet( "CBUFFS", "16")

#
# Spindle Camera Settings
#
epicsEnvSet( "CAM",            "Spindle:")
epicsEnvSet( "CAM_IP",         "10.1.18.34")
epicsEnvSet( "PORT",           "PS1")
epicsEnvSet( "Image",          "Image1")
epicsEnvSet( "Edge",           "Edge1")
epicsEnvSet( "NDARRAY_LENGTH", "1357200")
epicsEnvSet( "NDPORT",         "PORT1")
epicsEnvSet( "XSIZE",          "1388")
epicsEnvSet( "YSIZE",          "1038")
epicsEnvSet( "CP",             "1")		# commonPlugs.cmd kludge to set up more than one camera on the same ioc


<lsProsilica.cmd


#
# Sample Camera Settings
#
epicsEnvSet( "CAM",            "Sample:")
epicsEnvSet( "CAM_IP",         "10.1.18.36")
epicsEnvSet( "PORT",           "PS2")
epicsEnvSet( "Image",          "Image2")
epicsEnvSet( "Edge",           "Edge2")
epicsEnvSet( "NDARRAY_LENGTH", "1357200")
epicsEnvSet( "NDPORT",         "PORT2")
epicsEnvSet( "XSIZE",          "780")
epicsEnvSet( "YSIZE",          "580")
epicsEnvSet( "CP",             "2")		# commonPlugs.cmd kludge to set up more than one camera on the same ioc

<lsProsilica.cmd


# Load scan records
#
dbLoadRecords("$(SSCAN)/sscanApp/Db/scan.db", "P=$(PREFIX),MAXPTS1=2000,MAXPTS2=200,MAXPTS3=20,MAXPTS4=10,MAXPTSH=10")

# Load sseq record for acquisition sequence
#
dbLoadRecords("$(CALC)/calcApp/Db/yySseq.db", "P=$(PREFIX), S=AcquireSequence")

# Calc record reset frame count
#
dbLoadRecords("$(CALC)/calcApp/Db/userCalcOuts10.db", "P=$(PREFIX)")


# Optional: load devIocStats records (requires DEVIOCSTATS module)
dbLoadRecords("$(DEVIOCSTATS)/db/iocAdminSoft.db", "IOC=$(PREFIX)")

# Optional: load alive record (requires ALIVE module)
#dbLoadRecords("$(ALIVE)/aliveApp/Db/alive.db", "P=$(PREFIX),RHOST=192.168.1.254")


#
# Setup save/restore template file locations
#
set_requestfile_path("./")
set_requestfile_path("$(ADPROSILICA)/prosilicaApp/Db")
set_requestfile_path("$(ADPLUGINEDGE)/edgeApp/Db")
set_requestfile_path("$(ADCORE)/ADApp/Db")
set_requestfile_path("$(CALC)/calcApp/Db")
set_requestfile_path("$(SSCAN)/sscanApp/Db")


set_savefile_path("./autosave")
set_pass0_restoreFile("auto_settings.sav")
set_pass1_restoreFile("auto_settings.sav")
save_restoreSet_status_prefix("$(PREFIX)")

dbLoadRecords("$(AUTOSAVE)/asApp/Db/save_restoreStatus.db", "P=$(PREFIX)")

# Start the IOC
#
iocInit()

# save things every thirty seconds
#
create_monitor_set("auto_settings.req", 30,"P=$(PREFIX)")
