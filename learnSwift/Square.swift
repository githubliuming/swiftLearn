//
//  Square.swift
//  learnSwift
//
//  Created by liuming on 2017/4/11.
//  Copyright © 2017年 burning. All rights reserved.
//

import UIKit

class Square: NameShape {

    var sideLength:Double;
    init(sideLength:Double,name:String){
        
        self.sideLength = sideLength;
        super.init(name: name);
        self.numberOfSides = 4;
        
    }
   
    func area() -> Double {
        
        return self.sideLength * self.sideLength;
    }
    override func simpleDescription() -> String {
        
        return "A square with sides of \(self.area())";
    }
}
