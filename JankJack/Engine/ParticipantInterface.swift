//
//  Participant.swift
//  JankJack
//
//  Created by Joshua Tate on 11/1/23.
//

import Foundation

public protocol ParticipantInterface {
    
    var score: Int {get set};
    
    func hit(deck: VegasDeck) -> Void;
}
