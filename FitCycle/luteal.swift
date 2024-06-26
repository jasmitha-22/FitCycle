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
        ZStack{
            Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177)
                .ignoresSafeArea()
            VStack{
                Text("The luteal part of the cycle lasts 12-14 days, and during the phase (4), your energy levels will feel depleted. In addtion, you'll most likely feel fatigued and groggy as a defult on most days of this phase. Some great exercises to try are gentle yoga, low-intensity walks in nature and barre. Watch the video below for a guided workout!")
                    .font(.body)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding()
                    .lineLimit(20)
                WebView(urlString: "https://www.youtube.com/watch?v=8_rWGlPGgrE&list=PLDP0nZqyVEmUDzEp60y97GEeGwwogX5MZ&index=1")
                    .frame(width:300, height:300)
                    .padding()
                Image("Hey")
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
luteal()



}



