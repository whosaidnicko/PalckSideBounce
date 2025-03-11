//
//  KiozapierzsView.swift
//  PalckSideBounce
//
//  Created by Dumitrita Cazakici on 11/03/2025.
//

import SwiftUI


struct KiozapierzsView: View {
    @State private var liuowzbert: Bool = false
    
    var body: some View {
        ZStack {
            Color.init(hex: "#002F32")
                .ignoresSafeArea()
            
            VStack {
                Image("lagapips")
                    .resizable()
                    .scaledToFit()
                    .offset(y: self.liuowzbert ? 0 : -UIScreen.main.bounds.height)
                    .animation(Animation.bouncy.delay(0.23), value: liuowzbert)
                
                NavigationLink {
                    Frogrdostinvst()
                } label: {
                    Image("ogoezb")
                        .resizable()
                        .scaledToFit()
                }

              
                    .rotationEffect(.degrees(self.liuowzbert ? 360 : 0))
                    .scaleEffect(self.liuowzbert ? 1 : 0)
                    .padding(25)
                    .animation(Animation.bouncy.delay(0.43), value: liuowzbert)
                
                NavigationLink {
                    NukrediotvzView()
                } label: {
                    Image("ruliks")
                        .resizable()
                        .scaledToFit()
                }

              
                    .rotationEffect(.degrees(self.liuowzbert ? 360 : 0))
                    .scaleEffect(self.liuowzbert ? 1 : 0)
                    .padding(25)
                    .animation(Animation.bouncy.delay(0.63), value: liuowzbert)
                
                Spacer()
            }
        }
        .navigationBarBackButtonHidden()
        .onAppear() {
            self.liuowzbert = true
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.23) {
                UIImpactFeedbackGenerator(style: .rigid).impactOccurred()
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.43) {
                UIImpactFeedbackGenerator(style: .light).impactOccurred()
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.63) {
                UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
            }

        }
        
    }
}
