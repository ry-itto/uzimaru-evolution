//
//  Evolution.swift
//  uzimaru-evolution
//
//  Created by 伊藤凌也 on 2020/05/28.
//  Copyright © 2020 ry-itto. All rights reserved.
//

import UIKit

enum Evolution: String, CaseIterable, Equatable {
    case v1
    case v2
    case v3
    case v4

    var previous: Evolution? {
        switch self {
        case .v1:
            return nil
        case .v2:
            return .v1
        case .v3:
            return .v2
        case .v4:
            return .v3
        }
    }

    var next: Evolution? {
        switch self {
        case .v1:
            return .v2
        case .v2:
            return .v3
        case .v3:
            return .v4
        case .v4:
            return nil
        }
    }

    var image: UIImage? {
        UIImage(named: self.rawValue)
    }

    var text: String {
        self.rawValue
    }
}
