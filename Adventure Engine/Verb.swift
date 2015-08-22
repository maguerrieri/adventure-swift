//
//  Verb.swift
//  Adventure Engine
//
//  Created by Mama Luigi on 7/25/15.
//  Copyright © 2015 Igneus. All rights reserved.
//

import Foundation

var _verbs: [String:Verb] = [:]
func getVerb(withName name: String, withInterrogative inter: String) -> Verb {
    if let verb = _verbs[name] {
        return verb
    } else {
        let verb = Verb(name: name, interrogative: inter)
        _verbs[name] = verb
        return verb
    }
}

class Verb: Equatable, CustomStringConvertible {
    let name: String
    let interrogative: String
    let synonym: Verb?
    
    var description: String {
        return self.name
    }
    
    convenience init(name: String, interrogative: String) {
        self.init(name: name, interrogative: interrogative, synonym: nil)
    }
    
    init(name: String, interrogative inter: String, synonym: Verb?) {
        self.name = name
        self.interrogative = inter
        self.synonym = synonym
    }
}

func ==(lhs: Verb, rhs: Verb) -> Bool {
    return lhs === rhs || lhs.synonym == rhs.synonym
}