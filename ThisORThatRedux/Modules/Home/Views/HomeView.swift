//
//  HomeView.swift
//  ThisORThatRedux
//
//  Created by Giovanni Bruno on 18/10/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        Text("Home View")
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
