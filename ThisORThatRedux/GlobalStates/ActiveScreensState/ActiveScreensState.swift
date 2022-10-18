//
//  ActiveScreensState.swift
//  ThisORThatRedux
//
//  Created by Giovanni Bruno on 18/10/22.
//

import Foundation

struct ActiveScreensState: Codable {
    let screens: [AppScreenState]
}

extension ActiveScreensState {
    init() {
        screens = [.splashScreen]
    }
}
