//
//  DeckOfCards.swift
//  JankJack
//
//  Created by Joshua Tate on 11/1/23.
//

import Foundation


public class DeckOfCards {
    
    private var cards: [Int];
    
    init() {
        
        self.cards = [Int]();
        self.makeDeck();
    }
    
    public func getDeck() -> [Int] {
        
        let retVal: [Int] = self.cards;
        return retVal;
    }
    
    public func drawCard() -> Int {
        
        var retVal: Int = -1;
        
        if self.cards.count > 0 {
            let randomIndex: Int = Int.random(in: 0..<self.cards.count);
            retVal = removeAndReturnRandomCard(cardIndex: randomIndex);
        }

        return retVal;
    }
    
    private func removeAndReturnRandomCard(cardIndex: Int) -> Int {
        
        var retVal: Int = -1;
        
        if cardIndex >= 0 && cardIndex < self.cards.count {
            retVal = self.cards[cardIndex];
            self.cards.remove(at: cardIndex);
        }
        
        return retVal;
    }
    
    private func makeDeck() -> Void {
        
        for i in 0..<9 {
            for _ in 1..<5 {
                self.cards.append(i);
            }
        }
        
        for _ in 0..<16 {
            self.cards.append(16);
        }
    }
}