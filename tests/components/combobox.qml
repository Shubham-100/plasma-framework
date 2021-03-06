import QtQuick 2.0

import org.kde.plasma.components 2.0
import org.kde.plasma.core 2.0 as PlasmaCore

Rectangle {
    id: root
    color: "white"
    width: 800
    height: 300

    ListModel {
        id: demoModel
        ListElement { text: "Banana"; color: "Yellow" }
        ListElement { text: "Apple"; color: "Green" }
        ListElement { text: "Coconut"; color: "Brown" }
    }

    Flow {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 20

        ComboBox {
            model:demoModel
        }
        ComboBox {
            editable: true
            model: demoModel
        }
        PlasmaCore.ColorScope {
            implicitWidth: childrenRect.width
            implicitHeight: childrenRect.width

            colorGroup: PlasmaCore.Theme.ComplementaryColorGroup
            ComboBox {
                model:demoModel
            }
        }
    }
}