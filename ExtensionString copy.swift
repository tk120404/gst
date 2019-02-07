//
//  ExtensionString.swift
//  Sid'sToDoList
//
//  Created by Siddhant Mahapatra on 2/7/19.
//  Copyright © 2019 Siddhant Mahapatra. All rights reserved.
//

import Foundation

extension String
{
    func isValidGSTIN() -> Bool{ var uniScalars = [Int]();for (index, item) in (self.dropLast().unicodeScalars).enumerated(){ let alpha = Int((48...57 ~= item.value) ?(item.value - 48) : (item.value - 55));let beta = (((index + 1) % 2 == 0) ?2 : 1);  uniScalars.append((alpha * beta < 36) ? alpha * beta : 1 + ( alpha * beta - 36))};let gamma = (uniScalars.reduce(0, +) % 36);return ((self.dropLast() + "\((Character(UnicodeScalar((0...9 ~= (36 - gamma)+48) ?(36 - gamma) : (36 - gamma)+55)!)))") == self ) ? true : false}

}

// place this file in to your project. this function is an extention of String class so can be accessed from anywhere.
// print("27AAPFU0939F1Zv".isValidGSTIN()) 


