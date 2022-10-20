//
//  DucksMiddleware.swift
//  ThisORThatRedux
//
//  Created by Giovanni Bruno on 18/10/22.
//

import Foundation
import Combine

extension Middlewares {
    static let ducksRepository = DucksRepository()
    
    static let ducks: Middleware<AppState> = { state, action in
        switch action {
        case HomeStateAction.fetchDuckImages:
            return ducksRepository
                .fetchDuckImages()
                .map { HomeStateAction.didReceiveDuckImages($0) }
                .ignoreError()
                .eraseToAnyPublisher()
        default:
            return Empty().eraseToAnyPublisher()
        }
    }
}
