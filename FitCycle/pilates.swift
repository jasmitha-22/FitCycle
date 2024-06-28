//
//  pilates.swift
//  FitCycle
//
//  Created by Jasmitha Gourabathini on 6/27/24.
//

import Foundation

import SwiftUI
import WebKit

struct pilates: View {
    var body: some View {
        NavigationStack{
        ZStack{
            Color(red: 1, green: 0.8705882352941177, blue: 0.8705882352941177)
                .ignoresSafeArea()
            VStack{
                Text("Level: Gentle")
                    .font(.custom("PlaywriteNGModern-Regular", size: 20))
                    .padding(.horizontal, 110.0)
                    .padding(.vertical, 5.0)
                    .background(Rectangle()
                        .foregroundColor(Color(red: 0.9490196078431372, green: 0.7607843137254902, blue: 0.8352941176470589)))
                    .cornerRadius(15)
                WebView(urlString: "https://www.youtube.com/embed/NyP_waVgL1w?si=j1KSUKEPyeRgDyY_")
                    .frame(width:350, height:180.0)
                Text("Level: Intermediate")
                    .font(.custom("PlaywriteNGModern-Regular", size: 20))
                    .padding(.horizontal, 80.0)
                    .padding(.vertical, 5.0)
                    .background(Rectangle()
                        .foregroundColor(Color(red: 0.9490196078431372, green: 0.7607843137254902, blue: 0.8352941176470589)))
                    .cornerRadius(15)
                WebView(urlString: "https://www.youtube.com/embed/sqh_EjMteu8?si=H5HVuvIL3BOnSxJi")
                    .frame(width:350, height:180)
                Text("Level: Advanced")
                    .font(.custom("PlaywriteNGModern-Regular", size: 20))
                    .padding(.horizontal, 90.0)
                    .padding(.vertical, 5.0)
                    .background(Rectangle()
                        .foregroundColor(Color(red: 0.9490196078431372, green: 0.7607843137254902, blue: 0.8352941176470589)))
                    .cornerRadius(15)
                WebView(urlString: "https://www.youtube.com/embed/zdw1V-IBekc?si=wvPqzA3-LRvtIC3L")
                    .frame(width:350, height:180)
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
    pilates()
}
