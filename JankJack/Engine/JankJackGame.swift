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
}
