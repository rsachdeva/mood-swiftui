//
//  SwiftyMoji.swift
//  Mood
//
//  Created by Rohit Sachdeva on 11/1/20.
//

//Rectangle()
//            .foregroundColor(.purple)

//“extension SwiftyMoji {
//  var color: Color {
//    Color(red: (100 - value)/50,
//          green: value/50,
//          blue: 0)
//  }
//}
//”
//
//Excerpt From: Daniel H Steinberg. “A SwiftUI Kickstart.” Apple Books.

//“GeometryReader {proxy in
//      ZStack {
//        Circle()
//          .foregroundColor(color)
//        Eyes()
//      }
//    }”
//
//Excerpt From: Daniel H Steinberg. “A SwiftUI Kickstart.” Apple Books.

//“extension SwiftyMoji {
//  private func minDimension(for proxy: GeometryProxy) -> CGFloat {
//    let size = proxy.frame(in: .local).size
//    return min(size.width, size.height)
//  }
//}”
//
//Excerpt From: Daniel H Steinberg. “A SwiftUI Kickstart.” Apple Books.

import SwiftUI

struct SwiftyMoji {
    let value: Double
}

extension SwiftyMoji {
    var color: Color {
        Color(red: (100 - value)/50,
              green: value/50,
              blue: 0)
    }
}

extension SwiftyMoji {
    private func minDimension(for proxy: GeometryProxy) -> CGFloat {
//        proxy.size
        let size = proxy.frame(in: .local).size
        return min(size.width, size.height)
    }
}


extension SwiftyMoji: View {
    var body: some View {
        GeometryReader { proxy in
            let diameter = minDimension(for: proxy)
            ZStack {
                Circle()
                    .foregroundColor(color)
                Eyes(size: diameter)
                Mouth(size: diameter,
                      value: value)
            }
        }
    }
}

struct SwiftyMoji_Previews: PreviewProvider {
    static var previews: some View {
        SwiftyMoji(value: 50)
    }
}
