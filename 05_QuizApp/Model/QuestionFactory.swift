//
//  QuestionFactories.swift
//  05_QuizApp
//
//  Created by Jair Benítez on 18/12/18.
//  Copyright © 2018 Jair Benítez. All rights reserved.
//

import Foundation

class QuestionFactory {
    
    //var questions = [Question]()
    var questionsBank : QuestionsBank!
    
    
    // Inicializador de la clase
    
    init() {

        // PROCESADO MANUAL
        /*
        if let path = Bundle.main.path(forResource: "QuestionsBank", ofType: "plist") {
            if let plist = NSDictionary(contentsOfFile: path) {
                let questionsData = plist["Questions"] as! [AnyObject]
                for question in questionsData {
                    if let text = question["question"], let ans = question["answare"] {
                        questions.append( Question( text: text as! String, correctAnswer: ans as! Bool ) )
                    }
                }
            }
        }*/
        
        // PROCESADO AUTMATICO CON CODABLE
        do{
        
            if let url = Bundle.main.url( forResource: "QuestionsBank", withExtension: "plist" ) {
                
                let data = try  Data( contentsOf: url )
                self.questionsBank = try PropertyListDecoder().decode( QuestionsBank.self, from: data )

            }
            
        }catch{
            print( error )
        }
        
        
    }

    
    // Obtiene una pregunta

    func getQuestionAt(index : Int) -> Question? {
        
        if (index < 0 || index >= self.questionsBank.questions.count ) {
            return nil
        } else {
            return self.questionsBank.questions[index]
        }
        
    }
    
    
    // Selecciona una pregunta al azar
    func getRandomQuiestion() -> Question {
        
        let index = arc4random_uniform(UInt32(self.questionsBank.questions.count))
        
        return getQuestionAt( index: Int(index) )!
        
    }
    
    
}
