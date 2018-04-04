//
//  ViewController.swift
//  Test Dino
//
//  Created by Donald Belliveau on 2018-04-03.
//  Copyright © 2018 Donald Belliveau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    let allQuestions = BankOfQuestions()
    let numberOfQuestions = 39 // 40 Questions in Array
    var questionNumber = 0
    var pickedAnswer = false
    var score = 0
    var finalScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func answerButtonWasPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber += 1
    }
    
    func nextQuestion() {
        if questionNumber <= numberOfQuestions {
            questionLabel.text = allQuestions.list[questionNumber].questionText
        } else {
            // Game Over
            questionLabel.text = NSLocalizedString("gameOver", comment: "game over string") + "\(finalScore) / \(numberOfQuestions + 1)"
            questionNumber = 0
            score = 0
            
           
            button1.isHidden = true
            button2.isHidden = true
            
        }
    }
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            score += 1
            finalScore += 1
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "answerVC") as! AnswerViewController
            vc.answerText = NSLocalizedString("correct", comment: "right") + "\n\(allQuestions.list[questionNumber].comment)"
            present(vc, animated: true, completion: {
                self.nextQuestion()
            })
        } else {
            score += 1
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "answerVC") as! AnswerViewController
            vc.answerText = NSLocalizedString("wrong", comment: "right") + "\n\(allQuestions.list[questionNumber].comment)"
            present(vc, animated: true, completion: {
                self.nextQuestion()
            })
        }
    }
    
    
    
    
}

