//
//  Addition.swift
//  myFirstApp
//
//  Created by Olatunbosun Oyeleke  on 04/03/2020.
//  Copyright © 2020 Olatunbosun Oyeleke . All rights reserved.
//

import UIKit

class Addition: NSObject {
    public func sum(numbers: [Double]) -> Double {
        var sum: Double = 0.0
        for num in numbers {
            sum += num
        }
        return sum
    }
}
