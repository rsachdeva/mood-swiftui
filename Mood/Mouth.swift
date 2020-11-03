//
//  Mouth.swift
//  Mood
//
//  Created by Rohit Sachdeva on 11/3/20.
//

//“struct Mouth {
//  let size: CGFloat
//  let value: Double
//}”
//
//Excerpt From: Daniel H Steinberg. “A SwiftUI Kickstart.” Apple Books.
//“extension Mouth {
//  var width: CGFloat {
//    size * 3 / 4
//  }
//
//  var height: CGFloat {
//    size / 4
//  }
//
//  var lineWidth: CGFloat {
//    size / 40
//  }
//
//  var startingPoint: CGPoint {
//    CGPoint(x: 0,
//            y: height / 2)
//  }
//
//  var endingPoint: CGPoint {
//    CGPoint(x: width,
//            y: height / 2)
//  }
//
//  var centerPoint: CGPoint {
//    CGPoint(x: width / 2,
//            y: CGFloat(value) * height / 100)
//  }
//}”
//
//Excerpt From: Daniel H Steinberg. “A SwiftUI Kickstart.” Apple Books.
//“extension Mouth {
//  var path: Path {
//    var path = Path()
//    path.move(to: startingPoint)
//    path.addLine(to: centerPoint)
//    path.addLine(to: endingPoint)
//    return path
//  }
//}”
//
//Excerpt From: Daniel H Steinberg. “A SwiftUI Kickstart.” Apple Books.


import SwiftUI

struct Mouth {
    let size: CGFloat
    let value: Double
}


extension Mouth {
    var width: CGFloat {
        // width of mouth is 3/4 the size of diameter of the circle
        size * 3 / 4
    }
    
    var height: CGFloat {
        // height of mouth is 1/4 the size of diameter of the circle
        size / 4
    }
    
    var lineWidth: CGFloat {
        size / 40
    }
    
    var startingPoint: CGPoint {
        // using height compouted property
        // starts at 0, height/2 which is itself size / 4
        CGPoint(x: 0,
                y: height / 2)
    }
    
    var endingPoint: CGPoint {
        // at same height as startingPoint but ending at the width which is size * 3 / 4
        print("height is \(height)")
        print("height/2 is \(height / 2)")
        return CGPoint(x: width,
                       y: height / 2)
    }
    
    var centerPoint: CGPoint {
        // changing y with value and height
        // x is width/2 as it is not a curve we only move for now the center point
        print("width / 2 is \(width / 2)")
        print("value is \(value)")
        print("height is \(height)")
        print("CGFloat(value) * height / 100 is \(CGFloat(value) * height / 100)")
        return CGPoint(x: width / 2,
                       // Here y is being used as a percentage of value; the full value being 100 and mid being 50
                       y: CGFloat(value) * (height / 100))
    }
    
}


extension Mouth {
    var path: Path {
        var path = Path()
        path.move(to: startingPoint)
        path.addLine(to: centerPoint)
        path.addLine(to: endingPoint)
        return path
    }
}

//“path
//      .stroke(lineWidth: lineWidth)
//      .frame(width: width,
//             height: height,
//             alignment: .center)
//      .offset(x: 0,
//              y: height/2)
//      .foregroundColor(.black)”
//
//Excerpt From: Daniel H Steinberg. “A SwiftUI Kickstart.” Apple Books.
extension Mouth: View {
    var body: some View {
//        Text("jmd")
//            .position(x: 0, y: 0)
        path
            .stroke(lineWidth: lineWidth)
            .frame(width: width,
                   height: height,
                   alignment: .center)
            .offset(x: 0,
                    y: height / 2)
            .foregroundColor(.black)
            
    }
}


struct Mouth_Previews: PreviewProvider {
    static var previews: some View {
        Mouth(size: 20, value: 30.0)
    }
}

