//
//  Participant.swift
//  JankJack
//
//  Created by Joshua Tate on 11/1/23.
//

import Foundation

public class Participant {
    
    internal var score: Int;
    
    public init() {
        self.score = 0;
    }
    
    func hit(deck: VegasDeck) -> Void {
        
        self.score = handleAce(hitValue: deck.drawCard());
    }
    
    internal func handleAce(hitValue: Int) -> Int {
        
        var retVal: Int = self.score + hitValue;
        
        if hitValue == 1 && retVal + 10 <= 21 {
            retVal += 10
        }
        
        return retVal;
    }
}
