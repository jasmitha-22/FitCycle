//
//  quizChoosePhase.swift
//  FitCycle
//
//  Created by Jasmitha Gourabathini on 6/24/24.
//

import SwiftUI

struct quizChoosePhase: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177)
                    .ignoresSafeArea()
                VStack{
                    //just some ideas...totally up for change
                    Text("What phase of your cycle are you in?")
                        .padding()
                    NavigationLink(destination: menstrual_()) {
                        Text ("Days 1-5: Menstrual")
                            .padding()
                    }
                    NavigationLink(destination: follicular_()) {
                        Text ("Days 5-10: Follicular")
                            .padding()
                    }
                    NavigationLink(destination: luteal()) {
                        Text ("Days 10-15: Luteal")
                            .padding()
                    }
                    NavigationLink(destination: ovulatory()) {
                        Text ("Days 15-20: Ovulatory")
                            .padding()
                    }
                    }
                

            }
        }
    }
}

#Preview {
    quizChoosePhase()
}
