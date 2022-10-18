//
//  AppState.swift
//  ThisORThatRedux
//
//  Created by Giovanni Bruno on 17/10/22.
//

import Foundation

struct AppState: Codable {
    let activeScreens: ActiveScreensState
}

extension AppState {
    init() {
        activeScreens = ActiveScreensState()
    }
}
