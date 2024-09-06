    //
    //  ContentView.swift
    //  GameScout
    //
    //  Created by Rishabh Sharma on 02/09/24.
    //

    import SwiftUI

    struct ContentView: View {

    @StateObject var viewModel = GameWorkGridViewModel()
    @State private var searchText = ""
    @State private var favorites : Set<GameWork> = []
    let column : [GridItem] = [GridItem(.adaptive(minimum: 150, maximum: 200), spacing: 16)
    ]
    var body: some View {
        NavigationView{
            VStack(spacing : 0){
                TextField("Search Games", text: $searchText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .shadow(color: .black.opacity(0.8), radius: 5, x: 0, y: 2)
                    .font(.title3)
                    .fontWeight(.semibold)
                    
                
                ScrollView{
                    LazyVGrid(columns: column, spacing: 10){
                        
                        ForEach(filteredGameWorks)
                        { gamework in GameTitleView(/*gamework: gamework, isFavorite: favorites.contains(gamework))*/ gamework : gamework, isFavorite: favorites.contains(gamework),
                                                                                                                      toggleFavorite: {
                            toggleFavorite(gamework: gamework)
                        }
                           )         .onTapGesture {
                                    viewModel.selectedGame = gamework
                                }
                                .contextMenu{
                                    Button(action:{
                                        toggleFavorite(gamework: gamework)
                                    }){
                                        Label(favorites.contains(gamework) ? "Unfavorite" : "Favorite", systemImage: favorites.contains(gamework) ? "heart.fill" : "heart")

                                    }
                                }
                        }
                    }
                }
                    .navigationTitle("GameScout")
                    .font(.title)
                    .fontWeight(.bold)
                
                    .sheet(isPresented: $viewModel.isShowingDetailView){
                        DetailView(gamework: viewModel.selectedGame ?? MockData.sampleGameWork, isShowingDetailView: $viewModel.isShowingDetailView, favorites: $favorites)
                    }
            }.background(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
        }
        
    }


    var filteredGameWorks : [GameWork]{
        if searchText.isEmpty{
            return MockData.gameworks
        }else{
            return MockData.gameworks.filter{
                $0.name.lowercased().contains(searchText.lowercased())
            }
        }
    }


    private func toggleFavorite(gamework : GameWork){
        if favorites.contains(gamework){
            favorites.remove(gamework)
        }
        else{
            favorites.insert(gamework)
        }
    }


    }


    #Preview {
    ContentView()
    }


    struct GameTitleView : View{
    let gamework : GameWork
    let isFavorite: Bool
    var toggleFavorite :()-> Void
    var body : some View {
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
            
    //            if isFavorite{
    //                Image(systemName: "heart.fill")
    //                    .foregroundColor(.red)
            
            Button(action: {
                toggleFavorite()
            }){
                Image(systemName: isFavorite ? "heart.fill" : "heart")
                    .foregroundColor(isFavorite ? Color.red : .gray)
            }
            .buttonStyle(PlainButtonStyle())
            }
            .padding(.all)
        }
    }

