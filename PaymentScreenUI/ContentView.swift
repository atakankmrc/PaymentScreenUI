//
//  ContentView.swift
//  PaymentScreenUI
//
//  Created by Atakan Kömürcü on 19.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var width = UIScreen.main.bounds.width
    
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                Rectangle()
                    .frame(width: width, height: 300)
                    .foregroundColor(.blue)
                    .cornerRadius(30)
                    .shadow(color: .blue, radius: 50, y:  7)
                
                Spacer(minLength: 0)
            }
            
            VStack {
                Text("Payment Method")
                    .fontWeight(.bold)
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(.top)
                    .padding(.bottom)
                
                HStack {
                    Circle()
                        .stroke(Color.white, lineWidth: 3)
                        .frame(width: 20, height: 20)
                        .overlay {
                            Circle()
                                .fill(.white)
                                .frame(width: 10, height: 10)
                        }
                    
                    
                    Rectangle()
                        .frame(width: width * 0.25, height: 1)
                        .foregroundColor(.white)
                    
                    Circle()
                        .stroke(Color.white, lineWidth: 3)
                        .frame(width: 20, height: 20)
                    
                    Rectangle()
                        .frame(width: width * 0.25, height: 1)
                        .foregroundColor(.white)
                    
                    Circle()
                        .stroke(Color.white, lineWidth: 3)
                        .frame(width: 20, height: 20)
                }
                
                HStack(alignment: .center, spacing: width * 0.18) {
                    Text("Payment")
                        .foregroundColor(.white)
                    
                    Text("Shipping")
                        .foregroundColor(.white)
                    
                    Text("Review")
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
