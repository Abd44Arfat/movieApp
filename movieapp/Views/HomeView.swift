import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                       Spacer()
                       Image("appLogo")
                           .resizable()
                           .scaledToFit()
                           .frame(height: 100)
                       Spacer()
                   }
                  

        
                // عنصر عرض فيلم Luca
                ZStack(alignment: .bottomLeading) {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color("BannerColor")) // لون خلفية داكنة
                        .frame(height: 165)

                    HStack {
                        Spacer()
                        Image("luca") // يجب أن تكون مضافة في Assets
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                            .padding(.trailing,20)

                   
                    }

                    Button(action: {
                        print("Play Luca")
                    }) {
                        Image(systemName: "play.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .padding()
                    }
                }
                .padding(.horizontal)
              
                
                // عناصر إضافية ستُضاف لاحقاً مثل Channels وNew Movies
                CustomTitleView(title:"channel")
                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 10) {
                                        // أضف أسماء الصور من الأصول
                                        ChannelItemView(imageName: "marvel")
                                        ChannelItemView(imageName: "marvel")
                                        ChannelItemView(imageName: "marvel")
                                        ChannelItemView(imageName: "marvel")
                                    }
                                    .padding(.horizontal)
                                }
             
                CustomTitleView(title: "New for You")

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        MovieCardView(imageName: "agustu")
                        MovieCardView(imageName: "luca")
                        MovieCardView(imageName: "luca")
                        MovieCardView(imageName: "luca")
                    }
                    .padding(.horizontal)
                }

            }
       
        }
    }
}
#Preview {
    
    HomeView()
    
}
import SwiftUI

struct ChannelItemView: View {
    var imageName: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.white)
                .frame(width: 120, height: 70)
                .shadow(radius: 2)

            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 110, height: 80)
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 5)
    }
}
import SwiftUI

struct MovieCardView: View {
    var imageName: String

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color("BannerColor"))
                .frame(width: 300, height: 165)

            HStack {
                Spacer()
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .padding(.trailing, 20)
            }

        
        }
        .padding(.vertical, 5)
    }
}

