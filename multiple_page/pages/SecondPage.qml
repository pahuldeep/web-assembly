import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Page {
    id: secondPage

    header: ToolBar {
        Label {
            text: "Second Page"
            anchors.centerIn: parent
        }

        // Back button in toolbar
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
        width: parent.width * 0.8  // Take 80% of parent width

        Text {
            text: "This is the Second Page"
            font.pixelSize: 20
            font.bold: true
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignHCenter
            width: parent.width
        }

        // Enhanced rectangle with better styling
        Rectangle {
            width: 180
            height: 120
            color: "#4A90E2"  // Blue color
            border.color: "#2C5DA3"  // Darker blue
            border.width: 3
            radius: 15  // Rounded corners

            // Shadow effect
            Rectangle {
                anchors.fill: parent
                color: "transparent"
                border.color: "#808080"
                border.width: 1
                opacity: 0.3
                radius: 15
            }

            Text {
                text: "Sample Rectangle"
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
                color: "#50C878"  // Green color
                border.color: "#3CB371"
                border.width: 2
                radius: 20

                // Hover effect
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

    // Add a subtle background effect
    Rectangle {
        anchors.fill: parent
        color: "#F8F9FA"
        opacity: 0.5
        z: -1
    }
}
