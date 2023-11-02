//
//  Jank_JackTests.swift
//  Jank JackTests
//
//  Created by Joshua Tate on 10/31/23.
//

import XCTest
@testable import JankJack

class GameTests: XCTestCase {
    
    var game: JankJackGame!
    
    override func setUp() {
        super.setUp()
        game = JankJackGame();
    }
    
    func testGameStartedProperly() throws {
        
        self.game.beginGame();
        XCTAssertTrue(self.game.getDealerScore() > 0);
        XCTAssertTrue(self.game.getPlayerScore() > 0);
    }
}
