//
//  ContentView.swift
//  vorobei_3
//
//  Created by Raman Liukevich on 05/12/2024.
//

import SwiftUI

struct ContentView: View {
    @State var onTap: Bool = false

    var body: some View {
        HStack(spacing: 0) {
            Button {
                withAnimation(.bouncy) {
                    onTap.toggle()
                } completion: {
                     onTap = false
                }

            } label: {
                HStack(spacing: 0) {

                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: onTap ? 50 : 0, height: onTap ? 50 : 0)

                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 50, height: 50)

                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: onTap ? 0.5 : 50, height: onTap ? 0.5 : 50)

                }
                .foregroundStyle(.tint)
            }
        }
    }
}

#Preview {
    ContentView()
}
