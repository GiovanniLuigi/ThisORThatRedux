//
//  ViewDidLoadModifier.swift
//  ThisORThatRedux
//
//  Created by Giovanni Bruno on 18/10/22.
//

import SwiftUI

struct ViewDidLoadModifier: ViewModifier {
    private let action: () -> Void
    
    @State private var didLoad = false
    
    init(_ action: @escaping () -> Void) {
        self.action = action
    }
    
    func body(content: Content) -> some View {
        content
            .onAppear {
                if !didLoad {
                    didLoad.toggle()
                    action()
                }
            }
    }
}

extension View {
    func onLoad(_ action: @escaping () -> Void) -> some View {
        self.modifier(ViewDidLoadModifier(action))
    }
}
