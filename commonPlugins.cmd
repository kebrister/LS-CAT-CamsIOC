# Create a netCDF file saving plugin.
NDFileNetCDFConfigure("FileNetCDF$(CP)", $(QSIZE), 0, "$(PORT)", 0)
dbLoadRecords("NDFileNetCDF.template","P=$(PREFIX),R=netCDF$(CP):,PORT=FileNetCDF$(CP),ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT)")

# Create a TIFF file saving plugin
NDFileTIFFConfigure("FileTIFF$(CP)", $(QSIZE), 0, "$(PORT)", 0)
dbLoadRecords("NDFileTIFF.template",  "P=$(PREFIX),R=TIFF$(CP):,PORT=FileTIFF$(CP),ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT)")

# Create a JPEG file saving plugin
NDFileJPEGConfigure("FileJPEG$(CP)", $(QSIZE), 0, "$(PORT)", 0)
dbLoadRecords("NDFileJPEG.template",  "P=$(PREFIX),R=JPEG$(CP):,PORT=FileJPEG$(CP),ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT)")

# Create a NeXus file saving plugin
NDFileNexusConfigure("FileNexus$(CP)", $(QSIZE), 0, "$(PORT)", 0)
dbLoadRecords("NDFileNexus.template", "P=$(PREFIX),R=Nexus$(CP):,PORT=FileNexus$(CP),ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT)")

# Create an HDF5 file saving plugin
NDFileHDF5Configure("FileHDF$(CP)", $(QSIZE), 0, "$(PORT)", 0)
dbLoadRecords("NDFileHDF5.template",  "P=$(PREFIX),R=HDF$(CP):,PORT=FileHDF$(CP),ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT)")

# Create a Magick file saving plugin
NDFileMagickConfigure("FileMagick$(CP)", $(QSIZE), 0, "$(PORT)", 0)
dbLoadRecords("NDFileMagick.template","P=$(PREFIX),R=Magick$(CP):,PORT=FileMagick$(CP),ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT)")

# Create 4 ROI plugins
NDROIConfigure("ROI$(CP)1", $(QSIZE), 0, "$(PORT)", 0, 0, 0)
dbLoadRecords("NDROI.template",       "P=$(PREFIX),R=ROI$(CP)1:,  PORT=ROI$(CP)1,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT)")
NDROIConfigure("ROI$(CP)2", $(QSIZE), 0, "$(PORT)", 0, 0, 0)
dbLoadRecords("NDROI.template",       "P=$(PREFIX),R=ROI$(CP)2:,  PORT=ROI$(CP)2,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT)")
NDROIConfigure("ROI$(CP)3", $(QSIZE), 0, "$(PORT)", 0, 0, 0)
dbLoadRecords("NDROI.template",       "P=$(PREFIX),R=ROI$(CP)3:,  PORT=ROI$(CP)3,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT)")
NDROIConfigure("ROI$(CP)4", $(QSIZE), 0, "$(PORT)", 0, 0, 0)
dbLoadRecords("NDROI.template",       "P=$(PREFIX),R=ROI$(CP)4:,  PORT=ROI$(CP)4,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT)")

