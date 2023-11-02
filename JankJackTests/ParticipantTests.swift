//
//  ParticipantTests.swift
//  JankJackTests
//
//  Created by Joshua Tate on 11/1/23.
//

import Foundation

import XCTest
@testable import JankJack

class ParticipantTests: XCTestCase {
    
    private var participant: Participant!;
    private var deck: VegasDeck!;
    
    override func setUp() {
        
        super.setUp();
        self.participant = Participant();
        self.deck = VegasDeck();
    }
    
    func testHitWorksInAccordanceWithBlackJack() throws {
        
        
    }
    
}
