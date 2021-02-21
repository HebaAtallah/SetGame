//
//  ContentView.swift
//  SetGame
//
//  Created by Heba on 14/02/2021.
//

import SwiftUI

struct ContentView: View {
    var setModel: SetModel
    
    var body: some View {
        ForEach(setModel.cards[50...60]) { card in
            CardView(card: card)
        }
    }
}

struct CardView: View {
    var card: Card
    
    var color: Color {
        switch card.color {
        case .red:
            return .red
        case .green:
            return .green
        case .blue:
            return .blue
        }
    }
        
    var body: some View {
        
        switch card.shape {
        case .circle:
            Circle()
                .foregroundColor(color)
                .padding()
        case .triangle:
            Rectangle()
                .foregroundColor(color)
                .padding()
        case .square:
            Rectangle()
                .aspectRatio(1, contentMode: .fill)
                .foregroundColor(color)
                .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(setModel: SetModel())
    }
}
