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

final class DucksRepository: ObservableObject {
    
    func fetchDuckImages() -> AnyPublisher<[DuckImage], DucksRepositoryError> {
        let url = URL(string: "https://random-d.uk/api/v2/list")!
        return URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .map {
                let json = try? JSONSerialization.jsonObject(with: $0, options: []) as? [String: Any]
                let imagesArray = json?["images"] as? [String] ?? []
                return imagesArray.compactMap { DuckImage(imageURL: $0) }
            }
            .mapError { _ in DucksRepositoryError.unknown }
            .eraseToAnyPublisher()
    }
    
}

