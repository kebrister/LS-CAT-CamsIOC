# prosilicaConfig(portName,    # The name of the asyn port to be created
#                 cameraId,    # Unique ID, IP address, or IP name of the camera
#                 maxBuffers,  # Maximum number of NDArray buffers driver can allocate. 0=unlimited
#                 maxMemory,   # Maximum memory bytes driver can allocate. 0=unlimited
#                 priority,    # EPICS thread priority for asyn port driver 0=default
#                 stackSize,   # EPICS thread stack size for asyn port driver 0=default
#                 maxPvAPIFrames) # Number of frames to allocate in PvAPI driver. Default=2.
# The simplest way to determine the uniqueId of a camera is to run the Prosilica GigEViewer application,
# select the camera, and press the "i" icon on the bottom of the main window to show the camera information for this camera.
# The Unique ID will be displayed on the first line in the information window.
#
prosilicaConfig( "$(PORT)", $(CAM_IP), 0, 0, 0, 0, 128)
asynSetTraceIOMask("$(PORT)",0,2)

# Note that prosilica.template must be loaded after NDFile.template to replace the file format correctly
#
dbLoadRecords("$(ADPROSILICA)/db/prosilica.template","P=$(PREFIX),R=$(CAM),PORT=$(PORT),ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT)")

# Create a standard arrays plugin, set it to get data from first Prosilica driver.
NDStdArraysConfigure("Image$(CP)", 5, 0, "$(PORT)", 0, 0, 0, 0)
dbLoadRecords("$(ADCORE)/db/NDStdArrays.template", "P=$(PREFIX),R=image$(CP):,PORT=Image$(CP),ADDR=0,TIMEOUT=1,TYPE=Int16,FTVL=SHORT,NELEMENTS=$(NDARRAY_LENGTH),NDARRAY_PORT=$(PORT)")

< commonPlugins.cmd

