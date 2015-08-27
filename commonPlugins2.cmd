# Create a netCDF file saving plugin.
NDFileNetCDFConfigure("FileNetCDF2", $(QSIZE), 0, "$(PORT2)", 0)
dbLoadRecords("$(ADCORE)/db/NDFileNetCDF.template","P=$(PREFIX),R=netCDF2:,PORT=FileNetCDF2,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT2),NDARRAY_ADDR=0")

# Create a TIFF file saving plugin
NDFileTIFFConfigure("FileTIFF2", $(QSIZE), 0, "$(PORT2)", 0)
dbLoadRecords("$(ADCORE)/db/NDFileTIFF.template",  "P=$(PREFIX),R=TIFF2:,PORT=FileTIFF2,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT2),NDARRAY_ADDR=0")

# Create a JPEG file saving plugin
NDFileJPEGConfigure("FileJPEG2", $(QSIZE), 0, "$(PORT2)", 0)
dbLoadRecords("$(ADCORE)/db/NDFileJPEG.template",  "P=$(PREFIX),R=JPEG2:,PORT=FileJPEG2,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT2),NDARRAY_ADDR=0")

# Create a NeXus file saving plugin
NDFileNexusConfigure("FileNexus2", $(QSIZE), 0, "$(PORT2)", 0)
dbLoadRecords("$(ADCORE)/db/NDFileNexus.template", "P=$(PREFIX),R=Nexus2:,PORT=FileNexus2,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT2),NDARRAY_ADDR=0")

# Create an HDF5 file saving plugin
NDFileHDF5Configure("FileHDF2", $(QSIZE), 0, "$(PORT2)", 0)
dbLoadRecords("$(ADCORE)/db/NDFileHDF5.template",  "P=$(PREFIX),R=HDF2:,PORT=FileHDF2,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT2),NDARRAY_ADDR=0")

# Create a Magick file saving plugin
NDFileMagickConfigure("FileMagick2", $(QSIZE), 0, "$(PORT2)", 0)
dbLoadRecords("$(ADCORE)/db/NDFileMagick.template","P=$(PREFIX),R=Magick2:,PORT=FileMagick2,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT2),NDARRAY_ADDR=0")

# Create 4 ROI plugins
NDROIConfigure("ROI21", $(QSIZE), 0, "$(PORT2)", 0, 0, 0)
dbLoadRecords("$(ADCORE)/db/NDROI.template",       "P=$(PREFIX),R=ROI21:,  PORT=ROI21,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT2),NDARRAY_ADDR=0")
NDROIConfigure("ROI22", $(QSIZE), 0, "$(PORT2)", 0, 0, 0)
dbLoadRecords("$(ADCORE)/db/NDROI.template",       "P=$(PREFIX),R=ROI22:,  PORT=ROI22,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT2),NDARRAY_ADDR=0")
NDROIConfigure("ROI23", $(QSIZE), 0, "$(PORT2)", 0, 0, 0)
dbLoadRecords("$(ADCORE)/db/NDROI.template",       "P=$(PREFIX),R=ROI23:,  PORT=ROI23,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT2),NDARRAY_ADDR=0")
NDROIConfigure("ROI24", $(QSIZE), 0, "$(PORT2)", 0, 0, 0)
dbLoadRecords("$(ADCORE)/db/NDROI.template",       "P=$(PREFIX),R=ROI24:,  PORT=ROI24,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT2),NDARRAY_ADDR=0")

# Create a processing plugin
NDProcessConfigure("PROC2", $(QSIZE), 0, "$(PORT2)", 0, 0, 0)
dbLoadRecords("$(ADCORE)/db/NDProcess.template",   "P=$(PREFIX),R=Proc2:,  PORT=PROC2,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT2),NDARRAY_ADDR=0")

