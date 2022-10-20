//
//  Publisher+Extensions.swift
//  ThisORThatRedux
//
//  Created by Giovanni Bruno on 20/10/22.
//

import Foundation
import Combine

extension Publisher {
    func ignoreError() -> AnyPublisher<Output, Never> {
        self
        .catch { _ in Empty() }
        .eraseToAnyPublisher()
    }
}
