//
//  HomeView.swift
//  JobFinderApp
//
//  Created by Admin on 26/3/25.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        VStack {
            let offsets = [-15, -80, -145]
            
            ForEach(offsets, id: \.self) { offset in
                squareRow
                    .offset(x: CGFloat(offset))
            }
            
            Spacer()
            
            VStack(alignment: .center) {
                homeText
                startButton
            }
        }.safeAreaPadding(.bottom)
            .safeAreaPadding(.top)
    }
}

var homeText: some View {
    VStack {
        Group {
            Text("GET YOUR\nDREAM JOB")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            Text("Explore thousands of opportunities, connect with top companies, and apply effortlessly!")
                .multilineTextAlignment(.center)
        }
    }
}

var squareRow: some View {
    HStack {
        ForEach(1..<10, id: \.self) { _ in
            squareView
        }
    }
}

var squareView: some View {
    let square = Rectangle().clipShape(RoundedRectangle(cornerRadius: 10))
    return square
        .foregroundStyle(Color.gray)
        .frame(minWidth: 130, maxHeight: 130)
}

var startButton: some View {
    Button(action: {}) {
        Text("Start Now")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
            .frame(maxWidth: .infinity, minHeight: 50)
    }
}

#Preview {
    HomeView()
}
