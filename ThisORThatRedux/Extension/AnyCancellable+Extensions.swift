//
//  AnyCancellable+Extensions.swift
//  ThisORThatRedux
//
//  Created by Giovanni Bruno on 17/10/22.
//

import Foundation
import Combine

extension AnyCancellable {
    func store(in dictionary: inout [UUID: AnyCancellable], key: UUID) {
        dictionary[key] = self
    }
}
