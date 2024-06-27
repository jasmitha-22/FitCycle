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
                    .frame(width:300, height:300)
                    .padding()
                Image("happy")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
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
