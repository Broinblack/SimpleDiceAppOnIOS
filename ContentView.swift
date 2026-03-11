//
//  ContentView.swift
//  DiceView
//
//  Created by Dmitriy on 03.03.2026.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfTips: Int = 1
    
    var body: some View {
        VStack{
            Image(systemName: "die.face.\(numberOfTips)")
                .resizable()
                .frame(width: 200, height: 200)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.white)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.myBackgroundBlue)
        .foregroundStyle(Color.white)
        .onTapGesture {
            numberOfTips = Int.random(in: 1...6)
        }
    }
}

#Preview {
    ContentView()
}
