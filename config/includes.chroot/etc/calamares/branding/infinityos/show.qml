/* InfinityOS installer slideshow — shown while files are being copied */
import QtQuick 2.0
import calamares.slideshow 1.0

Presentation {
    id: presentation

    Timer {
        interval: 5000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }

    Slide {
        anchors.fill: parent
        Rectangle {
            anchors.fill: parent
            color: "#0d0e1a"

            Image {
                id: logo
                source: "logo.png"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 60
                width: 120
                height: 120
                fillMode: Image.PreserveAspectFit
            }

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: logo.bottom
                anchors.topMargin: 24
                text: "Privacy First."
                color: "#8A4FFF"
                font.pixelSize: 28
                font.bold: true
            }

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: logo.bottom
                anchors.topMargin: 68
                text: "InfinityOS ships with a system-wide firewall, encrypted DNS,\nand MAC address randomization — all active by default.\nYour network activity stays yours."
                color: "#c0c0e0"
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                lineHeight: 1.5
            }
        }
    }

    Slide {
        anchors.fill: parent
        Rectangle {
            anchors.fill: parent
            color: "#0d0e1a"

            Image {
                id: logo2
                source: "logo.png"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 60
                width: 120
                height: 120
                fillMode: Image.PreserveAspectFit
            }

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: logo2.bottom
                anchors.topMargin: 24
                text: "Game Ready."
                color: "#8A4FFF"
                font.pixelSize: 28
                font.bold: true
            }

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: logo2.bottom
                anchors.topMargin: 68
                text: "Steam, Heroic, Wine-Staging, and Proton-GE are pre-installed.\nWindows games run out of the box — no setup required.\nDouble-click a .exe and it just works."
                color: "#c0c0e0"
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                lineHeight: 1.5
            }
        }
    }

    Slide {
        anchors.fill: parent
        Rectangle {
            anchors.fill: parent
            color: "#0d0e1a"

            Image {
                id: logo3
                source: "logo.png"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 60
                width: 120
                height: 120
                fillMode: Image.PreserveAspectFit
            }

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: logo3.bottom
                anchors.topMargin: 24
                text: "AI Built In."
                color: "#8A4FFF"
                font.pixelSize: 28
                font.bold: true
            }

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: logo3.bottom
                anchors.topMargin: 68
                text: "A local AI assistant powers your desktop — no cloud, no account,\nno data leaving your machine.\nFully offline. Always available."
                color: "#c0c0e0"
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                lineHeight: 1.5
            }
        }
    }

    Slide {
        anchors.fill: parent
        Rectangle {
            anchors.fill: parent
            color: "#0d0e1a"

            Image {
                id: logo4
                source: "logo.png"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 60
                width: 120
                height: 120
                fillMode: Image.PreserveAspectFit
            }

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: logo4.bottom
                anchors.topMargin: 24
                text: "Open. Forever."
                color: "#8A4FFF"
                font.pixelSize: 28
                font.bold: true
            }

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: logo4.bottom
                anchors.topMargin: 68
                text: "InfinityOS is GPL v3. Nobody owns it.\nNobody can make it proprietary. Nobody can take it away.\nBuilt on Debian Stable — rock solid, community trusted."
                color: "#c0c0e0"
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                lineHeight: 1.5
            }
        }
    }

    function onActivate() {}
    function onLeave() {}
}
