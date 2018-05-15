//
//  InstructionndHelpVC.swift
//  Bangladesh Police
//
//  Created by RIO on 5/15/18.
//  Copyright © 2018 RIO. All rights reserved.
//

import UIKit

class InstructionndHelpVC:UIViewController {
    
    @IBOutlet weak var textViewForInstruction: UITextView!
    
    var catchInstruction = String()
    
   
    override func viewDidLoad() {
        
        if catchInstruction != "" {
        self.textViewForInstruction.text = self.catchInstruction
    }
    
    }
}
