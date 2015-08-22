//
//  Lexicon.swift
//  Adventure Engine
//
//  Created by Mama Luigi on 8/3/15.
//  Copyright © 2015 Igneus. All rights reserved.
//

import Foundation

class Lexicon {
    var nouns: [String:Noun]
    var verbs: [String:Verb]
    
    init() {
        self.nouns = [:]
        self.verbs = [:]
    }
    
    convenience init(withNouns nouns: [Noun], andVerbs verbs: [Verb]) {
        self.init()
        self.addAll(nouns)
        self.addAll(verbs)
    }
    
    func addAll(nouns: [Noun]) {
        
    }
    
    func addAll(verbs: [Verb]) {
        for verb in verbs {
            if let existing = self.verbs[verb.name] {
                
            } else {
                self.verbs[verb.name] = verb
            }
        }
    }
}