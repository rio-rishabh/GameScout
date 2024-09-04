//
//  GameViewButton.swift
//  GameScout
//
//  Created by Rishabh Sharma on 02/09/24.
//

import SwiftUI

struct GameViewButton: View {
        var title : String
        var body: some View {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width: 280, height: 50)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }

#Preview {
    GameViewButton(title: "TestTitle")
}
