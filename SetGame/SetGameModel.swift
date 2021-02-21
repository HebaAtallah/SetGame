//
//  SetGameModel.swift
//  SetGame
//
//  Created by Heba on 14/02/2021.
//

import Foundation

enum Shape: CaseIterable {
    case circle
    case triangle
    case square
}

enum Filling: CaseIterable {
    case open
    case solid
    case striped
}

enum CardColor: CaseIterable {
    case red
    case green
    case blue
}

enum Count: CaseIterable {
    case one
    case two
    case three
}

struct Card: Identifiable {
    var id = UUID()
    var shape: Shape
    var filling: Filling
    var color: CardColor
    var count: Count
}

class SetModel {
    let cards: [Card]
    
    init() {
        self.cards = SetModel.createAllCards()
        print("All Cards: \(cards) .... the count \(cards.count)")
    }
    
    private static func createAllCards() -> [Card] {
        var cards = [Card]()
        for s in Shape.allCases {
            for f in Filling.allCases {
                for color in CardColor.allCases {
                    for count in Count.allCases {
                        cards.append(Card(shape: s, filling: f, color: color, count: count))
                    }
                }
            }
        }
        return cards
    }
}
