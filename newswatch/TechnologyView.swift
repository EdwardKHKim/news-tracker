//
//  TechnologyView.swift
//  newswatch
//
//  Created by Edward Kim on 2020-08-23.
//  Copyright © 2020 Edward Kim. All rights reserved.
//

import SwiftUI
import SwiftyJSON
import SDWebImageSwiftUI
import WebKit

struct TechnologyView: View {

    init() {
        UITableView.appearance().separatorStyle = .none
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.red]
    }
    
    @State var showCountryView = false
    
    @ObservedObject var list = getTechnologyData()
    var body: some View {
        NavigationView {
            List(list.data) {i in
                NavigationLink(destination:
                    technologyWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
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
            .navigationBarTitle("Technology")
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

struct TechnologyView_Previews: PreviewProvider {
    static var previews: some View {
        TechnologyView()
    }
}

struct technologyDataType: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

class getTechnologyData: ObservableObject {
    @Published var data = [technologyDataType]()
    
    let countries = ["ae", "ar", "at", "au", "be", "bg", "br", "ca", "ch", "cn", "co", "cu", "cz", "de", "eg", "fr", "gb", "gr", "hk", "hu", "id", "ie", "il", "in", "it", "jp", "kr", "lt", "lv", "ma", "mx", "my", "ng", "nl", "no", "nz", "ph", "pl", "pt", "ro", "rs", "ru", "sa", "se", "sg", "si", "sk", "th", "tr", "tw", "ua", "us", "ve", "za"]
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=ca&category=technology&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(technologyDataType(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                }
            }
        }.resume()
    }
}

struct technologyWebView: UIViewRepresentable {
    
    var url: String
    
    func makeUIView(context: UIViewRepresentableContext<technologyWebView>) -> WKWebView {
        let view = WKWebView()
        view.load(URLRequest(url: URL(string: url)!))
        return view
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<technologyWebView>) {
        
    }
}
