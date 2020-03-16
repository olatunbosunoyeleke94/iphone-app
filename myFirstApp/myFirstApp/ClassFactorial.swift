//
//  ClassFactorial.swift
//  myFirstApp
//
//  Created by Olatunbosun Oyeleke  on 19/02/2020.
//  Copyright © 2020 Olatunbosun Oyeleke . All rights reserved.
//

import UIKit

class ClassFactorial: NSObject {
    public func iteravtiveCalc ( MaxFact : Int ) -> Int{
        var Factor = 1
        for i in 1 ... MaxFact {
            Factor *= i
        }
        return (Factor)
    }
    
    public func recursiveCalc ( MaxFact : Int ) -> Int{
        if MaxFact == 1 {
            return (1)
        }
        let Factor = MaxFact * recursiveCalc(MaxFact : MaxFact - 1)
        return (Factor)
}
}
