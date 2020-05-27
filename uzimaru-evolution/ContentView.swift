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
            Text("Hello, World!")
                .foregroundColor(Color("uzimaru"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
