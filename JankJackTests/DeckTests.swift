//
//  DeckTests.swift
//  JankJackTests
//
//  Created by Joshua Tate on 11/1/23.
//

import XCTest
@testable import JankJack

class DeckTests: XCTestCase {
    
    private var deck: VegasDeck!;
    
    override func setUp() {
        
        super.setUp();
        deck = VegasDeck();
    }
    
    func testDeckInitsFiftyTwoCardDeck() throws {
        
        XCTAssertEqual(self.deck.getDeck().count, 52);
    }
    
    func testDeckDrawsCardsAsExpected() throws {
        
        for _ in 0..<52 {
            let deckCountBeforeDraw: Int = deck.getDeck().count;
            let cardValue: Int = deck.drawCard();
            XCTAssertNotEqual(cardValue, -1);
            XCTAssertEqual(deck.getDeck().count, deckCountBeforeDraw - 1);
        }
        
        XCTAssertNotEqual(deck.drawCard(), -1);
    }
}
