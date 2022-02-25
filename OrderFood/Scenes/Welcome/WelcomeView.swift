//
//  WelcomeView.swift
//  OrderFood
//
//  Created by Leandro Hernandez on 18/2/22.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.ui.cream01.edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                }
                .background(
                    Image.ui.welcomeBackgroundFood
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geometry.size.width)
                )
              
                VStack {
                    Spacer()
                        .frame(height: 32)
                    Image.ui.welcomeChef
                        .resizable(resizingMode: .stretch)
                        .scaledToFit()
                        .frame(
                            width: abs(geometry.size.width-40),
                            height: abs(geometry.size.height*0.6)
                        )
                    Spacer()
                }
                VStack(alignment: .center, spacing: 0, content: {
                    Spacer()
                    Spacer()
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .overlay(content: {
                            Path() { path in
                                path.move(to: CGPoint(x: 0, y: 50))
                                path.addQuadCurve(
                                    to: CGPoint(x: geometry.size.width, y: 50),
                                    control: CGPoint(x: geometry.size.width/2, y: -20)
                                )
                                path.closeSubpath()
                            }
                            .fill(Color.ui.white)
                        })
                    VStack(alignment: .center, spacing: 16, content: {
                        Spacer()
                            .frame(height: 8)
                        WelcomeTitleView()
                        Text("Our job is to filling your tummy with delicious food and fast delivery.")
                            .foregroundColor(Color.ui.gray02)
                            .multilineTextAlignment(.center)
                            .lineLimit(3)
                            .padding([.horizontal], 32)
                        Spacer()
                        NavigationLink(destination: MainView()) {
                            Text("Continue")
                                .font(.headline)
                        }
                        .buttonStyle(MainButtonStyle())
                        Spacer()
                    })
                    .frame(
                        width: geometry.size.width,
                        height: geometry.size.height * 0.4
                    )
                    .background(Color.ui.white)
                })
            }
            .navigationBarHidden(true)
        }
    }
}

fileprivate struct WelcomeTitleView: View {
    var body: some View {
        Text("\(Text("The Fastest In Delivery").foregroundColor(Color.ui.black)) \(Text("Food").foregroundColor(Color.ui.red))")
            .font(.largeTitle)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .lineLimit(2)
            .padding([.horizontal], 16)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
