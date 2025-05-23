import SwiftUI

struct ContentView: View {
    
    var videos: [Video] = VideoList.topTwelve
    
    var body: some View {
        
        NavigationView {
            List(videos) { video in
                
                HStack{
                    Image(video.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 90)
                        .cornerRadius(8)
                    
                    Spacer()
                        .frame(width: 16)
                    
                    VStack(alignment: .leading) {
                        
                        Text(video.title)
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.75)
                        
                        Spacer().frame(height: 5)
                        
                        Text(video.uploadDate)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }.navigationBarTitle("Videos")
            }
        }
    }
}



#Preview {
    ContentView(videos:  VideoList.topTwelve)
}

