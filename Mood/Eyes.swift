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

import SwiftUI

struct Eyes: View {
    var body: some View {
        HStack {
            Circle()
            Spacer()
            Circle()
        }
        .foregroundColor(.black)
        .background(Color.red.opacity(0.3))
    }
}

struct Eyes_Previews: PreviewProvider {
    static var previews: some View {
        Eyes()
    }
}
