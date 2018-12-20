//
//  Quiestion.swift
//  05_QuizApp
//
//  Created by Jair Benítez on 18/12/18.
//  Copyright © 2018 Jair Benítez. All rights reserved.
//

import Foundation

class Question : CustomDebugStringConvertible, Codable {
    
   
    let question : String
    let answare : Bool
    
    // sirve para que los atributos de la clase correspondan
    // a los del fichero XML
    // si se llamaran igual no habría necesidad de este metodo
    /*
    enum CodingKeys : String, CodingKey {
        
        case questionText = "question"
        case answer = "answare"
        
    }*/
    
    var debugDescription : String {
        let respuesta = ( answare ? "Verdadera" : "Falsa" )
        return """
        Pregunta:
        ---------
            - \(question)
            - Respuesta: \(respuesta)
        """
    }
    
    // Inicializador
    
    init(text: String, correctAnswer: Bool) {
        
        self.question = text
        self.answare = correctAnswer
        
    }
    
    
}


// crea una esttructura de datos
// porque la estructura es un array de Question
struct QuestionsBank : Codable {
    var questions : [Question]
}
