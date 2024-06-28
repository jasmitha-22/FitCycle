//
//
//  follicular .swift
//  FitCycle
//
//  Created by Zahra Moosani on 6/25/24.
//

import SwiftUI
import WebKit

struct ovulatory: View {
    var body: some View {
        NavigationStack{
        ZStack{
            Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177)
                .ignoresSafeArea()
            VStack{
                Text("The ovulatory (3) part of the menstrual cycle lasts 12-24 hours, and that is when you are most fertile, and you will feel energetic and be able to tolerate higher intensity workouts such as running, HIIT workouts, and sculpt yoga  Watch the video below for a guided workout!")
                    .font(.custom("PlaywriteNGModern-Regular_Light", size: 15))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(height: 230.0)
                
                WebView(urlString: "https://www.youtube.com/embed/2xNcUjKLZto?si=gVqQj1hOjxHXK-fO")
                    .frame(width:350, height:200)
                    .padding()
                ZStack{
                    VStack{
                        VStack (alignment: .leading, spacing: 20){
                            NavigationLink(destination: running()) {
                                Text ("running")
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
                            NavigationLink(destination: hiit()) {
                                Text ("HIIT")
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
                            NavigationLink(destination: sculptYoga()) {
                                Text ("sculpt yoga")
                                    .padding(.bottom, 2.0)
                                    .padding([.leading, .trailing], 5.0)
                            }
                            .buttonStyle(.borderedProminent)
                            .buttonBorderShape(.capsule)
                            .tint(.init(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196))
                            .font(.custom("Verdana", size: 20))
                            .foregroundColor(Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177))
                        }
                        .padding(.trailing, 150)
                        
                        VStack {
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
                        .padding(.top, 20.0)
                    }
                    Image("Leavess")
                        .padding(.leading, 200.0)
                        .padding(.top, 155.0)
                    
                        .scaledToFit()
                    
                }
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
ovulatory()



}




