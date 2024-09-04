//
//  ContentView.swift
//  GameScout
//
//  Created by Rishabh Sharma on 02/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = GameWorkGridViewModel()
    let column : [GridItem] = [GridItem(.adaptive(minimum: 150, maximum: 200), spacing: 16)
    ]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: column, spacing: 10){
                    ForEach(MockData.gameworks){
                        gamework in GameTitleView(gamework: gamework)
                            .onTapGesture {
                                viewModel.selectedGame = gamework
                            }
                    }
                }
            }.background(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))

            .navigationTitle("GameScout")
                .font(.title)
                .fontWeight(.bold)
            
                .sheet(isPresented: $viewModel.isShowingDetailView){
                    DetailView(gamework: viewModel.selectedGame ?? MockData.sampleGameWork, isShowingDetailView: $viewModel.isShowingDetailView)
                }
        }
        
    }
}

#Preview {
    ContentView()
}


struct GameTitleView : View{
    let gamework : GameWork
    var body : some View{
        VStack{
            Spacer()
            Image(gamework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .cornerRadius(10)
                .shadow(radius: 5)
            Text(gamework.name)
                .font(.headline)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .scaledToFit()
                .minimumScaleFactor(0.5)
                
        }.padding(.all)
    }
}
