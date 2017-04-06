import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MainForm {
        color: "#000000"
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        mouseArea.onClicked: {
            console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))
        }

        TextInput {
            id: textInput1
            x: 261
            y: 24
            width: 118
            height: 50
            color: "#ffffff"
            text: qsTr("Nephtaly")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 25
        }
    }
}
