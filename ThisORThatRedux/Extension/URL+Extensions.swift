//
//  URL+Extensions.swift
//  ThisORThatRedux
//
//  Created by Giovanni Bruno on 21/10/22.
//

import Foundation

extension URL {
    
    init?(for environment: Environment, path: String) {
        self.init(string: environment.url + path)
    }
    
}

