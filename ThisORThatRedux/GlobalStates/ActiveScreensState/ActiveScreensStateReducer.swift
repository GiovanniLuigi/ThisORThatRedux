//
//  ActiveScreensStateReducer.swift
//  ThisORThatRedux
//
//  Created by Giovanni Bruno on 18/10/22.
//

import Foundation

extension ActiveScreensState {
    static let reducer: Reducer<Self> = { state, action in
        var screens = state.screens
        
        if let action = action as? ActiveScreensStateAction {
            switch action {
            case .showScreen(.splashScreen), .dismissScreen(.home), .dismissScreen(.splashScreen): screens = [.splashScreen]
            case .showScreen(.home): screens = [.home(HomeState())]
            }
        }
        
        screens = screens.map { AppScreenState.reducer($0, action) }
        
        return ActiveScreensState(screens: screens)
    }
}