# Create 8 ROIStat plugins
NDROIStatConfigure("ROISTAT$(CP)", $(QSIZE), 0, "$(PORT)", 0, 8, 0, 0)
dbLoadRecords("NDROIStat.template",   "P=$(PREFIX),R=ROIStat$(CP):  ,PORT=ROISTAT$(CP),ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT),NCHANS=$(NCHANS)")
dbLoadRecords("NDROIStatN.template",  "P=$(PREFIX),R=ROIStat$(CP):1:,PORT=ROISTAT$(CP),ADDR=0,TIMEOUT=1,NCHANS=$(NCHANS)")
dbLoadRecords("NDROIStatN.template",  "P=$(PREFIX),R=ROIStat$(CP):2:,PORT=ROISTAT$(CP),ADDR=1,TIMEOUT=1,NCHANS=$(NCHANS)")
dbLoadRecords("NDROIStatN.template",  "P=$(PREFIX),R=ROIStat$(CP):3:,PORT=ROISTAT$(CP),ADDR=2,TIMEOUT=1,NCHANS=$(NCHANS)")
dbLoadRecords("NDROIStatN.template",  "P=$(PREFIX),R=ROIStat$(CP):4:,PORT=ROISTAT$(CP),ADDR=3,TIMEOUT=1,NCHANS=$(NCHANS)")
dbLoadRecords("NDROIStatN.template",  "P=$(PREFIX),R=ROIStat$(CP):5:,PORT=ROISTAT$(CP),ADDR=4,TIMEOUT=1,NCHANS=$(NCHANS)")
dbLoadRecords("NDROIStatN.template",  "P=$(PREFIX),R=ROIStat$(CP):6:,PORT=ROISTAT$(CP),ADDR=5,TIMEOUT=1,NCHANS=$(NCHANS)")
dbLoadRecords("NDROIStatN.template",  "P=$(PREFIX),R=ROIStat$(CP):7:,PORT=ROISTAT$(CP),ADDR=6,TIMEOUT=1,NCHANS=$(NCHANS)")
dbLoadRecords("NDROIStatN.template",  "P=$(PREFIX),R=ROIStat$(CP):8:,PORT=ROISTAT$(CP),ADDR=7,TIMEOUT=1,NCHANS=$(NCHANS)")

# Create a processing plugin
NDProcessConfigure("PROC$(CP)", $(QSIZE), 0, "$(PORT)", 0, 0, 0)
dbLoadRecords("NDProcess.template",   "P=$(PREFIX),R=Proc$(CP):,  PORT=PROC$(CP),ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT)")

# Create 5 statistics plugins
NDStatsConfigure("STATS$(CP)1", $(QSIZE), 0, "$(PORT)", 0, 0, 0)
dbLoadRecords("NDStats.template",     "P=$(PREFIX),R=Stats$(CP)1:,  PORT=STATS$(CP)1,ADDR=0,TIMEOUT=1,HIST_SIZE=256,XSIZE=$(XSIZE),YSIZE=$(YSIZE),NCHANS=$(NCHANS),NDARRAY_PORT=$(PORT)")
NDStatsConfigure("STATS$(CP)2", $(QSIZE), 0, "ROI$(CP)1", 0, 0, 0)
dbLoadRecords("NDStats.template",     "P=$(PREFIX),R=Stats$(CP)2:,  PORT=STATS$(CP)2,ADDR=0,TIMEOUT=1,HIST_SIZE=256,XSIZE=$(XSIZE),YSIZE=$(YSIZE),NCHANS=$(NCHANS),NDARRAY_PORT=$(PORT)")
NDStatsConfigure("STATS$(CP)3", $(QSIZE), 0, "ROI$(CP)2", 0, 0, 0)
dbLoadRecords("NDStats.template",     "P=$(PREFIX),R=Stats$(CP)3:,  PORT=STATS$(CP)3,ADDR=0,TIMEOUT=1,HIST_SIZE=256,XSIZE=$(XSIZE),YSIZE=$(YSIZE),NCHANS=$(NCHANS),NDARRAY_PORT=$(PORT)")
NDStatsConfigure("STATS$(CP)4", $(QSIZE), 0, "ROI$(CP)3", 0, 0, 0)
dbLoadRecords("NDStats.template",     "P=$(PREFIX),R=Stats$(CP)4:,  PORT=STATS$(CP)4,ADDR=0,TIMEOUT=1,HIST_SIZE=256,XSIZE=$(XSIZE),YSIZE=$(YSIZE),NCHANS=$(NCHANS),NDARRAY_PORT=$(PORT)")
NDStatsConfigure("STATS$(CP)5", $(QSIZE), 0, "ROI$(CP)4", 0, 0, 0)
dbLoadRecords("NDStats.template",     "P=$(PREFIX),R=Stats$(CP)5:,  PORT=STATS$(CP)5,ADDR=0,TIMEOUT=1,HIST_SIZE=256,XSIZE=$(XSIZE),YSIZE=$(YSIZE),NCHANS=$(NCHANS),NDARRAY_PORT=$(PORT)")

