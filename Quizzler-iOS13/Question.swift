//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Ádám Marton on 23.02.2025.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
