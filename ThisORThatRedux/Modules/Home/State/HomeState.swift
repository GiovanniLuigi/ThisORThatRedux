//
//  HomeState.swift
//  ThisORThatRedux
//
//  Created by Giovanni Bruno on 18/10/22.
//

import Foundation

struct HomeState: Codable {
    let isLoading: Bool
    let duckImages: [DuckImage]
}

extension HomeState {
    init() {
        self.isLoading = true
        self.duckImages = []
    }
}
