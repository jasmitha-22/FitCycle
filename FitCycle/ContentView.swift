//
//  ContentView.swift
//  FitCycle
//
//  Created by Jasmitha Gourabathini on 6/24/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                //wanted to try to add a navigation bar here but not sure how
                ZStack{
                    Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177)
                        .ignoresSafeArea()
                    VStack{
                        Image("Fitcycle Logo")
                        NavigationLink(destination: quizChoosePhase()) {
                            Text("Begin Workout")
                       }
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius: 10))
                        .tint(.init(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196))
                        .font(.title2)
                        .foregroundColor(Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177))
                    }
                }
            }
            //can we change the home button to the logo or a diff color?
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    ContentView()
}