# Create a transform plugin
NDTransformConfigure("TRANS$(CP)", $(QSIZE), 0, "$(PORT)", 0, 0, 0)
dbLoadRecords("NDTransform.template", "P=$(PREFIX),R=Trans$(CP):,  PORT=TRANS$(CP),ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT)")

# Create an overlay plugin with 8 overlays
NDOverlayConfigure("OVER$(CP)", $(QSIZE), 0, "$(PORT)", 0, 8, 0, 0)
dbLoadRecords("NDOverlay.template", "P=$(PREFIX),R=Over$(CP):, PORT=OVER$(CP),ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT)")
dbLoadRecords("NDOverlayN.template","P=$(PREFIX),R=Over$(CP):1:,NAME=ROI$(CP)1,   SHAPE=1,O=Over$(CP):,XPOS=$(PREFIX)ROI$(CP)1:MinX_RBV,YPOS=$(PREFIX)ROI$(CP)1:MinY_RBV,XSIZE=$(PREFIX)ROI$(CP)1:SizeX_RBV,YSIZE=$(PREFIX)ROI$(CP)1:SizeY_RBV,PORT=OVER$(CP),ADDR=0,TIMEOUT=1")
dbLoadRecords("NDOverlayN.template","P=$(PREFIX),R=Over$(CP):2:,NAME=ROI$(CP)2,   SHAPE=1,O=Over$(CP):,XPOS=$(PREFIX)ROI$(CP)2:MinX_RBV,YPOS=$(PREFIX)ROI$(CP)2:MinY_RBV,XSIZE=$(PREFIX)ROI$(CP)2:SizeX_RBV,YSIZE=$(PREFIX)ROI$(CP)2:SizeY_RBV,PORT=OVER$(CP),ADDR=1,TIMEOUT=1")
dbLoadRecords("NDOverlayN.template","P=$(PREFIX),R=Over$(CP):3:,NAME=ROI$(CP)3,   SHAPE=1,O=Over$(CP):,XPOS=$(PREFIX)ROI$(CP)3:MinX_RBV,YPOS=$(PREFIX)ROI$(CP)3:MinY_RBV,XSIZE=$(PREFIX)ROI$(CP)3:SizeX_RBV,YSIZE=$(PREFIX)ROI$(CP)3:SizeY_RBV,PORT=OVER$(CP),ADDR=2,TIMEOUT=1")
dbLoadRecords("NDOverlayN.template","P=$(PREFIX),R=Over$(CP):4:,NAME=ROI$(CP)4,   SHAPE=1,O=Over$(CP):,XPOS=$(PREFIX)ROI$(CP)4:MinX_RBV,YPOS=$(PREFIX)ROI$(CP)4:MinY_RBV,XSIZE=$(PREFIX)ROI$(CP)4:SizeX_RBV,YSIZE=$(PREFIX)ROI$(CP)4:SizeY_RBV,PORT=OVER$(CP),ADDR=3,TIMEOUT=1")
dbLoadRecords("NDOverlayN.template","P=$(PREFIX),R=Over$(CP):5:,NAME=Cursor1,SHAPE=1,O=Over$(CP):,XPOS=junk,                  YPOS=junk,                  XSIZE=junk,                   YSIZE=junk,                   PORT=OVER$(CP),ADDR=4,TIMEOUT=1")
dbLoadRecords("NDOverlayN.template","P=$(PREFIX),R=Over$(CP):6:,NAME=Cursor2,SHAPE=1,O=Over$(CP):,XPOS=junk,                  YPOS=junk,                  XSIZE=junk,                   YSIZE=junk,                   PORT=OVER$(CP),ADDR=5,TIMEOUT=1")
dbLoadRecords("NDOverlayN.template","P=$(PREFIX),R=Over$(CP):7:,NAME=Box1,   SHAPE=1,O=Over$(CP):,XPOS=junk,                  YPOS=junk,                  XSIZE=junk,                   YSIZE=junk,                   PORT=OVER$(CP),ADDR=6,TIMEOUT=1")
dbLoadRecords("NDOverlayN.template","P=$(PREFIX),R=Over$(CP):8:,NAME=Box2,   SHAPE=1,O=Over$(CP):,XPOS=junk,                  YPOS=junk,                  XSIZE=junk,                   YSIZE=junk,                   PORT=OVER$(CP),ADDR=7,TIMEOUT=1")

