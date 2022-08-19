//
//  ContentView.swift
//  StudentInfo
//
//  Created by WSS on 17/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //            Color.gray
            Image("lecture3")
                .resizable()
                .ignoresSafeArea()
                .opacity(0.1)
            
            VStack {
                
                Image("Id2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding(.all)
                Spacer()
                Text("College Students Info")
                    .font(.largeTitle)
                    .bold()
                    .background(.white)               .foregroundColor(.secondary)
                    .padding()
                Divider()
                ScrollView{
                    ForEach(students){
                        Student in
                        Text("Name: \(Student.FullName)")
                            .bold()
                        Text("Year: \(Student.year)")
                            .bold()
                        Text("Age: \(Student.age)")
                            .bold()
                        Divider()
                        Spacer()
                        
                    }.background(.quaternary)
                        
                }
                
                HStack{
                    Image(systemName: "i.circle.fill")
                        .font(.system(size: 30))
                    Text("Students Registered: 7")
                        .bold()
                        .font(.system(size: 30))
                }.background(.white)
                    .foregroundColor(.secondary)
                    .padding()
                    .cornerRadius(40)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
