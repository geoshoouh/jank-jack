//
//  GameEngine.swift
//  Jank Jack
//
//  Created by Joshua Tate on 10/31/23.
//

import Foundation

public class JankJackGame {
    
    private var dealer: Participant;
    private var player: Player;
    private var deck: VegasDeck;
    
    init() {
        
        self.dealer = Participant();
        self.player = Player();
        self.deck = VegasDeck();
    }
    
    public func beginGame() -> Void {
        
        self.player.giveMoney(amount: 100);
        
        deal();
    }
    
    public func getDealerScore() -> Int {
        return self.dealer.score;
    }
    
    public func getPlayerScore() -> Int {
        return self.player.score;
    }
    
    private func deal() -> Void {
        
        for _ in 0..<2 {
            player.hit(deck: self.deck);
            dealer.hit(deck: self.deck);
        }
    }
}
