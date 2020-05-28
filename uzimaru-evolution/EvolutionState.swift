//
//  EvolutionState.swift
//  uzimaru-evolution
//
//  Created by 伊藤凌也 on 2020/05/28.
//  Copyright © 2020 ry-itto. All rights reserved.
//

import ComposableArchitecture

struct EvolutionState: Equatable {
    var evolution: Evolution

    init(evolution: Evolution) {
        self.evolution = evolution
    }
}
