//
//  quizChoosePhase.swift
//  FitCycle
//
//  Created by Jasmitha Gourabathini on 6/24/24.
//

import SwiftUI

struct quizChoosePhase: View {
    @State var MenstrualDate = Date.now
    @State var Days: Int = 1
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177)
                    .ignoresSafeArea()
                VStack(spacing: 50){
                    //  just some ideas...totally up for change
                    VStack{
                        DatePicker("First Day of Menstrual Cycle", selection: $MenstrualDate, in: ...Date(), displayedComponents: .date)
                            .padding(.top, 8.0)
                            .frame(width: 300.0, height: 75.0)
                        
                        // Here we assign today's date
                        let date = Date()
                        let dateDiff = Calendar.current.dateComponents([.day], from: MenstrualDate, to: date)
                        let Days = dateDiff.day
                        //print it out
                        Text("You are on day \(String(describing: Days!))")
                            .padding(.vertical, 8.0)
                        
                    }
                    .padding()
                    .background(Rectangle() .foregroundColor(.white))
                    .cornerRadius(15)
                    .shadow(radius: 15)
                    
                    VStack (alignment: .center, spacing: 20.0){
                        Text("What phase of your cycle are you in?")
                            .multilineTextAlignment(.center)
                            .padding()
                            .font(.title2)
                            .frame(width: 300.0, height: 95.0)
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
}

#Preview {
    quizChoosePhase()
}
