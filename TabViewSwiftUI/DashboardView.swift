//
//  DashboardView.swift
//  TabViewSwiftUI
//
//  Created by Bhushan Borse DXC on 12/04/24.
//

import SwiftUI

struct DashboardView: View {
    
    @State private var selection = 0
    
    struct Ocean: Identifiable {
        let name: String
        let id = UUID()
    }
    
    private var Oceans = [
        Ocean(name: "Pacific"),
        Ocean(name: "Atlantic"),
        Ocean(name: "Indian"),
        Ocean(name: "Southern"),
        Ocean(name: "Arctic")
    ]

    var body: some View {
        NavigationView(content: {
            ZStack (alignment: .topLeading){
                TabView (selection: $selection){
                    List(Oceans){
                        Text($0.name)
                    }
//                    List(1...50, id: \.self) { index in
//                        NavigationLink(
//                            destination: Text("Item #\(String(describing: index)) Details")) {
//                                Text("Cell index \(String(describing: index))")
//                                    .font(.system(size: 20, weight: .bold, design: .rounded))
//                            }
//                    }
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(0)
                    
                    Text("Bookmark Tab")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .tabItem {
                            Image(systemName: "bookmark.circle.fill")
                            Text("Bookmark")
                        }
                        .tag(1)
                    
                    Text("Video Tab")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .tabItem {
                            Image(systemName: "video.circle.fill")
                            Text("Video")
                        }
                        .tag(2)
                    
                    Text("Profile Tab")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .tabItem {
                            Image(systemName: "person.crop.circle")
                            Text("Profile")
                        }
                        .tag(3)
                        .onAppear(perform: {
                            UITabBar.appearance().barTintColor = .white
                        })
                }
                
                
                .navigationTitle("Tabbar View")
//                Button {
//                    selection = (selection + 1) % 4
//                } label: {
//                    Text("Next")
//                        .font(.system(.headline, design: .rounded))
//                        .padding()
//                        .foregroundColor(.white)
//                        .background(.red)
//                        .cornerRadius(10.0)
//                        .frame(maxWidth: .infinity, alignment: .topTrailing)
//                        .padding()
//                }
            }
            
        })
    }
}

#Preview {
    DashboardView()
}
