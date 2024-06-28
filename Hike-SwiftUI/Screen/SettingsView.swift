//
//  SettingsView.swift
//  Hike-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/28/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        
        // MARK: - SECTION HEADER
        List {
            Section{
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80,weight: .black))
                    
                    
                    VStack {
                        
                        Text("Hike")
                            .font(.system(size: 66,weight: .black))
                        
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    
                    
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80,weight: .black))
                    
                    Spacer()
                    
                    
                }
                
                
                
                .foregroundStyle(
                    LinearGradient(colors: [
                        .customGreenLight,
                        .customGreenMedium,
                        .customGreenDark
                    ], startPoint: .top, endPoint: .bottom)
                )
                .padding(.top, 8)
                
                VStack(spacing:8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                    .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app."
                    )
                    .font(.footnote)
                    .italic()
                    
                    Text("Dust off the boots! It's time for a walk")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
          
                    
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
              
            }
            .listRowSeparator(.hidden)
                
                
                
                
                // MARK: - SECTION: ICONS
                
                
                // MARK: - SECTION: ABOUT
            
            Section(
                header:Text("About The App"),
                footer: HStack{
                    Spacer()
                    Text("Copyright All right reserved.")
                    Spacer()
                }
                    .padding(.vertical, 8)
            
            ){
                
                CustomListRowView(
                    icon: "apps.iphone",
                    iconBackgroundColor: .blue,
                    title: "Application",
                    trailingText: "Hike")
                
                CustomListRowView(
                    icon: "apps.iphone",
                    iconBackgroundColor: .red,
                    title: "Compatibility",
                    trailingText: "iOS, iPadOS")
                
                CustomListRowView(
                    icon: "swift",
                    iconBackgroundColor: .orange,
                    title: "Technology",
                    trailingText: "Swift")
                
                CustomListRowView(
                    icon: "gear",
                    iconBackgroundColor: .purple,
                    title: "Version",
                    trailingText: "1.0")
                
                CustomListRowView(
                    icon: "ellipsis.curlybraces",
                    iconBackgroundColor: .teal,
                    title: "Developer",
                    trailingText: "Mahan Kheirollahi")
                
                CustomListRowView(
                    icon: "paintpalette",
                    iconBackgroundColor: .red,
                    title: "Designer",
                    trailingText: "Robert Petras")
                
                
                CustomListRowView(
                    icon: "network",
                    iconBackgroundColor: .green,
                    title: "Linkedin",
                    trailingText: "My Linkedin",
                    trailingTextURL: "https://www.linkedin.com/in/mahankheirollahi/"
                )
                
                
            }
            }
            
        }
    
}

#Preview {
    SettingsView()
}
