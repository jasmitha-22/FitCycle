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
        ZStack{
            Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177)
                .ignoresSafeArea()
            VStack{
                Text("The ovulatory (4) part of the menstrual cycle lasts 12-24 hours, and that is when you are most fertile, and levels will feel depleted.  Watch the video below for a guided workout!")
                    .font(.custom("PlaywriteNGModern-Regular_Light", size: 15))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .frame(width:300, height:300)
                
                WebView(urlString: "https://www.youtube.com/watch?v=2xNcUjKLZto")
                    .frame(width:300, height:300)
                    .padding()
                
                Image("Leavess")
                    .padding(.leading, 200.0)
                    .scaledToFit()
           
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




