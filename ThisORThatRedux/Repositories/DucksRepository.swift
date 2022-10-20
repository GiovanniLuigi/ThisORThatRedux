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
            .decode(type: [String: Decodable].self, decoder: JSONDecoder())
            .map {
                // TODO:- Use JSONSerialization, remove `decode step`
                let imagesArray = $0["images"] as? [String]
                return imagesArray.compactMap { $0 as? String }?.compactMap { DuckImage(imageURL: $0) }
            }
            .mapError { error in
                print(error)
                return DucksRepositoryError.unknown }
            .eraseToAnyPublisher()
    }
    
}

