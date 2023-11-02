//
//  PlayerTests.swift
//  JankJackTests
//
//  Created by Joshua Tate on 11/1/23.
//

import Foundation

import XCTest
@testable import JankJack

class PlayerTests: XCTestCase {
    
    private var player: Player!;
    
    override func setUp() {
        
        super.setUp();
        self.player = Player();
    }
    
    func testPlayerReceivesMoney() throws {
        
        let amount: Int = 17;
        
        self.player.giveMoney(amount: amount);
        
        XCTAssertEqual(self.player.money, amount);
    }
    
    func testPlayerWagersMoney() throws {
        
        let playerStartingMoney: Int = 20;
        let wagerAmount: Int = 17;
        
        self.player.giveMoney(amount: playerStartingMoney);
        
        let amountWagered: Int = self.player.makeWager(amount: wagerAmount);
        
        XCTAssertEqual(amountWagered, wagerAmount);
        XCTAssertEqual(self.player.money, 3);
    }
}
