//
//  DucksMiddleware.swift
//  ThisORThatRedux
//
//  Created by Giovanni Bruno on 18/10/22.
//

import Foundation
import Combine

extension Middlewares {
    static let ducks: Middleware<AppState> = { state, action in
        switch action {
        default:
            return Empty().eraseToAnyPublisher()
        }
    }
}
