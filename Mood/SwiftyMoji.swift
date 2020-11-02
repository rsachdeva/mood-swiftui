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

extension SwiftyMoji: View {
    var body: some View {
        Circle().foregroundColor(color)
    }
}

struct SwiftyMoji_Previews: PreviewProvider {
    static var previews: some View {
        SwiftyMoji(value: 20.6)
    }
}
