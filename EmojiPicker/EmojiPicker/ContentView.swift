//
//  ContentView.swift
//  EmojiPicker
//
//  Created by WSS on 17/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var Tap = ""
    var body: some View {
        ZStack {
            Image("Mood")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
                .opacity(0.3)
            Image(Tap)
                .resizable()
                .scaledToFit()
                .frame(width:150,
                       height:200)
            VStack {
                Spacer()
                Text("Choose Emoji That Describes Ur Mood")
                    .foregroundColor(.accentColor)
                    .font(.largeTitle)
                    .bold()
                    .shadow(radius:5)
                    .foregroundColor(.black)
                    .background(.quaternary)
                    .padding()
                Spacer()
                ScrollView(.horizontal){
                    
                    HStack {
                        ForEach(Emojis){
                            Emoji in
                            Text(Emoji.Emojis)
                                .padding(.all)
                                .font(.system(size: 60))
                                .onTapGesture {
                                    Tap = Emoji.image
                                    
                                }
                           
                        }.background(.quaternary)
                            .clipShape(Circle())
                    }
                }
                Spacer()
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


