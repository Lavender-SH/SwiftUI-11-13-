//
//  TamagochiView.swift
//  SeSAC3SwiftUI
//
//  Created by 이승현 on 11/14/23.
//

import SwiftUI

struct User {
    var nickname = "고래밥"
    
    var introduce: String {
        mutating get {
            nickname = "새싹이"
            return "안녕하세요 \(nickname)입니다."
        }
        set {
        }
    }
    
    mutating func changeNick() {
        nickname = "칙촉"
        nickname = "새싹이"
    }
}

// 앱에서 UI는 Data에 의존해서 자신의 상태를 결정하게 된다

// @State: Source Of Truth: View에 대한 상태를 저장하기 위한 목적
// private: 내부 뷰의 상태관리만을 위한 변수이기 때문에 접근제어 사용
// @State: 상태 프로퍼티(State Property)

// @Binding. Derived Valud (파생된 데이터)
struct TamagotchiView: View {
    
    @State private var waterCount: Int = 0
    @State private var riceCount: Int = 0
    
    @State private var isOn: Bool = false
    @State private var inputText: String = "안녕하시오"
    
    var body: some View {
        VStack {
            
            TextField("밥알 개수 입력하기", text: $inputText)
                .padding()
                
            
             Toggle("스위치", isOn: $isOn)
                .padding(EdgeInsets(top: 0, leading: 130, bottom: 50, trailing: 130))
                
            TitleView(title: "물방울 개수", count: $waterCount)
            
            Button("물 주세요") {
                waterCount += 1
                isOn.toggle()
                print("clicked")
            }
            .padding(30)
            .background(.blue)
            .foregroundStyle(.white)
            .clipShape(.circle)
            //
            TitleView(title: "밥알 개수", count: $riceCount)
            
            // 조금 더 커스텀하게 버튼 구현 가능
            Button(action: {
                riceCount += 1
                print("123")
            }, label: {
                Text("밥")
                    .padding(30)
                    .background(.pink)
                    .foregroundStyle(.white)
                    .clipShape(Circle())
            })
            .padding()
            .background(.black)
            .clipShape(Circle())
            
        }
    }
}

#Preview {
    TamagotchiView()
}

struct TitleView: View {
    let title: String
//    @State var count: Int
    @Binding var count: Int
    
    var body: some View {
        
        HStack {
            Text("\(title): \(count)개")
                .padding()
                .background(.black)
                .foregroundStyle(.white)
                .font(.title)
                .clipShape(.capsule)
            
            Button("하위뷰 버튼") {
                count += 1
            }
        }
    }
}

struct CountUpButtonView: View {
    let count: Int = 0
    
    var body: some View {
        Button("밥알 개수") {
//            riceCount += 1
            print("clickedd")
        }
        .padding()
        .background(.blue)
        .foregroundStyle(.white)
        .clipShape(.capsule)
    }
}
