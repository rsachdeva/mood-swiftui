//
//  Eyes.swift
//  Mood
//
//  Created by Rohit Sachdeva on 11/2/20.
//

//“struct Eyes {
//}
//
//extension Eyes: View {
//  var body: some View {
//    HStack {
//      Circle()
//      Spacer()
//      Circle()
//    }
//    .foregroundColor(.black)
//  }
//}”
//
//Excerpt From: Daniel H Steinberg. “A SwiftUI Kickstart.” Apple Books.

//“  .scaleEffect(x: 0.5,
//                 y: 0.5,
//                 anchor: .leading)”
//
//Excerpt From: Daniel H Steinberg. “A SwiftUI Kickstart.” Apple Books.


//“.frame(width: 300,
//           height: 20,
//           alignment: .center)”
//
//Excerpt From: Daniel H Steinberg. “A SwiftUI Kickstart.” Apple Books.

//“.frame(width: size * 3 / 4,
//           height: size / 12,
//           alignment: .center)
//    .offset(x: 0,
//            y: -size / 8)”
//
//Excerpt From: Daniel H Steinberg. “A SwiftUI Kickstart.” Apple Books.

import SwiftUI

struct Eyes {
    let size: CGFloat
}

extension Eyes: View {
    var body: some View {
        HStack {
            Circle()
            Spacer()
            Circle()
        }
        .foregroundColor(.black)
        //        .background(Color.red.opacity(0.3))
        .frame(width: size * 3 / 4,
               height: size / 12,
               alignment: .center)
        .background(Color.red.opacity(0.3))
        .offset(x: 0,
                y: -size / 8)
        .background(Color.green.opacity(0.3))
    }
}

struct Eyes_Previews: PreviewProvider {
    static var previews: some View {
        Eyes(size: CGFloat(100))
    }
}
