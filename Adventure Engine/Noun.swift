//
//  Noun.swift
//  Adventure Engine
//
//  Created by Mama Luigi on 7/25/15.
//  Copyright © 2015 Igneus. All rights reserved.
//

import Foundation

class Noun: Equatable {
    var name: String
    var ref: GameObject
    
    init(name: String, ref: GameObject) {
        self.name = name
        self.ref = ref
        
    }
}

func ==(lhs: Noun, rhs: Noun) -> Bool {
    return lhs.ref === rhs.ref
}