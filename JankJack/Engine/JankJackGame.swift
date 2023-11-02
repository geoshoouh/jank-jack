//
//  GameEngine.swift
//  Jank Jack
//
//  Created by Joshua Tate on 10/31/23.
//

import Foundation

public class JankJackGame {
    
    private var deck: [Int];
    private var playerScore: Int;
    private var dealerScore: Int;
    
    init() {
        self.deck = [Int]();
        
        playerScore = 0;
        dealerScore = 0;
        
        self.makeDeck();
    }
    
    public func getTopCard() -> Int {
        
        let cardIndex = Int.random(in: 0..<max(self.deck.count, 1));
        
        return drawCard(cardIndex: cardIndex);
    }
    
    public func getDeck() -> [Int] {
        
        let retVal: [Int] = self.deck;
        return retVal;
    }
    
    private func makeDeck() -> Void {
        
        for i in 0..<9 {
            for _ in 1..<5 {
                self.deck.append(i);
            }
        }
        
        for _ in 0..<16 {
            self.deck.append(16);
        }
    }
    
    private func drawCard(cardIndex: Int) -> Int {
        
        var retVal = -1;
        
        if cardIndex >= 0 && cardIndex < self.deck.count {
            retVal = self.deck[cardIndex];
            self.deck.remove(at: cardIndex);
        }
        
        return retVal;
    }
}
