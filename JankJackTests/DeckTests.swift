//
//  DeckTests.swift
//  JankJackTests
//
//  Created by Joshua Tate on 11/1/23.
//

import XCTest
@testable import JankJack

class DeckTests: XCTestCase {
    
    var deck: DeckOfCards!;
    
    override func setUp() {
        super.setUp();
        deck = DeckOfCards();
    }
    
    func testGameInitsFiftyTwoCardDeck() throws {
        XCTAssertEqual(self.deck.getDeck().count, 52);
    }
    
    func testGameDrawsCardsAsExpected() throws {
        
        for _ in 0..<52 {
            let deckCountBeforeDraw: Int = deck.getDeck().count;
            let cardValue: Int = deck.drawCard();
            XCTAssertNotEqual(cardValue, -1);
            XCTAssertEqual(deck.getDeck().count, deckCountBeforeDraw - 1);
        }
        
        XCTAssertEqual(deck.drawCard(), -1);
    }
}
