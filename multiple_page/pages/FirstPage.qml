import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Page {
    id: firstPage
    header: ToolBar {
        Label {
            text: "First Page"
            anchors.centerIn: parent
            font.pixelSize: 18
            font.bold: true
        }
    }

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 30
        width: parent.width * 0.8

        // Welcome text with better styling
        Text {
            text: "Welcome to First Page"
            font.pixelSize: 24
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
            Layout.alignment: Qt.AlignCenter
            color: "#2C3E50"
        }

        // Icon placeholder (you can replace with actual icons)
        Rectangle {
            width: 100
            height: 100
            radius: 50
            color: "#3498DB"
            Layout.alignment: Qt.AlignCenter

            Text {
                text: "HOME"
                anchors.centerIn: parent
                font.pixelSize: 40
            }
        }

        // Improved button container with spacing
        Column {
            spacing: 15
            Layout.alignment: Qt.AlignCenter

            Button {
                text: "Go to Second Page"
                width: 200
                height: 50
                Layout.alignment: Qt.AlignCenter

                background: Rectangle {
                    color: "#3498DB"
                    border.color: "#2980B9"
                    border.width: 2
                    radius: 25

                    Behavior on color {
                        ColorAnimation { duration: 200 }
                    }
                }

                contentItem: Text {
                    text: parent.text
                    font.pixelSize: 16
                    font.bold: true
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                onClicked: stackView.push(secondPageComponent)
            }

            Button {
                text: "Go to Third Page"
                width: 200
                height: 50
                Layout.alignment: Qt.AlignCenter

                background: Rectangle {
                    color: "#2ECC71"
                    border.color: "#27AE60"
                    border.width: 2
                    radius: 25

                    Behavior on color {
                        ColorAnimation { duration: 200 }
                    }
                }

                contentItem: Text {
                    text: parent.text
                    font.pixelSize: 16
                    font.bold: true
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                onClicked: stackView.push(thirdPageComponent)
            }
        }

        // Footer text
        Text {
            text: "Select an option to continue"
            font.pixelSize: 14
            color: "#7F8C8D"
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignCenter
        }
    }

    // Background gradient
    Rectangle {
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#ECF0F1" }
            GradientStop { position: 1.0; color: "#BDC3C7" }
        }
        z: -1
    }
}

