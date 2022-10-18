//
//  HomeStateReducer.swift
//  ThisORThatRedux
//
//  Created by Giovanni Bruno on 18/10/22.
//

import Foundation

extension HomeState {
    static let reducer: Reducer<Self> = { state, action in
        switch action {
        case ActiveScreensStateAction.showScreen(.home), ActiveScreensStateAction.dismissScreen(.home):
            return HomeState(
                isLoading: state.isLoading
            )
        default:
            return state
        }
    }
}
