//
//  BankOfQuestions.swift
//  Test Dino
//
//  Created by Donald Belliveau on 2018-04-03.
//  Copyright © 2018 Donald Belliveau. All rights reserved.
//

import UIKit

class BankOfQuestions {
    
    //MARK: - Properties
    
    var list = [Question]()
    
    //MARK: - Init/Data
    
    init() {
        list.append(Question(text: NSLocalizedString("question11", comment: "Q11"), correctAnser: false, commentText: NSLocalizedString("comment11", comment: "C11")))
        list.append(Question(text: NSLocalizedString("question12", comment: "Q12"), correctAnser: true, commentText: NSLocalizedString("comment12", comment: "C12")))
        list.append(Question(text: NSLocalizedString("question13", comment: "Q13"), correctAnser: true, commentText: NSLocalizedString("comment13", comment: "C13")))
    }
}
