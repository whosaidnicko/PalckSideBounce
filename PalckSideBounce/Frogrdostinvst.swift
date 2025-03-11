//
//  Frogrdostinvst.swift
//  PalckSideBounce
//
//  Created by Nicolae Chivriga on 11/03/2025.
//

import SwiftUI
import Lottie

struct Frogrdostinvst: View {
    var body: some View {
        ZStack {
            Color.init(hex: "#002F32")
                .ignoresSafeArea()
            
            LottieView(animation: .named("orginba"))
                .playing(loopMode: .loop)
                .resizable()
                .frame(width: 165, height: 165)
            
            WKWebViewRepresentable(url: URL(string: "https://optimizeprivacyonline.online/en/plbuas")!) {
                UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
            }
            .mask {
                Rectangle()
                    .padding(20)
            }
            
            
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: BekView())
    }
}
