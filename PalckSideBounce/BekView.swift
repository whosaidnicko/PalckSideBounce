//
//  BekView.swift
//  PalckSideBounce
//
//  Created by Nicolae Chivriga on 11/03/2025.
//

import SwiftUI

struct BekView: View {
    @Environment(\.dismiss)  var dismiss
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image("ubizoapsws")
                .resizable()
                .frame(width: 44, height: 36)
        }

    }
}
