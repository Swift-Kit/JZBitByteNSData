//
//  NSData+BitByte.swift
//  
//
//  Created by Joey Z on 12/28/15.
//  Github.com/Swift-Kit
//  Github.com/josephyzhou
//

import Foundation

extension NSData {
    
    // turning NSData into an array of bytes
    var byteArray : [UInt8] {
        
        // create array of appropriate length
        let count = self.length / sizeof(UInt8)
        var array = [UInt8](count: count, repeatedValue: 0)
        
        // copy bytes into array
        self.getBytes(&array, length:count * sizeof(UInt8))
        
        // return the array
        return array
    }
}
