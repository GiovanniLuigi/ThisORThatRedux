//
//  AppScreenStateReducer.swift
//  ThisORThatRedux
//
//  Created by Giovanni Bruno on 18/10/22.
//

import Foundation

extension AppScreenState {
    static let reducer: Reducer<Self> = { state, action in
        switch state {
        case .splashScreen: return .splashScreen
        case .home(let state): return .home(HomeState.reducer(state, action))
        }
    }
}
