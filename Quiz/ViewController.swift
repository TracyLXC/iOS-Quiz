//
//  ViewController.swift
//  Quiz
//
//  Created by 刘小翠 on 2021/3/6.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = ["From what is cognac made?",
                              "What is 7+7?",
                               "What is the captical of China?"]
    let answers: [String] = ["Grapes", "14", "Beijing"]
    var currentQuestionIndex = 0

    @IBAction func showNextQuestion(sender:AnyObject){
        currentQuestionIndex+=1;
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0;
        }
        let question = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(sender:AnyObject){
        let answer = questions[currentQuestionIndex]
        answerLabel.text = answer
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text =  questions[currentQuestionIndex ]
    }
    
}

