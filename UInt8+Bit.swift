//
//  UInt8+Bit.swift
//  
//
//  Created by Joey Z on 12/28/15.
//  Github.com/Swift-Kit
//  Github.com/josephyzhou
//

import Foundation

extension UInt8 {
    
    // turning UInt8 into an array of Bitss
    var bitArray : [Bit] {
        
        // create array of appropriate length:
        var array = [Bit](count: 8, repeatedValue: .Zero)
        
        // copy bytes into array
        var byteStr = String(self, radix:2)
        
        // pad the string with 0s
        let diff = 8 - byteStr.length
        if diff > 0 {
            for _ in 0..<diff {
                byteStr = "0" + byteStr
            }
        }
        
        // loop through chars, fill the array
        for var i = 0; i < byteStr.characters.count; i++ {
            if byteStr[i] == "0" {
                array[i] = .Zero
            } else if byteStr[i] == "1" {
                array[i] = .One
            }
        }
        
        return array
    }
}
