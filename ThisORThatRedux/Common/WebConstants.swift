//
//  WebConstants.swift
//  ThisORThatRedux
//
//  Created by Giovanni Bruno on 21/10/22.
//

import Foundation

enum Environment {
    case dev
    
    var url: String {
        switch self {
        case .dev:
            return "https://random-d.uk/api/v2/"
        }
    }
}
