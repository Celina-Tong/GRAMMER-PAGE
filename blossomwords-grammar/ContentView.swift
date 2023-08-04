//
//  ContentView.swift
//  blossomwords-grammar
//
//  Created by Celina Tong on 8/3/23.
//
//               (Color("YELLOW"))


import SwiftUI

struct ContentView: View { //36
    @State private var textTitle = ""
    @State private var secondTextTitle = ""
    @State private var thirdTextTitle = ""

    
    var body: some View { //34
        NavigationView { //24
            ZStack{
                (Color("YELLOW"))
                    .ignoresSafeArea()
                    .overlay(
                VStack { //22
                    Text("Grammer")
                        .font(.title)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                    Group{
                        Text(textTitle)
                        Button("Prompt Formula") {
                            textTitle = ("Subject-Verb: 我吃。 Wǒ chī.")
                            
                        }
                        .fontWeight(.bold)
                        .font(.title2)
                        .foregroundColor(Color.black)
                        .padding()
                        .background(Color("PINK"))
                        .cornerRadius(15)
                        
                        Text(secondTextTitle)
                        Button("English Translation") {
                            secondTextTitle = ("I eat.")
                        }
                        .fontWeight(.bold)
                        .font(.headline)
                        .foregroundColor(Color.black)
                        .padding()
                        .background(Color("PINK"))
                        .cornerRadius(15)
                        
                        Text(thirdTextTitle)
                        Button("Learn More About The Prompt") {
                            thirdTextTitle = ("For many basic sentences in Chinese, it’s similar to English’s format. Subject: 我 (wǒ) = I & Verb: 吃(chī) = Eat.")

                        }
                        .multilineTextAlignment(.center)
                        .fontWeight(.bold)
                        .font(.headline)
                        .foregroundColor(Color.black)
                        
                        NavigationLink(destination: CHAT()) { //20
                            Text("Try it in a conversation")
                                .font(.title3)
                                .foregroundColor(Color.black)
                            
                        }
                    }
                    .padding()
                }
                )
            }
        }
    }

        struct ContentView_Previews: PreviewProvider { //32
            static var previews: some View { //30
                ContentView()
            }
            
        }
        
    }

