import QtQuick 2.4
import Ubuntu.Components 1.3
import QtQuick.Window 2.2

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "screen.liu-xiao-guo"

    width: units.gu(60)
    height: units.gu(85)

    property var orientations: ["PrimaryOrientation", "PortraitOrientation",
                    "LandscapeOrientation","", "InvertedPortraitOrientation","", "","",
                    "InvertedLandscapeOrientation" ]


    Page {
        title: i18n.tr("screen")

        Column {
            anchors.centerIn: parent
            spacing: units.gu(2)

            Label {
                text: "desktopAvailableHeight: " + Screen.desktopAvailableHeight
            }

            Label {
                text: "devicePixelRatio: " + Screen.devicePixelRatio
            }

            Label {
                text: "desktopAvailableWidth: " + Screen.desktopAvailableWidth
            }

            Label {
                text: "height: " + Screen.height
            }

            Label {
                text: "width: " + Screen.width
            }

            Label {
                text: "name: " + Screen.name
            }

            Label {
                text: "orientation: " + orientations[Screen.orientation]
            }

            Label {
                text: "primaryOrientation: " + orientations[Screen.primaryOrientation]
            }

            Label {
                text: "orientationUpdateMask: " + Screen.orientationUpdateMask
            }

            Label {
                text: "pixelDensity: " + Screen.pixelDensity
            }
        }
    }
}

