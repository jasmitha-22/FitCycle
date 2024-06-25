//
//  quizChoosePhase.swift
//  FitCycle
//
//  Created by Jasmitha Gourabathini on 6/24/24.
//

import SwiftUI

struct quizChoosePhase: View {
    var body: some View {
        ZStack{
            Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177)
                .ignoresSafeArea()
            VStack{
               //just some ideas...totally up for change
                Text("Quiz??")
                Text("When was the first day of the menstrual cycle?")
                Text("How are your energy levels today?")

            }
        }
    }
}

#Preview {
    quizChoosePhase()
}
