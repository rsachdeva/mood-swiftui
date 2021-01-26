//
//  ContentView.swift
//  Mood
//
//  Created by Rohit Sachdeva on 11/1/20.
//


import SwiftUI

struct ContentView {
    @State private var rating = 50.0
    @AppStorage("moodRating") private var moodRating = 50.0
    @Environment(\.scenePhase) private var scenePhase
}


extension ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Rating: \(Int(rating))")
            SwiftyMoji(value: rating)
            Slider(value: $rating,
                   in: 0...100)
        }.onAppear {
            // evrytime when we start app from xcode we get this
            print("onAppear moodRating is \(moodRating)")
            rating = moodRating
        }.onChange(of: scenePhase) { [scenePhase] phase in
            // only when we put the app in backgropund or close in background we get these message
            print("old scenePhase value is \(scenePhase)")
            print("new phase value is \(phase)")
            if phase == .background {
                moodRating = rating
            }
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
