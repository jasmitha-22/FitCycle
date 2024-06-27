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
                VStack(){
                    //  date picker
                    VStack{
                        DatePicker("First Day of Menstrual Cycle", selection: $MenstrualDate, in: ...Date(), displayedComponents: .date)
                            .padding(.top, 8.0)
                            .frame(width: 300.0, height: 75.0)
                            .font(.custom("Verdana", size: 18))
                            .foregroundColor(Color(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196))

                        
                        // Here we assign today's date
                        let date = Date()
                        let dateDiff = Calendar.current.dateComponents([.day], from: MenstrualDate, to: date)
                        let Days = dateDiff.day
                        Spacer()
                            .frame(height: 25.0)
                        //print it out
                        VStack{
                            Text("You are on day \(String(describing: Days!))")
                                .padding(.all, 8.0)
                                .font(.custom("PlaywriteNGModern-Regular", size: 30))
                                .foregroundColor(Color(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196))
                        }
                        .padding()
                        .background(Rectangle() .foregroundColor(Color(red: 0.9490196078431372, green: 0.7607843137254902, blue: 0.8352941176470589)))
                        .cornerRadius(15)
                        .shadow(color: Color(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196), radius: 15)

                      
                        //Fonts: --PlaywriteNGModern-Regular_Thin
//                        --PlaywriteNGModern-Regular
//                        --PlaywriteNGModern-Regular_Thin
//                        --PlaywriteNGModern-Regular_ExtraLight
//                        --PlaywriteNGModern-Regular_Light

                    }

                    VStack (alignment: .center, spacing: 10.0){
                        Text("What phase of your cycle are you in?")
                            .multilineTextAlignment(.center)
                            .padding()
                            .font(.custom("Verdana", size: 25))
                            .frame(width: 300.0, height: 93.0)
                            .foregroundColor(Color(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196))

                        NavigationLink(destination: menstrual_()) {
                            Text ("Days 1-5: Menstrual")
                                .padding()
                        }
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius: 10))
                        .tint(.init(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196))
                        .foregroundColor(Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177))
                        .font(.custom("PlaywriteNGModern-Regular_Light", size: 20))

                        
                        NavigationLink(destination: follicular()) {
                            Text ("Days 6-11: Follicular")
                                .padding()
                        }
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius: 10))
                        .tint(.init(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196))
                        .font(.custom("PlaywriteNGModern-Regular_Light", size: 20))
                        .foregroundColor(Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177))
                        
                        NavigationLink(destination: luteal()) {
                            Text ("Days 12-16: Ovulation")
                                .padding()
                        }
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius: 10))
                        .tint(.init(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196))
                        .font(.custom("PlaywriteNGModern-Regular_Light", size: 20))
                        .foregroundColor(Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177))
                        
                        NavigationLink(destination: ovulatory()) {
                            Text ("Days 17-28 : Luteal")
                                .padding()
                        }
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius: 10))
                        .tint(.init(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196))
                        .font(.custom("PlaywriteNGModern-Regular_Light", size: 20))
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
