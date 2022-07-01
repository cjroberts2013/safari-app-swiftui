//
//  VideoPlayerView.swift
//  Safari-app-swiftui
//
//  Created by Charles Roberts on 6/30/22.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var fileName: String
    var videoTitle: String
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: fileName, fileFormat: "mp4")) {

            }
            .overlay (
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
            )
        }
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(fileName: "lion", videoTitle: "Lion")
    }
}
