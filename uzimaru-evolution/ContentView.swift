//
//  ContentView.swift
//  uzimaru-evolution
//
//  Created by 伊藤凌也 on 2020/05/27.
//  Copyright © 2020 ry-itto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("background")
            VStack {
                Text("uzimaru Evolution")
                    .foregroundColor(Color("uzimaru"))
                    .font(Font.largeTitle.weight(.black))
                    .underline(true, color: Color.white.opacity(0.5))
                Image("v1")
                    .resizable()
                    .scaledToFit()
                HStack(spacing: 30) {
                    Button(
                        action: {

                        },
                        label: {
                            Image(systemName: "arrow.left.circle")
                                .font(Font.title.weight(.bold))
                                .foregroundColor(Color("uzimaru"))
                        })
                    Text("v1")
                        .font(Font.largeTitle.weight(.heavy))
                        .foregroundColor(Color("uzimaru"))
                    Button(
                        action: {

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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
