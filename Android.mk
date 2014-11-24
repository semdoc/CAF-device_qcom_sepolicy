# Board specific SELinux policy variable definitions
ifeq ($(call is-vendor-board-platform,QCOM),true)
BOARD_SEPOLICY_DIRS := \
       device/qcom/sepolicy \
       device/qcom/sepolicy/common \
       device/qcom/sepolicy/test \
       device/qcom/sepolicy/$(TARGET_BOARD_PLATFORM) \
       device/google/clockwork/sepolicy

BOARD_SEPOLICY_UNION := \
       genfs_contexts \
       file_contexts \
       service_contexts \
       property_contexts \
       te_macros \
       device.te \
       vold.te \
       ueventd.te \
       file.te \
       property.te \
       untrusted_app.te \
       drmserver.te \
       adbd.te \
       app.te \
       cnd.te \
       system_server.te \
       mediaserver.te \
       msm_irqbalanced.te \
       qmuxd.te \
       netmgrd.te \
       port-bridge.te \
       atfwd.te \
       smd_test.te \
       qmi_ping.te \
       qmi_test_service.te \
       irsc_util.te \
       netd.te \
       rild.te \
       diag.te \
       diag_test.te \
       audiod.te \
       service.te \
       system_app.te \
       thermal-engine.te \
       vm_bms.te \
       bluetooth.te \
       init_shell.te \
       perfd.te \
       domain.te \
       init.te \
       time_daemon.te \
       rmt_storage.te \
       rfs_access.te \
       hvdcp.te \
       qti.te \
       qseecomd.te \
       mcStarter.te \
       keystore.te \
       healthd.te \
       charger_monitor.te \
       surfaceflinger.te \
       wpa.te \
       bootanim.te \
       zygote.te \
       mdm_helper.te \
       peripheral_manager.te \
       qcomsysd.te \
       adsprpcd.te \
       qlogd.te \
       ipacm.te \
       dpmd.te \
       ssr_setup.te \
       subsystem_ramdump.te \
       ssr_diag.te \
       sectest.te \
       location.te \
       location_app.te \
       seapp_contexts \
       logd.te \
       installd.te \
       wcnss_service.te \
       mmi.te \
       dhcp.te \
       mediaserver_test.te \
       hbtp.te \
       kernel.te \
       vold.te \
       clockwork_proxy.te

# Compile sensor pilicy only for SSC targets
SSC_TARGET_LIST := apq8084
SSC_TARGET_LIST += msm8226
SSC_TARGET_LIST += msm8960
SSC_TARGET_LIST += msm8974
SSC_TARGET_LIST += msm8994

#ifeq ($(call is-board-platform-in-list,$(SSC_TARGET_LIST)),true)
BOARD_SEPOLICY_UNION += sensors.te
BOARD_SEPOLICY_UNION += sensors_test.te
#endif

endif
