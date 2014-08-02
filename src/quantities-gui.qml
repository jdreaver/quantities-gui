import QtQuick 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2

ApplicationWindow {
    title: "quantities-gui"
    visible: true
    width: 600
    height: 110

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 2


        TextField {
            id: source
            Layout.fillWidth: true
            focus: true
            onTextChanged: output.text = fromString(source.text)
        }

        Label {
            id: output
            font.pixelSize: 20
        }

        Item { Layout.fillHeight: true }
    }
}