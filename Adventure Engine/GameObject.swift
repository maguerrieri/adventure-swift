//
//  GameObject.swift
//  Adventure Engine
//
//  Created by Mama Luigi on 7/22/15.
//  Copyright © 2015 Igneus. All rights reserved.
//

import Foundation

class GameObject {
    var detailedDescription: String
    var description: String
    var visible: Bool
    
    var names: [String] = []
    
    var nouns: [Noun] {
        get {
            var nouns: [Noun] = []
            for name in names {
                nouns.append(Noun(name: name, ref: self))
            }
            return nouns
        }
    }
    var verbs: [Verb] = []
    
    init(names: [String], description: String, detailedDescription detDesc: String, visible: Bool) {
        
    }
    
    func perform(action: Verb, performedBy: Player) -> String {
        return ""
    }
    
    func moveTo(destination: Room) {
        
    }
}