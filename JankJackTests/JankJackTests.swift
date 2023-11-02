//
//  Jank_JackTests.swift
//  Jank JackTests
//
//  Created by Joshua Tate on 10/31/23.
//

import XCTest
@testable import JankJack

class Jank_JackTests: XCTestCase {
    
    var game: JankJackGame!
    
    override func setUp() {
        super.setUp()
        game = JankJackGame();
    }
    
    func testGameInitsFiftyTwoCardDeck() throws {
        XCTAssertEqual(self.game.getDeck().count, 52);
    }
    
    func testGameDrawsCardsAsExpected() throws {
        
        for _ in 0..<52 {
            let deckCountBeforeDraw: Int = game.getDeck().count;
            let cardValue: Int = game.getTopCard();
            XCTAssertNotEqual(cardValue, -1);
            XCTAssertEqual(game.getDeck().count, deckCountBeforeDraw - 1);
        }
        
        XCTAssertEqual(game.getTopCard(), -1);
    }
}
