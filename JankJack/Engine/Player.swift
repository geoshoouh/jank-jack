//
//  Player.swift
//  JankJack
//
//  Created by Joshua Tate on 11/1/23.
//

import Foundation

public class Player: Participant {
    
    var money: Int;
    var wager: Int;
    
    override init() {
        
        self.money = 0;
        self.wager = 0;
        super.init();
    }
    
    public func giveMoney(amount: Int) -> Void {
        
        self.money =  max(amount, 0);
    }
    
    
}
