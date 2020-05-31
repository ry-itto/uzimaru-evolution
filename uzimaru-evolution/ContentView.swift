//
//  ContentView.swift
//  uzimaru-evolution
//
//  Created by 伊藤凌也 on 2020/05/27.
//  Copyright © 2020 ry-itto. All rights reserved.
//

import ComposableArchitecture
import SwiftUI

struct ContentView: View {

    let store: Store<EvolutionState, EvolutionAction>

    var body: some View {
        WithViewStore(self.store) { viewStore in
            ZStack {
                Color("background")
                VStack {
                    Text("uzimaru Evolution")
                        .foregroundColor(Color("uzimaru"))
                        .font(Font.largeTitle.weight(.black))
                        .underline(true, color: Color.white.opacity(0.5))
                    Image.init(viewStore.evolution.text)
                        .resizable()
                        .scaledToFit()
                        .onTapGesture {
                            viewStore.send(.poke)
                        }
                    HStack(spacing: 30) {
                        Button(
                            action: {
                                viewStore.send(.degenerate)
                            },
                            label: {
                                Image(systemName: "arrow.left.circle")
                                    .font(Font.title.weight(.bold))
                                    .foregroundColor(Color("uzimaru"))
                            })
                        Text(viewStore.evolution.text)
                            .font(Font.largeTitle.weight(.heavy))
                            .foregroundColor(Color("uzimaru"))
                        Button(
                            action: {
                                viewStore.send(.evolve)
                            },
                            label: {
                                Image(systemName: "arrow.right.circle")
                                    .font(Font.title.weight(.bold))
                                    .foregroundColor(Color("uzimaru"))
                            })
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(
            store: Store(
                initialState: EvolutionState(evolution: .v1),
                reducer: evolutionReducer,
                environment: EvolutionEnvironment()
            )
        )
    }
}
