//
//  Parameter.swift
//  Parameters
//
//  Created by abderrahmane chafi on 27/09/2016.
//  Copyright © 2016 abderrahmanechafi. All rights reserved.
//

import Foundation
import UIKit
class Parameter  {
    
     var image : UIImage?
    var name : String
    var switchset :  Bool
   
    
    init ( image : UIImage ,name : String, switchset :  Bool )
    
    {
        self.image = image
        self.name = name
        self.switchset = switchset
    }
    
}
