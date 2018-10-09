//
//  ProtocolDeclarations.swift
//  SwiftConcepts
//
//  Created by Daffolap on 09/10/18.
//

import Foundation
public protocol Container {
associatedtype Item
mutating func append(_ item:Item)
var count:Int { get }
subscript(i:Int)->Item { get set }
}

/// protocol extensions are magic things
/// we can write generic where clause that requires item to be specific type
/// here for average items requires to be double type
extension Container where Item == Double {
  public  func average()->Double {
    var sum = 0.0
        for index in 0..<count {
          sum += self[index]
        }
    return sum / Double(count)
    }
}
/// protocol extensions using generic where clause items requires to conform to some protocl
extension Container where Item:Equatable {
public  func startsWith(_ item:Item)->Bool {
return count >= 1 && self[0] == item
}
}
