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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func buttonPress(_ sender: UIButton) {
        
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return UIStatusBarStyle.default
    }

}
