import QtQuick 2.0
import Felgo 3.0
import QtSensors 5.5
import "../"

 Scene {
   id: gameScene

   // actual scene size
   width: 320
   height: 480
   Image {
      anchors.fill: parent.gameWindowAnchorItem
      source: "../assets/background/start/1.png"
    }
   Fire {
     id: fire
     x: gameScene.width / 2 // place the frog in the horizontal center
     y: 220
   }
   Platform {
      id: platform
      x: gameScene.width / 2
      y: 300
    }

 }
