//
//  Player.swift
//  JankJack
//
//  Created by Joshua Tate on 11/1/23.
//

import Foundation

public class Player: Participant {
    
    var money: Int;
    
    override init() {
        
        self.money = 0;
        super.init();
    }
    
    public func giveMoney(amount: Int) -> Void {
        
        self.money =  max(amount, 0);
    }
    
    public func makeWager(amount: Int) -> Int {
        
        let subtractAmount = amount <= self.money ? amount : 0;
        self.money -= subtractAmount;
        return subtractAmount;
    }
}