# Create 5 statistics plugins
NDStatsConfigure("STATS21", $(QSIZE), 0, "$(PORT2)", 0, 0, 0)
dbLoadRecords("$(ADCORE)/db/NDStats.template",     "P=$(PREFIX),R=Stats21:,  PORT=STATS21,ADDR=0,TIMEOUT=1,HIST_SIZE=256,XSIZE=$(XSIZE),YSIZE=$(YSIZE),NCHANS=$(NCHANS),NDARRAY_PORT=$(PORT2),NDARRAY_ADDR=0")
NDStatsConfigure("STATS22", $(QSIZE), 0, "$(PORT2)", 0, 0, 0)
dbLoadRecords("$(ADCORE)/db/NDStats.template",     "P=$(PREFIX),R=Stats22:,  PORT=STATS22,ADDR=0,TIMEOUT=1,HIST_SIZE=256,XSIZE=$(XSIZE),YSIZE=$(YSIZE),NCHANS=$(NCHANS),NDARRAY_PORT=$(PORT2),NDARRAY_ADDR=0")
NDStatsConfigure("STATS23", $(QSIZE), 0, "$(PORT2)", 0, 0, 0)
dbLoadRecords("$(ADCORE)/db/NDStats.template",     "P=$(PREFIX),R=Stats23:,  PORT=STATS23,ADDR=0,TIMEOUT=1,HIST_SIZE=256,XSIZE=$(XSIZE),YSIZE=$(YSIZE),NCHANS=$(NCHANS),NDARRAY_PORT=$(PORT2),NDARRAY_ADDR=0")
NDStatsConfigure("STATS24", $(QSIZE), 0, "$(PORT2)", 0, 0, 0)
dbLoadRecords("$(ADCORE)/db/NDStats.template",     "P=$(PREFIX),R=Stats24:,  PORT=STATS24,ADDR=0,TIMEOUT=1,HIST_SIZE=256,XSIZE=$(XSIZE),YSIZE=$(YSIZE),NCHANS=$(NCHANS),NDARRAY_PORT=$(PORT2),NDARRAY_ADDR=0")
NDStatsConfigure("STATS25", $(QSIZE), 0, "$(PORT2)", 0, 0, 0)
dbLoadRecords("$(ADCORE)/db/NDStats.template",     "P=$(PREFIX),R=Stats25:,  PORT=STATS25,ADDR=0,TIMEOUT=1,HIST_SIZE=256,XSIZE=$(XSIZE),YSIZE=$(YSIZE),NCHANS=$(NCHANS),NDARRAY_PORT=$(PORT2),NDARRAY_ADDR=0")

# Create a transform plugin
NDTransformConfigure("TRANS2", $(QSIZE), 0, "$(PORT2)", 0, 0, 0)
dbLoadRecords("$(ADCORE)/db/NDPluginBase.template","P=$(PREFIX),R=Trans2:,  PORT=TRANS2,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT2),NDARRAY_ADDR=0")
dbLoadRecords("$(ADCORE)/db/NDTransform.template", "P=$(PREFIX),R=Trans2:,  PORT=TRANS2,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT2)")

