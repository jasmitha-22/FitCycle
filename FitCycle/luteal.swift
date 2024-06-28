//
//
//  follicular .swift
//  FitCycle
//
//  Created by Zahra Moosani on 6/25/24.
//

import SwiftUI
import WebKit

struct luteal: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177)
                    .ignoresSafeArea()
                VStack{
                    Text("The luteal part of the cycle lasts 12-14 days, and during the phase (4), your energy levels will feel depleted. In addtion, you'll most likely feel fatigued and groggy as a defult on most days of this phase. Some great exercises to try are gentle yoga, pilates, relaxing walks in nature and barre. Watch the video below for a guided workout!")
                        .font(.custom("PlaywriteNGModern-Regular_Light", size: 15))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .frame(width:350, height:250)
                    
                    WebView(urlString: "https://www.youtube.com/watch?v=8_rWGlPGgrE&list=PLDP0nZqyVEmUDzEp60y97GEeGwwogX5MZ&index=1")
                        .frame(width:350, height:200)
                    HStack{
                        VStack (spacing: 20){
                            NavigationLink(destination: barre()) {
                                Text ("barre")
                                    .padding(.bottom, 2.0)
                                    .padding([.leading, .trailing], 5.0)
                                
                            }
                            .buttonStyle(.borderedProminent)
                            .buttonBorderShape(.capsule)
                            .tint(.init(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196))
                            .font(.custom("Verdana", size: 20))
                            .foregroundColor(Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177))
                            //                       Spacer()
                            //                            .frame(width: 10.0)
                            NavigationLink(destination: pilates()) {
                                Text ("pilates")
                                    .padding(.bottom, 2.0)
                                    .padding([.leading, .trailing], 5.0)
                                
                            }
                            .buttonStyle(.borderedProminent)
                            .buttonBorderShape(.capsule)
                            .tint(.init(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196))
                            .font(.custom("Verdana", size: 20))
                            .foregroundColor(Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177))
                            
                            //                        Spacer()
                            //                            .frame(width: 10.0)
                            NavigationLink(destination: yoga()) {
                                Text ("yoga")
                                    .padding(.bottom, 2.0)
                                    .padding([.leading, .trailing], 5.0)
                            }
                            .buttonStyle(.borderedProminent)
                            .buttonBorderShape(.capsule)
                            .tint(.init(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196))
                            .font(.custom("Verdana", size: 20))
                            .foregroundColor(Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177))
                        }
                        Image("Hey")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.bottom, 15.0)
                        
                    }
                    .padding(.leading, 25.0)
                    
                    NavigationLink(destination: finish()) {
                        Text ("Finish Workout")
                            .padding(.bottom, 2.0)
                            .padding([.leading, .trailing], 90.0)
                    }
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.capsule)
                    .tint(.init(red: 0.9294117647058824 ,green: 0.5215686274509804, blue: 0.43137254901960786))
                    .font(.custom("Verdana", size: 20))
                    .foregroundColor(Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177))
                }
            }

        }
    }
        struct WebView: UIViewRepresentable {
            let urlString: String
            func makeUIView(context: Context) -> WKWebView {
                guard let url = URL(string: urlString) else {
                    return WKWebView()
                }
                let request = URLRequest(url: url)
                let webView = WKWebView()
                webView.load(request)
                return webView
            }
            func updateUIView(_ uiView: WKWebView, context: Context) {}
    }
}



#Preview {
luteal()



}




