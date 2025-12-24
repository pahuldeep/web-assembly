import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
Page {
    id: thirdPage

    header: ToolBar {
        Label {
            text: "Third Page"
            anchors.centerIn: parent
        }

        Button {
            text: "←"
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.margins: 10
            onClicked: stackView.pop()
        }
    }

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 30
        width: parent.width * 0.8

        Text {
            text: "This is the Third Page"
            font.pixelSize: 20
            font.bold: true
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignHCenter
            width: parent.width
        }

        // Ellipse using Rectangle with radius
        Rectangle {
            width: 180
            height: 120
            color: "#FF6B6B"  // Red color
            border.color: "#FF5252"
            border.width: 3
            radius: 60  // Makes it elliptical (height/2)

            // Add a gradient effect
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#FF8E8E" }
                GradientStop { position: 1.0; color: "#FF5252" }
            }

            Text {
                text: "Ellipse Shape"
                anchors.centerIn: parent
                font.pixelSize: 16
                font.bold: true
                color: "white"
            }
        }

        // Better button styling
        Button {
            text: "Go Back"
            width: 120
            height: 40
            background: Rectangle {
                color: "#50C878"
                border.color: "#3CB371"
                border.width: 2
                radius: 20

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

            onClicked: stackView.pop()
        }
    }

    // Background effect
    Rectangle {
        anchors.fill: parent
        color: "#F8F9FA"
        opacity: 0.5
        z: -1
    }
}
