//
//  Question.swift
//  Test Dino
//
//  Created by Donald Belliveau on 2018-04-03.
//  Copyright © 2018 Donald Belliveau. All rights reserved.
//

import UIKit

class Question {
    
    //MARK: - Properties
    
    let questionText: String
    let answer: Bool
    let comment: String
    
    //MARK: - Init
    
    init(text: String, correctAnser: Bool, commentText: String) {
        questionText = text
        answer = correctAnser
        comment = commentText
    }
}
