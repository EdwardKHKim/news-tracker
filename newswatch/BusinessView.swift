//
//  BusinessView.swift
//  newswatch
//
//  Created by Edward Kim on 2020-08-23.
//  Copyright © 2020 Edward Kim. All rights reserved.
//

import SwiftUI
import SwiftyJSON
import SDWebImageSwiftUI
import WebKit

struct BusinessView: View {
    init() {
        UITableView.appearance().separatorStyle = .none
    }
    
    @State var showCountryView = false
    
    @ObservedObject var list = getBusinessData()
    var body: some View {
        NavigationView {
            List(list.data) {i in
                
                NavigationLink(destination:
                    businessWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
                    ) {
                    HStack(spacing: 15) {
                        VStack(alignment: .leading, spacing: 10) {
                            if i.urlToImage != "" {
                                WebImage(url: URL(string: i.urlToImage)!, options: .highPriority, context: nil).resizable().frame(width: 375, height: 235).cornerRadius(10)
                            }
                            Text(i.title).fontWeight(.heavy)
                            Text(i.description).lineLimit(2)
                        }
                    }
                    .padding(.vertical, 15)
                }
            }
            .navigationBarTitle("Business")
            .navigationBarItems(trailing: Button(action: {
                print("Country List")
                self.showCountryView = true
            }) {
                Image("country")
            })
        }
        .sheet(isPresented: $showCountryView) {
            CountryView(showCountryView: self.$showCountryView)
        }
    }
}

struct BusinessView_Previews: PreviewProvider {
    static var previews: some View {
        BusinessView()
    }
}

struct businessDataType: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

class getBusinessData: ObservableObject {
    @Published var data = [businessDataType]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=ca&category=business&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
        let url = URL(string: source)!
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) {
            (data, _, error) in
            if error != nil {
                print((error?.localizedDescription)!)
                return
            }
            
            let json = try! JSON(data: data!)
            
            for i in json["articles"] {
                let title = i.1["title"].stringValue
                let description = i.1["description"].stringValue
                let url = i.1["url"].stringValue
                let urlToImage = i.1["urlToImage"].stringValue
                let id = i.1["publishedAt"].stringValue
                
                DispatchQueue.main.async {
                    self.data.append(businessDataType(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                }
            }
        }.resume()
    }
}

struct businessWebView: UIViewRepresentable {
    
    var url: String
    
    func makeUIView(context: UIViewRepresentableContext<businessWebView>) -> WKWebView {
        let view = WKWebView()
        view.load(URLRequest(url: URL(string: url)!))
        return view
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<businessWebView>) {
        
    }
}
