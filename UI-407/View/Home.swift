//
//  Home.swift
//  UI-407
//
//  Created by nyannyan0328 on 2021/12/29.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView{
            
            ScrollView(.vertical, showsIndicators: false) {
                
                
                VStack{
                    
                    
                    ForEach(1...6,id:\.self){index in
                        
                        GeometryReader{proxy in
                            
                            
                            let size = proxy.size
                            
                            Image("p\(index)")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: size.width, height: size.height)
                                .cornerRadius(10)
                        
                            
                            
                        }
                        .frame(height: 300)
                    }
                    
                    
                   
                }
                .padding()
                
                
                
            }
            .navigationTitle("Splash Screen")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
