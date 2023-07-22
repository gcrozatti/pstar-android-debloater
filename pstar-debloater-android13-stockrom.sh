#!/bin/bash
while [ "$OPTION" != 7 ]; do
    printf '\nWelcome to PSTAR Android Debloater\n'
    printf '*%.0s' {1..22}
    printf '\n Select an option:\n'
    printf '\n 1 - List devices connected'
    printf '\n 2 - List all apps installed'
	printf '\n 3 - List all Motorola apps installed'
	printf '\n 4 - List all Google apps installed'
    printf '\n 5 - Uninstall pre-selected Motorola system apps'
    printf '\n 6 - Uninstall pre-selected optional apps, you may want to keep these. Be careful'
    printf '\n 7 - Exit\n'
    read -r OPTION
    case $OPTION in
        1)
			adb devices
        ;;
		
        2)
            echo "List all apps installed: "
            adb shell pm list packages
        ;;
		
		3)
			echo "List all 'Motorola apps' installed: "
			adb shell pm list packages | grep 'motorola'
        ;;
		
		4)
			echo "List all 'Google apps' installed: "
			adb shell pm list packages | grep 'google'
        ;;
		
        5)
			echo "Uninstalling Motorola following apps: "
			
			adb shell pm uninstall -k --user 0 com.motorola.motocare
			adb shell pm uninstall -k --user 0 com.motorola.aiservices
			adb shell pm uninstall -k --user 0 com.motorola.android.launcher.overlay.upgrades
			adb shell pm uninstall -k --user 0 com.motorola.att.phone.extensions
			adb shell pm uninstall -k --user 0 com.motorola.android.provisioning
			adb shell pm uninstall -k --user 0 com.motorola.wifi.motowifimetrics
			adb shell pm uninstall -k --user 0 com.motorola.callredirectionservice
			adb shell pm uninstall -k --user 0 com.motorola.dynamicvolume
			adb shell pm uninstall -k --user 0 com.motorola.screenshoteditor
			adb shell pm uninstall -k --user 0 com.motorola.android.launcher.overlay.telus
			adb shell pm uninstall -k --user 0 com.motorola.msimsettings.overlay
			adb shell pm uninstall -k --user 0 com.motorola.ccc.devicemanagement
			adb shell pm uninstall -k --user 0 com.motorola.launcherconfig.overlay.amxla
			adb shell pm uninstall -k --user 0 com.motorola.actions.overlay
			adb shell pm uninstall -k --user 0 com.motorola.android.connectivity.resources.overlay
			adb shell pm uninstall -k --user 0 com.motorola.gesture
			adb shell pm uninstall -k --user 0 com.motorola.android.systemui.overlay.att
			adb shell pm uninstall -k --user 0 com.motorola.contacts.preloadcontacts.overlay.vzw
			adb shell pm uninstall -k --user 0 com.motorola.setup.overlay.amx
			adb shell pm uninstall -k --user 0 com.motorola.android.networkstack.tethering.overlay.motCommon
			adb shell pm uninstall -k --user 0 com.motorola.ccc.mainplm
			adb shell pm uninstall -k --user 0 com.motorola.telprov
			adb shell pm uninstall -k --user 0 com.motorola.android.providers.chromehomepage
			adb shell pm uninstall -k --user 0 com.motorola.launcherconfig.overlay.amxmx
			adb shell pm uninstall -k --user 0 com.motorola.omadm.vzw
			adb shell pm uninstall -k --user 0 com.motorola.launcherconfig.overlay.retru
			adb shell pm uninstall -k --user 0 com.motorola.msimsettings
			adb shell pm uninstall -k --user 0 com.motorola.securityhub
			adb shell pm uninstall -k --user 0 com.motorola.ccc.notification
			adb shell pm uninstall -k --user 0 com.motorola.vzw.pco.extensions.pcoreceiver
			adb shell pm uninstall -k --user 0 com.motorola.help
			adb shell pm uninstall -k --user 0 com.motorola.android.coresettingsext.overlay.doubletap
			adb shell pm uninstall -k --user 0 com.motorola.entitlement
			adb shell pm uninstall -k --user 0 com.motorola.photoeditor
			adb shell pm uninstall -k --user 0 com.motorola.carriersettingsext
			adb shell pm uninstall -k --user 0 com.motorola.safetycenter.resources.overlay
			adb shell pm uninstall -k --user 0 com.motorola.moto
			adb shell pm uninstall -k --user 0 com.motorola.settings
			adb shell pm uninstall -k --user 0 com.motorola.leanbacklauncher
			adb shell pm uninstall -k --user 0 com.motorola.omadm.service
			adb shell pm uninstall -k --user 0 com.motorola.android.nativedropboxagent
			adb shell pm uninstall -k --user 0 com.motorola.motcameradesktop
			adb shell pm uninstall -k --user 0 com.motorola.hiddenmenuapp
			adb shell pm uninstall -k --user 0 com.motorola.android.systemui.overlay.sprint
			adb shell pm uninstall -k --user 0 android.autoinstalls.config.motorola.layout
			adb shell pm uninstall -k --user 0 com.motorola.coresettingsext
			adb shell pm uninstall -k --user 0 com.motorola.android.overlay.common
			adb shell pm uninstall -k --user 0 com.motorola.launcherconfig.overlay.amxpe
			adb shell pm uninstall -k --user 0 com.motorola.carrierconfig
			adb shell pm uninstall -k --user 0 com.motorola.android.overlay.gabutton
			adb shell pm uninstall -k --user 0 com.motorola.android.overlay.wfd
			adb shell pm uninstall -k --user 0 com.motorola.overlay.launcher3
			adb shell pm uninstall -k --user 0 com.motorola.bug2go
			adb shell pm uninstall -k --user 0 com.motorola.attvowifi
			adb shell pm uninstall -k --user 0 com.motorola.android.launcher.overlay.koodo
			adb shell pm uninstall -k --user 0 com.motorola.systemserver
			adb shell pm uninstall -k --user 0 com.motorola.genie
			adb shell pm uninstall -k --user 0 com.motorola.motosignature.app
			adb shell pm uninstall -k --user 0 com.motorola.android.providers.settings.auto_generated_rro_product__
			adb shell pm uninstall -k --user 0 com.motorola.contacts.preloadcontacts
			adb shell pm uninstall -k --user 0 com.motorola.motowaves
			adb shell pm uninstall -k --user 0 com.motorola.appforecast
			adb shell pm uninstall -k --user 0 com.motorola.nfc
			adb shell pm uninstall -k --user 0 com.motorola.android.systemui.overlay.vzw
			adb shell pm uninstall -k --user 0 com.motorola.setup.overlay.gabuttonlefttop
			adb shell pm uninstall -k --user 0 com.motorola.launcherconfig.overlay.amxar
			adb shell pm uninstall -k --user 0 com.motorola.freeform
			adb shell pm uninstall -k --user 0 com.motorola.android.fmradio
			adb shell pm uninstall -k --user 0 com.motorola.launcherconfig.overlay.amxbr
			adb shell pm uninstall -k --user 0 com.motorola.demo
			adb shell pm uninstall -k --user 0 com.motorola.launcherconfig.overlay.amxcl
			adb shell pm uninstall -k --user 0 com.motorola.rcsConfigService
			adb shell pm uninstall -k --user 0 com.motorola.setup.overlay.pai
			adb shell pm uninstall -k --user 0 com.motorola.launcherconfig.overlay.amxco
			adb shell pm uninstall -k --user 0 com.motorola.android.systemui.overlay.usc
			adb shell pm uninstall -k --user 0 com.motorola.android.settings.overlay.global
			adb shell pm uninstall -k --user 0 com.motorola.easyprefix
			adb shell pm uninstall -k --user 0 com.motorola.livewallpaper3
			adb shell pm uninstall -k --user 0 com.motorola.personalize
			adb shell pm uninstall -k --user 0 com.motorola.android.settings.overlay.fps.side
			adb shell pm uninstall -k --user 0 com.motorola.brapps
			adb shell pm uninstall -k --user 0 com.motorola.gamemode
			adb shell pm uninstall -k --user 0 com.motorola.thermalservice
			adb shell pm uninstall -k --user 0 com.motorola.systemui.desk
			adb shell pm uninstall -k --user 0 com.motorola.android.coresettingsext.overlay.pstar
			adb shell pm uninstall -k --user 0 com.motorola.android.networkstack.overlay.mcc460
			adb shell pm uninstall -k --user 0 com.motorola.slpc_sys
			adb shell pm uninstall -k --user 0 com.motorola.mobiledesktop.core
			adb shell pm uninstall -k --user 0 com.motorola.motodisplay
			adb shell pm uninstall -k --user 0 com.motorola.faceunlock
			adb shell pm uninstall -k --user 0 com.motorola.motofpstouch
			adb shell pm uninstall -k --user 0 com.motorola.actions
			adb shell pm uninstall -k --user 0 com.motorola.launcherconfig
			adb shell pm uninstall -k --user 0 com.motorola.android.launcher.overlay.applabeltwolines
			adb shell pm uninstall -k --user 0 com.motorola.appdirectedsmsproxy
			adb shell pm uninstall -k --user 0 com.motorola.discovery
			adb shell pm uninstall -k --user 0 com.motorola.setup.auto_generated_rro_vendor__
			adb shell pm uninstall -k --user 0 com.motorola.dciservice
			adb shell pm uninstall -k --user 0 com.motorola.motocit
			adb shell pm uninstall -k --user 0 com.motorola.setup
			adb shell pm uninstall -k --user 0 com.motorola.nfwlocationattribution
			adb shell pm uninstall -k --user 0 com.motorola.android.launcher.overlay.amx
			adb shell pm uninstall -k --user 0 com.motorola.mototour
			adb shell pm uninstall -k --user 0 com.motorola.motosignature2.app
			adb shell pm uninstall -k --user 0 com.motorola.android.overlay.crystaltalkai
			adb shell pm uninstall -k --user 0 com.motorola.securevault
			adb shell pm uninstall -k --user 0 com.motorola.android.systemui.overlay.tmo
			adb shell pm uninstall -k --user 0 com.motorola.bach.modemstats
			adb shell pm uninstall -k --user 0 com.motorola.android.settings.overlay.webcam
			adb shell pm uninstall -k --user 0 com.motorola.help.extlog
			adb shell pm uninstall -k --user 0 com.motorola.revoker.services
			adb shell pm uninstall -k --user 0 com.motorola.lifetimedata
			adb shell pm uninstall -k --user 0 com.motorola.mobiledesktop
			adb shell pm uninstall -k --user 0 com.motorola.spaces
			adb shell pm uninstall -k --user 0 com.motorola.enterprise.service
			adb shell pm uninstall -k --user 0 com.motorola.spectrum.setup.extensions
			adb shell pm uninstall -k --user 0 com.motorola.timeweatherwidget
			printf 'Success, you can safely remove your device now.'
		;;
		
		6)
			echo "Uninstalling pre-selected optional apps : "
			
			adb shell uninstall -k --user 0 com.facebook.katana # facebook app
			adb shell uninstall -k --user 0 com.facebook.appmanager # facebook related services
			adb shell uninstall -k --user 0 com.facebook.services # facebook related services
			adb shell uninstall -k --user 0 com.facebook.system # facebook related services
			adb shell uninstall -k --user 0 com.google.android.apps.youtube.music # google music app
			adb shell uninstall -k --user 0 com.google.android.apps.youtube.music.setupwizard # google music app
			adb shell uninstall -k --user 0 com.google.android.apps.docs # google drive
			adb shell uninstall -k --user 0 com.google.android.apps.docs.editors.sheets # google sheets
			adb shell uninstall -k --user 0 com.google.android.apps.docs.editors.slides # google slides
			adb shell uninstall -k --user 0 com.google.android.googlequicksearchbox # google app
			adb shell uninstall -k --user 0 com.google.android.apps.tachyon # google meet
			adb shell uninstall -k --user 0 com.google.android.apps.podcasts # google podcast
			adb shell uninstall -k --user 0 com.google.android.apps.chromecast.app # google home
			adb shell uninstall -k --user 0 com.google.android.apps.magazines # google news
			adb shell uninstall -k --user 0 com.google.android.apps.walletnfcrel # google wallet
			adb shell uninstall -k --user 0 com.google.android.apps.photos # google photos
			adb shell uninstall -k --user 0 com.google.android.apps.subscriptions.red # google one
			adb shell uninstall -k --user 0 com.google.android.youtube # google youtube system app
			adb shell uninstall -k --user 0 com.google.android.apps.nbu.files # google files
			adb shell uninstall -k --user 0 com.google.android.calendar # google calendar
			adb shell uninstall -k --user 0 com.google.android.apps.fitness # google fit
			adb shell uninstall -k --user 0 com.google.android.apps.messaging # google messages
			adb shell uninstall -k --user 0 com.google.android.apps.googleassistant # google assistant
			adb shell uninstall -k --user 0 com.android.chrome # google chrome
			adb shell uninstall -k --user 0 com.google.android.apps.maps # google maps
			adb shell uninstall -k --user 0 com.google.android.gm # google gmail
			adb shell uninstall -k --user 0 com.google.android.apps.docs # google drive
			adb shell uninstall -k --user 0 com.google.android.deskclock # google Clock 
			adb shell uninstall -k --user 0 com.google.android.videos # google TV
			adb shell uninstall -k --user 0 com.google.android.contacts # Contacts
			printf 'Success, you can safely remove your device now.'
		;;
		*)
			echo "Thank you" #gcrozatti
			exit 1
		;;
	esac
done