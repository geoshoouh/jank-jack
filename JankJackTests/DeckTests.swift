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
    
    private func makeDeckMap() -> [Int: Int] {
        
        var retVal: [Int: Int] = [Int: Int]();
        
        for i in 1..<10 {
            retVal[i] = 4;
        }
        
        retVal[10] = 16;

        return retVal;
    }
    
    func testDeckInitsFiftyTwoCardDeck() throws {
        
        XCTAssertEqual(self.deck.getDeck().count, 52);
    }
    
    func testDeckDrawsCardsAsExpected() throws {
        
        var expectedDeck: [Int: Int] = makeDeckMap();
        
        var allValuesDrawnCount: Int = 0;
        
        for _ in 0..<52 {
            let deckCountBeforeDraw: Int = deck.getDeck().count;
            let cardValue: Int = deck.drawCard();
            
            expectedDeck[cardValue]? -= 1;
            if expectedDeck[cardValue] == 0 {
                allValuesDrawnCount += 1;
            }
            
            XCTAssertNotEqual(cardValue, -1);
            XCTAssertEqual(deck.getDeck().count, deckCountBeforeDraw - 1);
        }
        
        XCTAssertEqual(allValuesDrawnCount, 10);
        XCTAssertNotEqual(deck.drawCard(), -1);
    }
}
