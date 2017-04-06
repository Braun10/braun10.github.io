/*
  Author:Sietze van de Star
  Project:TU/ecomotive/Lina
  Date:31/03/2017
*/

import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import "logic.js" as Logic

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 800
    height: 480
    title: qsTr("TU/ecomotive")
/////////////////////////////////////////////////////////////////////////////////////
//Globals
    property var xValue: 210
    property var yValue: 0
    property var fontSizeOptions: 15
    property var indexCount: 2

    SwipeView{
        id:view
        currentIndex: 2
        anchors.fill: parent
//      background:
//      Rectangle {
//                 gradient: Gradient {
//                     GradientStop { position: 0; color: "#151515" }
//        //             GradientStop { position: 1; color: "#303030" }
//                       }
//                  }

/////////////////////////////////////////////////////////////////////////////////////
//controlEvent
        focus: true
        Keys.onPressed: {

            if (event.key === Qt.Key_Right) (xValue +=30)  && console.log(xValue);
            if (event.key === Qt.Key_Left)  (xValue -=30) && console.log(xValue);
            if (event.key === Qt.Key_Enter) console.log(view.currentIndex)  ;
            if (event.key === Qt.Key_Up) yValue -=5;
            if (event.key === Qt.Key_Down) yValue +=5;
            if (xValue >= 270){
                xValue=270;
            }
            if (xValue <=  30 ){
                xValue=30;
            }
        }

    Item {
        id: firstPage

/////////////////////////////////////////////////////////////////////////////////////
//Circle
    }
/////////////////////////////////////////////////////////////////////////////////////
    Item{
            id:secondPage
        Canvas {
            id: mycanvas3
            width: 200
            height: 200
            x: 300
            y: 140
            z: 1
            onPaint: {
                var ctx = getContext("2d");
                ctx.beginPath();
                var gradient=ctx.createLinearGradient(0,50,170,50);
                gradient.addColorStop("0.5","#35B59E");
                gradient.addColorStop("0.5","#35B59E");
                gradient.addColorStop("1.0","#77C0E8");
                ctx.strokeStyle=gradient;
                ctx.lineWidth=7;
                var centerX = width / 2;
                var centerY = height / 2;
                var radius = 90;
                context.arc(centerX, centerY, radius, 0, 2 * Math.PI, false);
                ctx.stroke();
            }
        }
      }

/////////////////////////////////////////////////////////////////////////////////////
    Item{
                id: thirdPage

                Canvas {
                    id: mycanvas
                    width: 200
                    height: 200
                    x: 300
                    y: 140
                    z: 1
                    onPaint: {
                        var ctx = getContext("2d");
                        ctx.beginPath();
                        var gradient=ctx.createLinearGradient(0,50,170,50);
                        gradient.addColorStop("0.5","#77C0E8");
                        gradient.addColorStop("0.5","#77C0E8");
                        gradient.addColorStop("1.0","#35B59E");
                        ctx.strokeStyle=gradient;
                        ctx.lineWidth=7;
                        var centerX = width / 2;
                        var centerY = height / 2;
                        var radius = 90;
                        context.arc(centerX, centerY, radius, 0, 2 * Math.PI, false);
                        ctx.stroke();
                    }
                }

                Canvas {
                    id: mycanvas2
                    width: 400
                    height: 400
                    x: 200
                    y:40
                    z:1
                    onPaint: {
                        var ctx = getContext("2d");
                        ctx.beginPath();
                        var gradient=ctx.createLinearGradient(0,50,170,50);
                        gradient.addColorStop("1.0","white");
                        ctx.beginPath();
                        ctx.strokeStyle=gradient;
                        ctx.lineWidth=1;
                        var centerX = width / 2;
                        var centerY = height / 2;
                        var radius = 121;
                        context.arc(centerX, centerY, radius, 0, 2 * Math.PI, false);
                        ctx.stroke();
                    }
                }

                Canvas {
                    id: dotIndicator
                    width: 455
                    height: 455
       //             x:xValue
       //             y:yValue
                    transform: Rotation { origin.x: 400; origin.y: 240; angle: xValue}
                    z:2
                    onPaint: {
                        var ctx = getContext("2d");
                        ctx.beginPath();
                        var centerX = 350;
                        var centerY = 350;
                        var radius = 7;
                        context.arc(centerX, centerY, radius, 0, 2 * Math.PI, false);
                        ctx.fillStyle = "#fff";
                        ctx.fill();

                    }
                }

       /////////////////////////////////////////////////////////////////////////////////////
       //Text

                Text {
                   id: logo
                   x: 350
                   y: 270
                   width: 100
                   height: 50
                   color: "white"
                   text: xValue === 210 ? qsTr("Artist") : qsTr("")
                   font.family: "Helvetica"
                   font.italic: false
                   renderType: Text.QtRendering
                   horizontalAlignment: Text.AlignHCenter
                   font.pixelSize: 12
               }

                Text {
                   id: driverName
                   x: 350
                   y: 270
                   width: 100
                   height: 50
                   color: "white"
                   text: xValue === 240 ? qsTr("Driver Name") : qsTr("")
                   font.family: "Helvetica"
                   font.italic: false
                   renderType: Text.QtRendering
                   horizontalAlignment: Text.AlignHCenter
                   font.pixelSize: 12
               }
                Text {
                    id: textInput
                    x: 350
                    y: 200
                    width: 100
                    height: 50
                    color: "#35B59E"
                    text: xValue === 210 ? qsTr("Music") : qsTr("Driver Name") && xValue === 240 ? qsTr("Driver Name") : qsTr("Temp")
                    font.family: "Helvetica"
                    font.italic: false
                    renderType: Text.QtRendering
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: fontSizeOptions
                }
                Text {
                    id: variableOption
                    x: 395
                    y: 230
                    color:  "#fff"
                    text: qsTr("0")
                    font.pixelSize:fontSizeOptions + 5

                }


                Text {
                    id: text1
                    x: 550
                    y: 160
                    color:  xValue === 210 ? "#35B59E" : "White"
                    text: qsTr("Music")
                    font.pixelSize:fontSizeOptions
                }

                Text {
                    id: text2
                    x: 600
                    y: 240
                    color: xValue === 240 ? "#35B59E" : "White"

                    text: qsTr("Driver Name")
                    font.pixelSize: fontSizeOptions
                }

                Text {
                    id: text3
                    x: 550
                    y: 320
                    color: xValue === 270 ? "#35B59E" : "White"
                    text: qsTr("Temp")
                    font.pixelSize: fontSizeOptions
                }

                Text {
                    id: text4
                    x: 200
                    y: 320
                    color: xValue === 30 ? "#35B59E" : "White"
                    text: qsTr("Option1")
                    font.pixelSize: fontSizeOptions
                }

                Text {
                    id: text5
                    x: 150
                    y: 240
                    color: xValue === 60 ? "#35B59E" : "White"
                    text: qsTr("Option1")
                    font.pixelSize: fontSizeOptions
                }

                Text {
                    id: text6
                    x: 200
                    y: 160
                    color: xValue === 90 ? "#35B59E" : "White"
                    text: qsTr("Option1")
                    font.pixelSize:fontSizeOptions
                }
            }
/////////////////////////////////////////////////////////////////////////////////////
    Item{
                id: fourthPage

                Canvas {
                    id: mycanvas4
                    width: 200
                    height: 200
                    x: 300
                    y: 140
                    z: 1
                    onPaint: {
                        var ctx = getContext("2d");
                        ctx.beginPath();
                        var gradient=ctx.createLinearGradient(0,50,170,50);
                        gradient.addColorStop("0.5","#77C0E8");
                        gradient.addColorStop("0.5","#77C0E8");
                        gradient.addColorStop("1.0","#35B59E");
                        ctx.strokeStyle=gradient;
                        ctx.lineWidth=7;
                        var centerX = width / 2;
                        var centerY = height / 2;
                        var radius = 90;
                        context.arc(centerX, centerY, radius, 0, 2 * Math.PI, false);
                        ctx.stroke();
                    }
                }
            }

    Item{
                id: fifthPage
            }
    }
/////////////////////////////////////////////////////////////////////////////////////
    PageIndicator {
        id: indicator
        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }


}
