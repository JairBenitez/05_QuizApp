//
//  Quiestion.swift
//  05_QuizApp
//
//  Created by Jair Benítez on 18/12/18.
//  Copyright © 2018 Jair Benítez. All rights reserved.
//

import Foundation

class Question {
    
    
    let questionText : String
    let anwer : Bool
    
    // Inicializador
    
    init(text: String, correctAnswer: Bool) {
        
        self.questionText = text
        self.anwer = correctAnswer
        
    }
    
}
