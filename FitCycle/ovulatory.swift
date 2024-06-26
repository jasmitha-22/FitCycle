
//
//  ovulatory.swift
//  FitCycle
//
//  Created by Zahra Moosani on 6/25/24.
//
import SwiftUI
struct ovulatory: View {
    var body: some View {
        
       
        ZStack { Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177)
                .ignoresSafeArea()
            
            VStack { Text("Ovulatory")
                    .font(.title)
                    .padding(.all, 37.0)
                Spacer()
                
                Text("Lasts 12-24 hours, signs of ovulation include more slippery, wet cervical mucus.")
                    .font(.headline)
                    .padding(.all, 30)
                    .lineLimit(5)
                
                
                
            }
            
        }
    }
}
#Preview {
    ovulatory()
}


