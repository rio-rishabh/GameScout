//
//  GameWorkGridViewModel.swift
//  GameScout
//
//  Created by Rishabh Sharma on 02/09/24.
//

import Foundation
import SwiftUI

final class GameWorkGridViewModel: ObservableObject{
    
    var selectedGame: GameWork?{
        didSet{
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
