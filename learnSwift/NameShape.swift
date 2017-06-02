//
//  NameShape.swift
//  learnSwift
//
//  Created by liuming on 2017/4/11.
//  Copyright © 2017年 burning. All rights reserved.
//

import UIKit

class NameShape: NSObject {

    var numberOfSides:Int = 0;
    var name:String;
    
    init(name:String){
    
        self.name = name;
    }
    
    func simpleDescription() -> String {
        
        return " A shape with \(numberOfSides) sides";
    }
    
}
