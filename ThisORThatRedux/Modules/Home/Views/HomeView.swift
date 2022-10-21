//
//  HomeView.swift
//  ThisORThatRedux
//
//  Created by Giovanni Bruno on 18/10/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var store: Store<AppState>
    private var state: HomeState? { store.state.screenState(for: .home) }
    
    var body: some View {
        VStack(spacing: 0) {
            AsyncImage(url: URL(for: .dev, path: state?.duckImages.first?.imageURL ?? ""))
            AsyncImage(url: URL(for: .dev, path: state?.duckImages.first?.imageURL ?? ""))
        }
        .onLoad {
            store.dispatch(HomeStateAction.fetchDuckImages)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
