//
//  ViewController.swift
//  05_QuizApp
//
//  Created by Jair Benítez on 18/12/18.
//  Copyright © 2018 Jair Benítez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet weak var labelQuestionNumber: UILabel!
    @IBOutlet weak var labelScore: UILabel!
    @IBOutlet weak var progressBar: UIView!
    
    var currentScore = 0
    var currentQuestionId = 0
    var correctQuestionsAnswer = 0
    
    let factory = QuestionFactory()
    var currentQuestion : Question!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.factory.questionsBank.questions.shuffle()
        askNextQuestion()
        
    }

    
    func startGame() {
        currentScore = 0
        currentQuestionId = 0
        correctQuestionsAnswer = 0
    }
    
    func askNextQuestion() {
        if let newQuestion = factory.getQuestionAt(index: currentQuestionId) {
            self.currentQuestion = newQuestion
            labelQuestion.text = self.currentQuestion.question
            self.currentQuestionId += 1
        } else {
            gameOver()
        }
    }
    
    func gameOver() {
        
        let alert = UIAlertController(title: "Terminado", message: "has acertado \( correctQuestionsAnswer )", preferredStyle: UIAlertController.Style.alert )
        let okAction = UIAlertAction(title: "Empezar de nuevo", style: .default) { (_) in
            self.startGame()
        }
        
        alert.addAction( okAction )
        present( alert, animated: true, completion: nil )
    }
    
    
    @IBAction func buttonPress(_ sender: UIButton) {
        
        var isCorrect : Bool
        var title = "Has fallado"
        if sender.tag == 1 {
            isCorrect = ( self.currentQuestion.answare == true )
        }else{
            isCorrect = ( self.currentQuestion.answare == false )
        }
        
        if isCorrect {
            title = "Respuesta correcta"
            self.correctQuestionsAnswer += 1
        }
        
        let alert = UIAlertController(title: title, message: "explicación pendiente", preferredStyle: UIAlertController.Style.alert )
        let okAction = UIAlertAction(title: "OK", style: .default) { (_) in
            self.askNextQuestion()
        }
        
        alert.addAction( okAction )
        present( alert, animated: true, completion: nil )
    }
    
    
    // Cambia estilo de la barra de estado por código
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        
        return UIStatusBarStyle.lightContent
        
    }
    
    

}

