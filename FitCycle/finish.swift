//
//  finish.swift
//  FitCycle
//
//  Created by Jasmitha Gourabathini on 6/27/24.
//

import SwiftUI

struct finish: View {
    @State private var posMessage = ""
    @State private var titleText = "Great job for showing up for yourself today! I hope you know just how proud we are of you! "
    var body: some View {
        ZStack{
            Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177)
                    .ignoresSafeArea()
            VStack{
                VStack{
                    Text(titleText)
                        .font(.custom("PlaywriteNGModern-Regular", size: 20))
                        .foregroundColor(Color(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196))
                        .multilineTextAlignment(.center)
                        .lineLimit(5)
                        .padding(.all)
                        .frame(height: 225.0)

                }
                .background(Rectangle() .foregroundColor(Color(red: 0.9490196078431372, green: 0.7607843137254902, blue: 0.8352941176470589)))
                .cornerRadius(15)
                .padding(25.0)

                VStack(spacing: 20){
                    Text("Write a positive message to yourself as a celebration for completing your workout today! <3")
                        .font(.custom("Verdana", size: 15))
                        
                        .foregroundColor(Color(red: 0.9294117647058824, green: 0.5215686274509804, blue: 0.43137254901960786))
                        .frame(height: 60.0)
                    
                    TextField("I am so proud of myself today for...", text: $posMessage)
                        .frame(height: 100.0)
                        .font(.custom("PlaywriteNGModern-Regular", size: 15))
                        .multilineTextAlignment(.center)
                        .border(Color(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196), width: 1)
                    Button("Save Message") {
                       titleText = "💕✨ \(posMessage) ✨💕"
                    }
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.capsule)
                    .tint(.init(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196))
                    .font(.custom("Verdana", size: 20))
                    .foregroundColor(Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177))
                    
                }
                .padding(30.0)
                HStack{
                    Image("plant1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("plant2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("plant3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }

            }
        }
    }
}
#Preview {
    finish()
}
