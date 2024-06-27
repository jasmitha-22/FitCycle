//
//  menstrual .swift
//  FitCycle
//
//  Created by Zahra Moosani on 6/25/24.
//

import SwiftUI
import WebKit

struct menstrual_: View {
    var body: some View {

        NavigationStack {
            ZStack{
                Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177)
                        .ignoresSafeArea()
                VStack{
                    Text("During the Menstrual Phase (1) you may experience a slump in energy due to menstruation. Some exercises you can do are low-intensity aerobic ones, such as swimming, yoga, walking and cycling. Watch the video below for a guided workout!")
                        .font(.custom("PlaywriteNGModern-Regular_Light", size: 15))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding()
                    WebView(urlString: "https://www.youtube.com/embed/TKKpnSOi_rs?si=gsQnmrirJZLfYKIP")
                        .frame(width:350, height:200)
                        .padding()
                    Text("Here are some other reccomended workouts!")
                        .font(.custom("PlaywriteNGModern-Regular_Light", size: 15))
                    HStack{
                        VStack (spacing: 20){
                            NavigationLink(destination: luteal()) {
                                Text ("walking")
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
                            NavigationLink(destination: luteal()) {
                                Text ("yoga")
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
                            NavigationLink(destination: luteal()) {
                                Text ("cycling")
                                    .padding(.bottom, 2.0)
                                    .padding([.leading, .trailing], 5.0)
                            }
                            .buttonStyle(.borderedProminent)
                            .buttonBorderShape(.capsule)
                            .tint(.init(red: 0.39215686274509803 ,green: 0.3137254901960784, blue: 0.40784313725490196))
                            .font(.custom("Verdana", size: 20))
                            .foregroundColor(Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177))
                        }
                        
                        Image("cutie")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    }
                    .padding(.leading, 25.0)
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
    menstrual_()
}
