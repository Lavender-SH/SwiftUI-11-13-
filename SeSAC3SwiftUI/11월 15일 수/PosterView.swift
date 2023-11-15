//
//  PosterView.swift
//  SeSAC3SwiftUI
//
//  Created by 이승현 on 11/15/23.
//
/*
 ScrollView
 LazyVStack: 화면 밖에 있는 리소스까지 미리 로드하지 않음
 VStack: 화면 밖에 있는 리소스까지 미리 로드 해버림
 상황에 따라 사용해야함.
 예를 들어 화면 밖에 컨텐츠가 정말 조금 밖에 없다면 굳이? LazyVStack사용하지 않아도 되지 않을까?
 -> 최적화
 List
 AsyncImage (iOS15)
 */
import SwiftUI

struct PosterView: View {
    @State private var isPresented = false
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack {
                ForEach(0..<50) { item in
                    AsyncImageView()
                        .frame(width: 100, height: 100)
                        .onTapGesture {
                            isPresented.toggle()
                        }
                }
            }
            .frame(maxWidth: .infinity)
        }
        .background(.gray)
        .contentMargins(100, for: .scrollIndicators)
        .sheet(isPresented: $isPresented, content: {
            CategoryView()
        })
    }
}


struct AsyncImageView: View {
    let url = URL(string: "https://picsum.photos/200")
    
    var body: some View {
        AsyncImage(url: url) { data in
            switch data {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .frame(width: 100, height: 100)
                    .scaledToFit()
                    .clipShape(Circle())
                    .shadow(radius: 10, x: 10, y: 10)
            case .failure(_):
                Image(systemName: "person")
            @unknown default:
                Image(systemName: "person")
            }
        }
        
//        AsyncImage(url: url) { image in
//            image
//                .frame(width: 200, height: 200)
//                .scaledToFit()
//                .clipShape(Circle())
//                .shadow(radius: 10, x:30, y:10)
////                .background(.yellow)
//        } placeholder: {
//            Image(systemName: "star")
//        }

    }
}

#Preview {
    PosterView()
}








/*
 struct AsyncImageView: View {
     
     let url = URL(string: "http://picsum.photos/100")
     
     var body: some View {
         AsyncImage(url: url) { data in
             switch data {
             case .empty:
                 ProgressView()
             case .success(let image):
                 image
                     .scaledToFit()
                     .frame(width: 100, height: 100)
                     .clipShape(RoundedRectangle(cornerRadius: 20))
             case .failure(_):
                 Image(systemName: "star")
             @unknown default:
                 Image(systemName: "star")
             }
         }
     }
 }

 */
