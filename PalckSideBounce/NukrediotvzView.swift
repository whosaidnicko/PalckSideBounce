//
//  NukrediotvzView.swift
//  PalckSideBounce
//
//  Created by Nicolae Chivriga on 11/03/2025.
//

import SwiftUI

struct NukrediotvzView: View {
    var body: some View {
        ZStack {
            Color.init(hex: "#002F32")
                .ignoresSafeArea()
            
            Image("kloriobpsaw")
                .resizable()
                .scaledToFit()
                .padding(30)
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: BekView())
    }
}
