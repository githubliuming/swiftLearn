//
//  Circle.swift
//  learnSwift
//
//  Created by liuming on 2017/4/11.
//  Copyright © 2017年 burning. All rights reserved.
//

import UIKit

class Circle: NameShape {
    
    var radi:Double;
    
    init(radi:Double,name:String){
        self.radi = radi;
        super.init(name: name);
        
    }

    func area() -> Double {
        
        return self.radi * self.radi * Double.pi;
    }
    
    override func simpleDescription() -> String {
        
        return "A circle with area \(self.area())";
    }
    
}
