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
                        .frame(width:300, height:300)
                        .padding()
                Image("cutie")
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
    menstrual_()
}
