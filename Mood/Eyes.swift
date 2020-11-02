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

import SwiftUI

struct Eyes: View {
    var body: some View {
        HStack {
            Circle()
                .scale(0.33)
            Spacer()
            Circle()
                .scale(0.33)
        }
        .foregroundColor(.black)
//        .background(Color.red.opacity(0.3))
        .scaleEffect(x: 0.5,
                     y: 0.5,
                     anchor: .center)
        .offset(x: -50,
                y: -50)
    }
}

struct Eyes_Previews: PreviewProvider {
    static var previews: some View {
        Eyes()
    }
}
