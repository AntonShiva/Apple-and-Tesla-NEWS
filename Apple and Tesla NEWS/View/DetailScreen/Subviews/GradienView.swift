//
//  GradienView.swift
//  Apple and Tesla NEWS
//
//  Created by Anton Rasen on 15.08.2024.
//

import SwiftUI

struct GradienView: View {
    var body: some View {
        GeometryReader { _ in
            LinearGradient(
                colors: [Color(UIColor.systemBackground), .clear],
                startPoint: .bottom,
                endPoint: .top
            )
            .frame(height: Size.height / 4)
            .offset(y: -Size.height / 4)
        }
    }
}