# Create 2 color conversion plugins
NDColorConvertConfigure("CC$(CP)1", $(QSIZE), 0, "$(PORT)", 0, 0, 0)
dbLoadRecords("NDColorConvert.template", "P=$(PREFIX),R=CC$(CP)1:,  PORT=CC$(CP)1,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT)")
NDColorConvertConfigure("CC$(CP)2", $(QSIZE), 0, "$(PORT)", 0, 0, 0)
dbLoadRecords("NDColorConvert.template", "P=$(PREFIX),R=CC$(CP)2:,  PORT=CC$(CP)2,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT)")

# Create a circular buffer plugin
#NDCircularBuffConfigure("CB$(CP)", $(QSIZE), 0, "$(PORT)", 0, $(CBUFFS), 0)
#dbLoadRecords("NDCircularBuff.template", "P=$(PREFIX),R=CB$(CP):,  PORT=CB$(CP),ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT)")

# Create an NDAttribute plugin with 8 attributes
NDAttrConfigure("ATTR$(CP)", $(QSIZE), 0, "$(PORT)", 0, 8, 0, 0, 0)
dbLoadRecords("NDAttribute.template",  "P=$(PREFIX),R=Attr$(CP):,    PORT=ATTR$(CP),ADDR=0,TIMEOUT=1,NCHANS=$(NCHANS),NDARRAY_PORT=$(PORT)")
dbLoadRecords("NDAttributeN.template", "P=$(PREFIX),R=Attr$(CP):1:,  PORT=ATTR$(CP),ADDR=0,TIMEOUT=1,NCHANS=$(NCHANS)")
dbLoadRecords("NDAttributeN.template", "P=$(PREFIX),R=Attr$(CP):2:,  PORT=ATTR$(CP),ADDR=1,TIMEOUT=1,NCHANS=$(NCHANS)")
dbLoadRecords("NDAttributeN.template", "P=$(PREFIX),R=Attr$(CP):3:,  PORT=ATTR$(CP),ADDR=2,TIMEOUT=1,NCHANS=$(NCHANS)")
dbLoadRecords("NDAttributeN.template", "P=$(PREFIX),R=Attr$(CP):4:,  PORT=ATTR$(CP),ADDR=3,TIMEOUT=1,NCHANS=$(NCHANS)")
dbLoadRecords("NDAttributeN.template", "P=$(PREFIX),R=Attr$(CP):5:,  PORT=ATTR$(CP),ADDR=4,TIMEOUT=1,NCHANS=$(NCHANS)")
dbLoadRecords("NDAttributeN.template", "P=$(PREFIX),R=Attr$(CP):6:,  PORT=ATTR$(CP),ADDR=5,TIMEOUT=1,NCHANS=$(NCHANS)")
dbLoadRecords("NDAttributeN.template", "P=$(PREFIX),R=Attr$(CP):7:,  PORT=ATTR$(CP),ADDR=6,TIMEOUT=1,NCHANS=$(NCHANS)")
dbLoadRecords("NDAttributeN.template", "P=$(PREFIX),R=Attr$(CP):8:,  PORT=ATTR$(CP),ADDR=7,TIMEOUT=1,NCHANS=$(NCHANS)")

# Create Edge Detector
NDEdgeConfigure("EDGE$(CP)", $(QSIZE), 0, "$(PORT)", 0, 0, 0)
dbLoadRecords("$(ADCORE)/db/NDEdge.template","P=$(PREFIX),R=Edge$(CP):, PORT=EDGE$(CP),ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT),NDARRAY_ADDR=0")
