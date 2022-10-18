//
//  ThisORThatReduxApp.swift
//  ThisORThatRedux
//
//  Created by Giovanni Bruno on 17/10/22.
//

import SwiftUI


let store = Store(
    initial: AppState(),
    reducer: AppState.reducer,
    middlewares: []//[Middlewares.tvShows, Middlewares.logger, timelineRecorder.middleware, HotReloader().middleware]
)

struct AppView: View {
    @EnvironmentObject var store: Store<AppState>

    var body: some View {
        if store.state.screenState(for: .home) as HomeState? != nil {
            NavigationView {
                HomeView()
            }
            .navigationViewStyle(.stack)
        } else {
            SplashView()
        }
    }
}

@main
struct ThisORThatReduxApp: App {
    var body: some Scene {
        UINavigationBar.appearance().tintColor = .systemYellow
        UIView.appearance(whenContainedInInstancesOf: [UIAlertController.self]).tintColor = .systemYellow

        return WindowGroup {
            AppView()
                .environmentObject(store)
        }
    }
}
