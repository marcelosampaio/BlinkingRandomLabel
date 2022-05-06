//
//  CGFloat+Utils.swift
//  BlinkingRandomLabel
//
//  Created by Marcelo Sampaio on 06/05/22.
//

import Foundation

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
