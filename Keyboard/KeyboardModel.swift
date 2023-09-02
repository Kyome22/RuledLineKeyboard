//
//  KeyboardModel.swift
//  Keyboard
//
//  Created by ky0me22 on 2023/09/03.
//

import SwiftUI
import KeyboardExtensionKit

protocol KeyboardModelProtocol: KEKeyboardModelProtocol {
    func insertSpace()
    func insertNewLine()
    func delete()
}

final class KeyboardModel: KEKeyboardModel, KeyboardModelProtocol {
    func insertSpace() {
        insert(text: " ")
    }

    func insertNewLine() {
        insert(text: "\n")
    }

    func delete() {
        super.delete(length: 1)
    }
}
