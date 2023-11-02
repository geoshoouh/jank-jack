//
//  GameEngine.swift
//  Jank Jack
//
//  Created by Joshua Tate on 10/31/23.
//

import Foundation

public class JankJackGame {
    
    private var deck: DeckOfCards;
    private var playerScore: Int;
    private var dealerScore: Int;
    
    init() {
        
        self.deck = DeckOfCards();
        
        playerScore = 0;
        dealerScore = 0;
    }
}
