//
//  Question.swift
//  Quiz-iOS13
//
//  Created by Marouf, Zakaria on 26/04/2020.
//  Copyright © 2020 Marouf, Zakaria. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
