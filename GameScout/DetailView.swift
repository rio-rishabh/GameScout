//
//  DetailView.swift
//  GameScout
//
//  Created by Rishabh Sharma on 02/09/24.
//

import SwiftUI

struct DetailView: View {
    var gamework : GameWork
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView : Bool = false
    
    var body: some View {
        ScrollView{
            VStack(spacing: 20){
                HStack{
                    Spacer()
                    Button{
                        isShowingDetailView = false
                    }label: {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(Color(.label))
                            .imageScale(.large)
                            .frame(width: 44, height: 44)
                    }
                }
                .padding()
                
                Spacer()
                GameTitleView(gamework: gamework)
                Text(gamework.gameDescription)
                    .font(.body)
                    .padding()
                
                Button{
                    isShowingSafariView = true
                } label: {
                    GameViewButton(title: "Check Out for More Details")
                }
                .fontWeight(.bold)
                .frame(width: 280,height: 50)
                .background(.blue)
                .cornerRadius(10)
            }
            .background(Color(.systemBackground))
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .fullScreenCover(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: gamework.urlString) ?? URL(string: "https://ea.com/sports")!)
            })
        }
    }
}

struct DetailView_Previews: PreviewProvider{
    static var previews: some View {
        DetailView(gamework: MockData.sampleGameWork, isShowingDetailView: .constant(false))
    }
}
