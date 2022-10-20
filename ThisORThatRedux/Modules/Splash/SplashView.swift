//
//  SplashView.swift
//  ThisORThatRedux
//
//  Created by Giovanni Bruno on 18/10/22.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        Text("Splash View")
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    store.dispatch(ActiveScreensStateAction.showScreen(.home))
                }
            }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
