//
//  StringHelper.swift
//  Wednesday+Demo
//
//  Created by lakshmipathi on 15/04/21.
//

import Foundation

extension String {
    func isNumber() -> Bool {
        for ch in self {
            if ch.isLetter {
                return false
            }
        }
        return true
    }
}
