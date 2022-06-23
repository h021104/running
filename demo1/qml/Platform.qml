import QtQuick 2.2
import Felgo 3.0

 EntityBase {
   id: platform

   entityType: "Platform"

   width: 64
   height: 32

   Image {
     id: platformImg
     source: "../assets/leaf.png"
     anchors.fill: platform
   }

   BoxCollider {
     id: platformCollider
     width: parent.width
     height: parent.height - 20
     bodyType: Body.Dynamic
     collisionTestingOnlyMode: true
   }
 }
