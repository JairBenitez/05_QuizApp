//
//  QuestionFactories.swift
//  05_QuizApp
//
//  Created by Jair Benítez on 18/12/18.
//  Copyright © 2018 Jair Benítez. All rights reserved.
//

import Foundation

class QuestionFactory {
    
    var questions = [Question]()
    
    init() {
        
        questions.append( Question(text: "El vaticano tiene la cantidad suficiente para acanar con la pobreza mundial", correctAnswer: true) )
        questions.append( Question(text: "Los humanos son los unicos que practican sexo por placer", correctAnswer: false) )
        questions.append( Question(text: "La semilla de la manzana contiene sianuro y es tóxica", correctAnswer:  true))
        questions.append( Question(text: "Se puede afeitar el bigote de un gato sin ninún problema", correctAnswer:  false))
        questions.append( Question(text: "Un koala necesita beber agua al menos una vez al dia", correctAnswer:  false))
        questions.append( Question(text: "Edison, el inventor de la bombilla tenia miedo a la oscuridad", correctAnswer:  true))
        questions.append( Question(text: "Los escorpiones son el unico animal que se suicida cunado no pueden escapar de una situación de peligro", correctAnswer:  true))
        questions.append( Question(text: "Los ojos de un hamster se pueden caer si se cuelga de cabeza", correctAnswer:  true))
        questions.append( Question(text: "Si divides el número de abejas hembra entre abejas macho se obtiene le número de oro", correctAnswer:  false))
        questions.append( Question(text: "Cervantes y shakespeare murioreon el mismo dia", correctAnswer:  true))
    }


    func getQuestionAt(index : Int) -> Question? {
        
        if (index < 0 || index >= questions.count ) {
            return nil
        } else {
            return questions[index]
        }
        
    }
    
    func getRandomQuiestion() -> Question {
        let index = arc4random_uniform(UInt32(questions.count))
        
        return getQuestionAt( index:Int(index) )! 
        
    }
}
