//
//  luteal.swift
//  FitCycle
//
//  Created by Zahra Moosani on 6/25/24.
//
import SwiftUI
import WebKit
struct luteal: View {
    var body: some View {
        
        
        
        ZStack { Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177)
                .ignoresSafeArea()
           
          
            VStack { Text("Luteal")
                    .font(.title)
                    .padding(.all, 37.0)
                Spacer()
                Text("Recomended workout...")
                    .font(.headline)
                        .padding(.all, 37.0)
                    Spacer()
                    
                Text(" Lasts 12-14 days, characterized by fatigue, groggness, enflamation. ")
                    .font(.headline)
                    .padding(.all, 30)
                    .lineLimit(5)
                
                
                
            
                
                
            }
        }
    }
    
   
    }
#Preview {
    luteal()
}


