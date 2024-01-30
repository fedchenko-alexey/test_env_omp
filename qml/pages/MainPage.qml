import QtQuick 2.0
import Sailfish.Silica 1.0
import ru.auroraos.test 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    Text {
        id: pathText

        property string path: ""

        anchors {
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }
        text: qsTr("Cache path is") + ": " + path
        height: Theme.itemSizeMedium
        color: "white"
    }

    Button {
        onClicked: pathText.path = envTester.cachePath()

        anchors {
            horizontalCenter: parent.horizontalCenter
            top: pathText.bottom
            topMargin: Theme.paddingMedium
        }
        text: qsTr("Get path")
    }

    EnvTester {
        id: envTester
    }
}
