//
//  AppState+ScreenStateSelector.swift
//  ThisORThatRedux
//
//  Created by Giovanni Bruno on 18/10/22.
//

import Foundation

extension AppState {
    func screenState<State>(for screen: AppScreen) -> State? {
        return activeScreens.screens
            .compactMap {
                switch($0, screen) {
                case (.home(let state), .home): return state as? State
                default: return nil
                }
            }
            .first
    }
}
