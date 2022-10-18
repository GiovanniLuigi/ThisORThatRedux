//
//  DucksRepository.swift
//  ThisORThatRedux
//
//  Created by Giovanni Bruno on 18/10/22.
//

import Foundation
import Combine

enum DucksRepositoryError: Error {
    case unknown
}

final class DuckRepository: ObservableObject {
    
    func fetchDuckImages() -> AnyPublisher<[DuckImage], DucksRepositoryError> {
        return Empty().eraseToAnyPublisher()
    }
    
}
//https://random-d.uk/api/v2/list
