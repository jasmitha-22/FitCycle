//
//  quizChoosePhase.swift
//  FitCycle
//
//  Created by Jasmitha Gourabathini on 6/24/24.
//

import SwiftUI

struct quizChoosePhase: View {
    @State var MenstrualDate = Date.now
    @State var Days: Int = 0
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177)
                    .ignoresSafeArea()
                VStack(spacing: 50){
                  //  just some ideas...totally up for change
                    DatePicker("First Day of Menstrual Cycle", selection: $MenstrualDate, in: ...Date(), displayedComponents: .date)
                    
                    Spacer()
                    
                    // Here we assign today's date
                    let date = Date()
                    let dateDiff = Calendar.current.dateComponents([.day], from: MenstrualDate, to: date)
                    let Days = dateDiff.day
                    // In the next line of code, I want to display months in integer, but I get the error
                    Text("\(String(describing: Days!))") // On this line display error message is "No exact matches in call to instance method 'appendInterpolation'"
                    Spacer()

                    Text("What phase of your cycle are you in?")
                        .padding()
                    NavigationLink(destination: menstrual_()) {
                        Text ("Days 1-5: Menstrual")
                            .padding()
                    }
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 10))
                    .tint(.init(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196))
                    .font(.callout)
                    .foregroundColor(Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177))
                    
                    NavigationLink(destination: follicular()) {
                        Text ("Days 5-10: Follicular")
                            .padding()
                    }
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 10))
                    .tint(.init(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196))
                    .font(.callout)
                    .foregroundColor(Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177))
                    
                    NavigationLink(destination: luteal()) {
                        Text ("Days 10-15: Luteal")
                            .padding()
                    }
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 10))
                    .tint(.init(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196))
                    .font(.callout)
                    .foregroundColor(Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177))
                    
                    NavigationLink(destination: ovulatory()) {
                        Text ("Days 15-20: Ovulatory")
                            .padding()
                    }
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 10))
                    .tint(.init(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196))
                    .font(.callout)
                    .foregroundColor(Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177))

                    }

            }
        }
    }
}

#Preview {
    quizChoosePhase()
}
