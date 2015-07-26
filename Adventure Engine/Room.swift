//
//  Room.swift
//  Adventure Engine
//
//  Created by Mama Luigi on 7/24/15.
//  Copyright © 2015 Igneus. All rights reserved.
//

import Foundation

var idCount = 0

class Room: GameObject {
    let objects: [String:GameObject] = [:]
    let id: Int
    
    init(names: [String], description: String, detailedDescription detDesc: String, visible: Bool) {
        self.id = idCount
        super.init(names: names, description: description, detailedDescription: detDesc, visible: visible)
        idCount += 1
    }
    
    func perform(action: Verb, performedBy: Player) -> String {
        return ""
    }
    
    func moveTo(destination: Room) {
        
    }
}