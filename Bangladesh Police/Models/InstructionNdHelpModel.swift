//
//  InstructionNdHelpModel.swift
//  Bangladesh Police
//
//  Created by RIO on 5/15/18.
//  Copyright © 2018 RIO. All rights reserved.
//

import Foundation


class InstructionNdHelpModel {
    
    var _instructionMustBeRead:String!
    var _helpMenu:String!
    
    
    var instructionMustBeRead:String {
        
        return _instructionMustBeRead
    }
    
    var helpMenu:String {
        
        return _helpMenu
    }
    
    init(instructionMustBeRead:String,helpMenu:String) {
    
        self._instructionMustBeRead = instructionMustBeRead
        self._helpMenu = helpMenu
        
    }
    
    
    
}
