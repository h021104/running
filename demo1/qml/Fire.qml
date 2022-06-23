import QtQuick 2.0
import Felgo 3.0

 EntityBase {
   id:frogEntity

   entityType: "Fire"

   SpriteSequence {
     id: frogAnimation

     defaultSource: "../assets/background/start/1.png"
     scale: 0.35

     Sprite {
       name: "sitting"
       frameWidth: 128
       frameHeight: 128
       startFrameColumn: 2
     }

     Sprite {
       name: "jumping"
       frameCount: 4
       frameRate: 8

       frameWidth: 128
       frameHeight: 256
       frameX: 0
       frameY: 128
     }
   }

   onStateChanged: {
     if(frogEntity.state == "jumping") {
       frogAnimation.jumpTo("jumping")
     }
     if(frogEntity.state == "falling") {
       frogAnimation.jumpTo("sitting")
     }
   }
 }
