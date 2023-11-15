//
//  StartView.swift
//  SeSAC3SwiftUI
//
//  Created by 이승현 on 11/15/23.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        TabView {
            Text("1") // HomeView()
                .tabItem {
                    Text("홈 화면")
                    Image(systemName: "house")
                }
            Text("2") // CategoryView()
                .tabItem {
                    Text("검색 화면")
                    Image(systemName: "pencil")
                }
            Text("3") // RenderView()
                .tabItem {
                    Text("설정 화면")
                    Image(systemName: "star")
                }
        }
    }
}

#Preview {
    StartView()
}
