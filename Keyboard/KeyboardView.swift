//
//  KeyboardView.swift
//  Keyboard
//
//  Created by ky0me22 on 2023/09/03.
//

import SwiftUI
import KeyboardExtensionKit

struct KeyboardView<KM: KeyboardModelProtocol>: KEKeyboardViewProtocol {
    typealias KM = KM

    @StateObject var keyboardModel: KM

    var body: some View {
        VStack(spacing: 8) {
            HStack(spacing: 8) {
                ForEach(RuledLineType.tops) { type in
                    KEKeyButton(text: type.label, maxWidth: .infinity) {
                        keyboardModel.insert(text: type.label)
                    }
                }
                KERepeatableCommandButton(
                    image: Image(systemName: "delete.backward"),
                    maxWidth: .infinity,
                    model: KERepeatableCommandButtonModel(onCommandHandler: {
                        keyboardModel.delete()
                    })
                )
            }
            HStack(spacing: 8) {
                ForEach(RuledLineType.middles) { type in
                    KEKeyButton(text: type.label, maxWidth: .infinity) {
                        keyboardModel.insert(text: type.label)
                    }
                }
                KERepeatableCommandButton(
                    image: Image(systemName: "return"),
                    maxWidth: .infinity,
                    model: KERepeatableCommandButtonModel(onCommandHandler: {
                        keyboardModel.insertNewLine()
                    })
                )
            }
            HStack(spacing: 8) {
                ForEach(RuledLineType.bottoms) { type in
                    KEKeyButton(text: type.label, maxWidth: .infinity) {
                        keyboardModel.insert(text: type.label)
                    }
                }
                KECommandButton(
                    image: Image(systemName: "space"),
                    maxWidth: .infinity
                ) {
                    keyboardModel.insertSpace()
                }
            }
        }
        .padding(4)
    }
}
