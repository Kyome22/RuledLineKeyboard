//
//  RuledLineType.swift
//  Keyboard
//
//  Created by ky0me22 on 2023/09/03.
//

import Foundation

enum RuledLineType: String, CaseIterable, Identifiable {
    case topLeft = "┏"
    case topCenter = "┳"
    case topRight = "┓"
    case middleLeft = "┣"
    case middleCenter = "╋"
    case middleRight = "┫"
    case bottomLeft = "┗"
    case bottomCenter = "┻"
    case bottomRight = "┛"
    case horizontal = "━"
    case vertical = "┃"
    case period = "."

    var id: String { rawValue }
    var label: String { rawValue }

    static let tops: [RuledLineType] = [.horizontal, .topLeft, .topCenter, .topRight]
    static let middles: [RuledLineType] = [.vertical, .middleLeft, .middleCenter, .middleRight]
    static let bottoms: [RuledLineType] = [.period, .bottomLeft, .bottomCenter, .bottomRight]
}
