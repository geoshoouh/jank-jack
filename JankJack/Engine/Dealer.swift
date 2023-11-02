//
//  Dealer.swift
//  JankJack
//
//  Created by Joshua Tate on 11/1/23.
//

import Foundation

public class Dealer: ParticipantInterface {
    
    public var score: Int;
    
    public init() {
        self.score = 0;
    }
    
    public func hit(deck: VegasDeck) -> Void {
        
        score += deck.drawCard();
    }
}
