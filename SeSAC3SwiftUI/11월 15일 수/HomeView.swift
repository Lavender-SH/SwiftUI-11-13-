//
//  HomeView.swift
//  SeSAC3SwiftUI
//
//  Created by 이승현 on 11/15/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        ScrollView {
            VStack {
                ScrollView(.horizontal) {
                    LazyHStack {
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                    }
                }
                ScrollView(.horizontal) {
                    LazyHStack {
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                    }
                }
                ScrollView(.horizontal) {
                    LazyHStack {
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                    }
                }
                ScrollView(.horizontal) {
                    LazyHStack {
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
