//
//  MioskakalViuw.swift
//  PalckSideBounce
//
//  Created by Dumitrita Cazakici on 10/03/2025.
//

import SwiftUI
import Lottie

struct MioskakalViuw: View {
    @State var ibzaswbg: Bool = false
    var body: some View {
        ZStack {
            Color.init(hex: "#002F32")
                .ignoresSafeArea()
            
            NavigationLink("", destination: KiozapierzsView(), isActive: $ibzaswbg)
            LottieView(animation: .named("orginba"))
                .playing(loopMode: .loop)
                .resizable()
                .frame(width: 165, height: 165)
        }
        .deviksoae()
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.55) {
                UIImpactFeedbackGenerator(style: .rigid).impactOccurred()
                self.ibzaswbg = true
            }
        }
    }
}
