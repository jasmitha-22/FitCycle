//
//  disclaimers.swift
//  FitCycle
//
//  Created by Jasmitha Gourabathini on 6/27/24.
//

import SwiftUI

struct disclaimers: View {
    var body: some View {
        ZStack{
            Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177)
                .ignoresSafeArea()
            VStack(spacing: 20){
                Text("Important Disclaimers (Please Read)")
                    .multilineTextAlignment(.center)
                    .font(.custom("PlaywriteNGModern-Regular", size: 25))
                

                Text ("PLEASE NOTE that we are NOT health professionals and to consult your doctor before following the routines displayed in the app!")
                    .font(.custom("Verdana", size: 15))
                
                Text ("Your body does NOT need to fit the dates, timeframes, and outline of this workout app. The data that we are using is just a rough estimate and standard, but DOES NOT take into account potential disorders such as PCOS, PMDD, and other regulatory issues. We hope in the future we can work towards implementing such features in our app as well.")
                    .font(.custom("Verdana", size: 15))
                Text ("All the videos in this app are created by amazing youtube fitness influencers. If you like their workouts shown in this app, we highly suggest you look for more within their channel! ")
                    .font(.custom("Verdana", size: 15))
                
                Text ("In terms of fitness, please remmember that your body does not need to look like the fitness influencers. You are an entirely different person and remember that you are always beautiful.")
                    .font(.custom("Verdana", size: 15))
                Text ("PLEASE PLEASE PLEASE remember to take rest days as well, they are equally as important as working out! Take care of your body and listen to its needs. :)")
                    .font(.custom("Verdana", size: 15))

            }
            .padding(20.0)
            .foregroundColor(Color(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196))

        }
    }
}
#Preview {
    disclaimers()
}
