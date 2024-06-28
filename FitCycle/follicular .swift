//
//  follicular .swift
//  FitCycle
//
//  Created by Zahra Moosani on 6/25/24.
//

import SwiftUI
import WebKit

struct follicular: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177)
                    .ignoresSafeArea()
                VStack{
                    Text("During the Follicular Phase (2), your energy levles will rise, but your stamina can still be low. Some great exercises to try are light hiking, cardio, or strength training. Watch the video below for a guided workout!")
                        .font(.custom("PlaywriteNGModern-Regular_Light", size: 15))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding()
                    WebView(urlString: "https:www.youtube.com/embed/_9sMkE-1VBI?si=qhPj-gfbWIUlY1v7")
                        .frame(width:350, height:200)
                        .padding()
                    Text("Here are some other reccomended workouts!")
                        .font(.custom("PlaywriteNGModern-Regular_Light", size: 15))
                    
                    HStack{
                        VStack (spacing: 20){
                            NavigationLink(destination: hiking()) {
                                Text ("hiking")
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
                            NavigationLink(destination: cardio()) {
                                Text ("cardio")
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
                            NavigationLink(destination: strength()) {
                                Text ("strength training")
                                    .padding(.bottom, 2.0)
                                    .padding([.leading, .trailing], 5.0)
                            }
                            .buttonStyle(.borderedProminent)
                            .buttonBorderShape(.capsule)
                            .tint(.init(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196))
                            .font(.custom("Verdana", size: 20))
                            .foregroundColor(Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177))
                        }
                        Image("happy")
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
    follicular()
}
