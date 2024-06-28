//
//  CustomListRowView.swift
//  Hike-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/28/24.
//

import SwiftUI

struct CustomListRowView: View {
    @State var icon: String
    @State var  iconBackgroundColor: Color
    @State var  title: String
    @State var  trailingText: String
    @State var  trailingTextURL: String? = nil
    
    var body: some View {
        LabeledContent{
            if(trailingTextURL==nil){
                Text(trailingText)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            }
            else{
                Link(trailingText, destination: URL(string: trailingTextURL!)!)
            }
        } label:{
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30,height: 30)
                        .foregroundColor(iconBackgroundColor)
                    
                    Image(systemName: icon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(title)
            }
        }
    }
}

#Preview {
    ZStack {
        Color(Color.customGreenLight)
            .ignoresSafeArea()
        CustomListRowView(
            icon: "apps.iphone",
            iconBackgroundColor: .blue,
            title: "Application",
            trailingText: "Hike")
        .padding(.horizontal)
    }
    
    
}
