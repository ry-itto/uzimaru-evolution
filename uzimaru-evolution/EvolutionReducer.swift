//
//  EvolutionReducer.swift
//  uzimaru-evolution
//
//  Created by 伊藤凌也 on 2020/05/28.
//  Copyright © 2020 ry-itto. All rights reserved.
//

import ComposableArchitecture

struct EvolutionReducerID: Hashable {}

typealias EvolutionReducer = Reducer<EvolutionState, EvolutionAction, EvolutionEnvironment>

let evolutionReducer = EvolutionReducer { (state, action, _) in
    switch action {
    case .evolve:
        guard let next = state.evolution.next else  { return .cancel(id: EvolutionReducerID()) }
        state.evolution = next
    case .degenerate:
        guard let previous = state.evolution.previous else { return .cancel(id: EvolutionReducerID()) }
        state.evolution = previous
    case .poke:
        if case .v1 = state.evolution {
            state.pokeCount += 1
            if state.pokeCount == 4 {
                state.pokeCount = 0
                return .init(value: .evolve)
            }
        } else {
            return .cancel(id: EvolutionReducerID())
        }
    }
    return .none
}
