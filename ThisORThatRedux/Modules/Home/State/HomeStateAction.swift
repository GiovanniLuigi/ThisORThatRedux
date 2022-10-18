//
//  HomeStateAction.swift
//  ThisORThatRedux
//
//  Created by Giovanni Bruno on 18/10/22.
//

import Foundation

enum HomeStateAction: Action {
    case fetchDuckImages
    case didReceiveDuckImages([DuckImage])
}
