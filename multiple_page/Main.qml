import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    id: window
    visible: true
    width: 600
    height: 400
    title: "Multi-Page QML App"

    // StackView to manage pages
    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: firstPage
    }

    // Import components for navigation
    Component {
        id: firstPage
        Item {
            Loader {
                source: "pages/FirstPage.qml"
                anchors.fill: parent
            }
        }
    }

    Component {
        id: secondPageComponent
        Item {
            Loader {
                source: "pages/SecondPage.qml"
                anchors.fill: parent
            }
        }
    }

    Component {
        id: thirdPageComponent
        Item {
            Loader {
                source: "pages/ThirdPage.qml"
                anchors.fill: parent
            }
        }
    }
}

