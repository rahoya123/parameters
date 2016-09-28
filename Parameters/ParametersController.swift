//
//  ParametersController.swift
//  Parameters
//
//  Created by abderrahmane chafi on 27/09/2016.
//  Copyright © 2016 abderrahmanechafi. All rights reserved.
//

import Foundation
import UIKit

class ParametersController {
    
    static let sharedInstance = ParametersController()
    var parameters = [Parameter ]()
    init () {
        let parties = Parameter ( image: UIImage (named: "parties.png")! , name : "parties", switchset : false )
        let books = Parameter (image : UIImage (named: "books.png")! , name : "books", switchset : true )
        let computers = Parameter (image :  UIImage (named: "computers.png")! , name : "computers", switchset : true )
        let phones = Parameter (image : UIImage (named: "phones.png")! , name : "phones", switchset : true )
        
       self.parameters = [parties, books, computers ,phones]
    }
    
    func updateParameter(paramater : Parameter , selected : Bool ) {
    
    paramater.switchset = selected
    
    }

    
    
    
    
    
}
