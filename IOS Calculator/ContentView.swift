//
//  ContentView.swift
//  TestProject
//
//  Created by Roshan Arun on 12/14/22.
//
 
import SwiftUI
 
struct ContentView: View {
    @EnvironmentObject var calculator: Calculator
    
    var body: some View {
        NavigationView {
 
            VStack {
                
                Text(self.calculator.display)
                    .font(.title)
                    .frame(alignment: .topLeading)
                
                HStack{
                    
                    Button {
                        self.calculator.set(value: "10")
                        
                    } label : {
                        Text("AC")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    
                    .padding(20)
                    .background(Color(.gray))
                    .clipShape(Circle())
                    
                    Button {
                        self.calculator.set(value: "11")
                    } label : {
                        Text("±")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    .padding(30)
                    .background(Color(.gray))
                    .clipShape(Circle())
                    
                    Button {
                        self.calculator.set(value: "12")
                    } label : {
                        Text("%")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    .padding(25)
                    .background(Color(.gray))
                    .clipShape(Circle())
                    
                    Button {
                        self.calculator.set(value: "13")
                    } label : {
                        Text("÷")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .padding(30)
                    .background(Color(.orange))
                    .clipShape(Circle())
                }
                
                
                HStack{
                    Button {
                        self.calculator.set(value: "7")
                    } label : {
                        Text("7")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    
                    .padding(30)
                    .background(Color(.darkGray))
                    .clipShape(Circle())
                    
                    Button {
                        self.calculator.set(value: "8")
                    } label : {
                        Text("8")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .padding(30)
                    .background(Color(.darkGray))
                    .clipShape(Circle())
                    
                    Button {
                        self.calculator.set(value: "9")
                    } label : {
                        Text("9")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .padding(30)
                    .background(Color(.darkGray))
                    .clipShape(Circle())
                    
                    Button {
                        self.calculator.set(value: "14")
                    } label : {
                        Text("×")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .padding(30)
                    .background(Color(.orange))
                    .clipShape(Circle())
                    
                }
                
                
                HStack{
                    Button {
                        self.calculator.set(value: "4")
                    } label : {
                        Text("4")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    
                    .padding(30)
                    .background(Color(.darkGray))
                    .clipShape(Circle())
                    
                    Button {
                        self.calculator.set(value: "5")
                    } label : {
                        Text("5")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .padding(30)
                    .background(Color(.darkGray))
                    .clipShape(Circle())
                    
                    Button {
                        self.calculator.set(value: "6")
                    } label : {
                        Text("6")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .padding(30)
                    .background(Color(.darkGray))
                    .clipShape(Circle())
                    
                    Button {
                        self.calculator.set(value: "15")
                    } label : {
                        Text("-")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .padding(33)
                    .background(Color(.orange))
                    .clipShape(Circle())
                    
                }
                
                
                HStack{
                    Button {
                        self.calculator.set(value: "1")
                    } label : {
                        Text("1")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    
                    .padding(33)
                    .background(Color(.darkGray))
                    .clipShape(Circle())
                    
                    Button {
                        self.calculator.set(value: "2")
                    } label : {
                        Text("2")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .padding(30)
                    .background(Color(.darkGray))
                    .clipShape(Circle())
                    
                    Button {
                        self.calculator.set(value: "3")
                    } label : {
                        Text("3")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .padding(30)
                    .background(Color(.darkGray))
                    .clipShape(Circle())
                    
                    Button {
                        self.calculator.set(value: "16")
                    } label : {
                        Text("+")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .padding(30)
                    .background(Color(.orange))
                    .clipShape(Circle())
                    
                }
                
                
                HStack{
                    Button {
                        self.calculator.set(value: "0")
                    } label : {
                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    
                    .padding(30)
                    .frame(width: 170, height: 80)
                    
                    .background(Color(.darkGray))
                    
                    .clipShape(Capsule())
                    
                    Button {
                        self.calculator.set(value: "18")
                    } label : {
                        Text(".")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .padding(37)
                    .background(Color(.darkGray))
                    .clipShape(Circle())
                    
                    Button {
                        self.calculator.set(value: "17")
                    } label : {
                        Text("=")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .padding(30)
                    .background(Color(.orange))
                    .clipShape(Circle())
                    
                }
            }
        }
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Calculator())
    }
}