# Create an overlay plugin with 8 overlays
NDOverlayConfigure("OVER2", $(QSIZE), 0, "$(PORT2)", 0, 8, 0, 0)
dbLoadRecords("$(ADCORE)/db/NDOverlay.template",   "P=$(PREFIX),R=Over2:, PORT=OVER2,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT2),NDARRAY_ADDR=0")
dbLoadRecords("$(ADCORE)/db/NDOverlayN.template","P=$(PREFIX),R=Over2:1:,NAME=ROI21,   SHAPE=1,O=Over2:,XPOS=$(PREFIX)ROI21:MinX_RBV,YPOS=$(PREFIX)ROI21:MinY_RBV,XSIZE=$(PREFIX)ROI21:SizeX_RBV,YSIZE=$(PREFIX)ROI21:SizeY_RBV,PORT=OVER2,ADDR=0,TIMEOUT=1")
dbLoadRecords("$(ADCORE)/db/NDOverlayN.template","P=$(PREFIX),R=Over2:2:,NAME=ROI22,   SHAPE=1,O=Over2:,XPOS=$(PREFIX)ROI22:MinX_RBV,YPOS=$(PREFIX)ROI22:MinY_RBV,XSIZE=$(PREFIX)ROI22:SizeX_RBV,YSIZE=$(PREFIX)ROI22:SizeY_RBV,PORT=OVER2,ADDR=1,TIMEOUT=1")
dbLoadRecords("$(ADCORE)/db/NDOverlayN.template","P=$(PREFIX),R=Over2:3:,NAME=ROI23,   SHAPE=1,O=Over2:,XPOS=$(PREFIX)ROI23:MinX_RBV,YPOS=$(PREFIX)ROI23:MinY_RBV,XSIZE=$(PREFIX)ROI23:SizeX_RBV,YSIZE=$(PREFIX)ROI23:SizeY_RBV,PORT=OVER2,ADDR=2,TIMEOUT=1")
dbLoadRecords("$(ADCORE)/db/NDOverlayN.template","P=$(PREFIX),R=Over2:4:,NAME=ROI24,   SHAPE=1,O=Over2:,XPOS=$(PREFIX)ROI24:MinX_RBV,YPOS=$(PREFIX)ROI24:MinY_RBV,XSIZE=$(PREFIX)ROI24:SizeX_RBV,YSIZE=$(PREFIX)ROI24:SizeY_RBV,PORT=OVER2,ADDR=3,TIMEOUT=1")
dbLoadRecords("$(ADCORE)/db/NDOverlayN.template","P=$(PREFIX),R=Over2:5:,NAME=Cursor21,SHAPE=1,O=Over2:,XPOS=junk,                  YPOS=junk,                  XSIZE=junk,                   YSIZE=junk,                   PORT=OVER2,ADDR=4,TIMEOUT=1")
dbLoadRecords("$(ADCORE)/db/NDOverlayN.template","P=$(PREFIX),R=Over2:6:,NAME=Cursor22,SHAPE=1,O=Over2:,XPOS=junk,                  YPOS=junk,                  XSIZE=junk,                   YSIZE=junk,                   PORT=OVER2,ADDR=5,TIMEOUT=1")
dbLoadRecords("$(ADCORE)/db/NDOverlayN.template","P=$(PREFIX),R=Over2:7:,NAME=Box21,   SHAPE=1,O=Over2:,XPOS=junk,                  YPOS=junk,                  XSIZE=junk,                   YSIZE=junk,                   PORT=OVER2,ADDR=6,TIMEOUT=1")
dbLoadRecords("$(ADCORE)/db/NDOverlayN.template","P=$(PREFIX),R=Over2:8:,NAME=Box22,   SHAPE=1,O=Over2:,XPOS=junk,                  YPOS=junk,                  XSIZE=junk,                   YSIZE=junk,                   PORT=OVER2,ADDR=7,TIMEOUT=1")

# Create 2 color conversion plugins
NDColorConvertConfigure("CC21", $(QSIZE), 0, "$(PORT2)", 0, 0, 0)
dbLoadRecords("$(ADCORE)/db/NDColorConvert.template", "P=$(PREFIX),R=CC21:,  PORT=CC21,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT2),NDARRAY_ADDR=0")
NDColorConvertConfigure("CC22", $(QSIZE), 0, "$(PORT2)", 0, 0, 0)
dbLoadRecords("$(ADCORE)/db/NDColorConvert.template", "P=$(PREFIX),R=CC22:,  PORT=CC22,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT2),NDARRAY_ADDR=0")

# Create 2 Edge Detectors
NDEdgeConfigure("EDGE2", $(QSIZE), 0, "$(PORT2)", 0, 0, 0)
dbLoadRecords("$(ADCORE)/db/NDEdge.template","P=$(PREFIX),R=Edge2:, PORT=EDGE2,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT2),NDARRAY_ADDR=0")

# Load scan records
#dbLoadRecords("$(SSCAN)/sscanApp/Db/scan.db", "P=$(PREFIX),MAXPTS1=2000,MAXPTS2=200,MAXPTS3=20,MAXPTS4=10,MAXPTSH=10")

# Load sseq record for acquisition sequence
#dbLoadRecords("$(CALC)/calcApp/Db/yySseq.db", "P=$(PREFIX), S=AcquireSequence")

# Calc record reset frame count
#dbLoadRecords("$(CALC)/calcApp/Db/userCalcOuts10.db", "P=$(PREFIX)")

#set_requestfile_path("./")
#set_requestfile_path("$(ADCORE)/ADApp/Db")
#set_requestfile_path("$(CALC)/calcApp/Db")
#set_requestfile_path("$(SSCAN)/sscanApp/Db")
#set_savefile_path("./autosave")
#set_pass0_restoreFile("auto_settings.sav")
#set_pass1_restoreFile("auto_settings.sav")
#save_restoreSet_status_prefix("$(PREFIX)")
#dbLoadRecords("$(AUTOSAVE)/asApp/Db/save_restoreStatus.db", "P=$(PREFIX)")
