//
//  Helpers.swift
//  swiftui-paging-tabs
//
//  Created by Crystal Knight on 1/12/22.
//

import Foundation
import SwiftUI

// all(where:) found here: https://learnappmaking.com/find-item-in-array-swift/#finding-all-items-in-an-array-with-allwhere
/// Finds all elements in an array that fit a set of criteria
extension Array where Element: Equatable {
  func all(where predicate: (Element) -> Bool) -> [Element]  {
    return self.compactMap { predicate($0) ? $0 : nil }
  }
}
