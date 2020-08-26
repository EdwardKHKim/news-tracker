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
    
    @ObservedObject var listCanada = BusinessDataCanada()
    @ObservedObject var listChina = BusinessDataChina()
    @ObservedObject var listFrance = BusinessDataFrance()
    @ObservedObject var listGermany = BusinessDataGermany()
    @ObservedObject var listIndia = BusinessDataIndia()
    @ObservedObject var listJapan = BusinessDataJapan()
    @ObservedObject var listSouthKorea = BusinessDataSouthKorea()
    @ObservedObject var listSwitzerland = BusinessDataSwitzerland()
    @ObservedObject var listUnitedKingdom = BusinessDataUnitedKingdom()
    @ObservedObject var listUnitedStates = BusinessDataUnitedStates()
    
     let countryOptions = ["ca", "cn", "fr", "de", "in", "jp", "kr", "ch", "gb", "us"]
    
    var body: some View {
        NavigationView {
            if CountryVariables.countryOption == "ca" {
                List(listCanada.data) {i in
                    NavigationLink(destination:
                        BusinessWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
                        ) {
                        HStack(spacing: 15) {
                            VStack(alignment: .leading, spacing: 10) {
                                if i.urlToImage != "" {
                                    WebImage(url: URL(string: i.urlToImage)!, options: .highPriority, context: nil).resizable().frame(width: 375, height: 230).cornerRadius(10)
                                }
                                Text(i.title).fontWeight(.heavy)
                                Text(i.description).lineLimit(2)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                }
                .navigationBarTitle("Business")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List")
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "cn" {
                List(listChina.data) {i in
                    NavigationLink(destination:
                        BusinessWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
                        ) {
                        HStack(spacing: 15) {
                            VStack(alignment: .leading, spacing: 10) {
                                if i.urlToImage != "" {
                                    WebImage(url: URL(string: i.urlToImage)!, options: .highPriority, context: nil).resizable().frame(width: 375, height: 230).cornerRadius(10)
                                }
                                Text(i.title).fontWeight(.heavy)
                                Text(i.description).lineLimit(2)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                }
                .navigationBarTitle("Business")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List")
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "fr" {
                List(listFrance.data) {i in
                    NavigationLink(destination:
                        BusinessWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
                        ) {
                        HStack(spacing: 15) {
                            VStack(alignment: .leading, spacing: 10) {
                                if i.urlToImage != "" {
                                    WebImage(url: URL(string: i.urlToImage)!, options: .highPriority, context: nil).resizable().frame(width: 375, height: 230).cornerRadius(10)
                                }
                                Text(i.title).fontWeight(.heavy)
                                Text(i.description).lineLimit(2)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                }
                .navigationBarTitle("Business")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List")
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "de" {
                List(listGermany.data) {i in
                    NavigationLink(destination:
                        BusinessWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
                        ) {
                        HStack(spacing: 15) {
                            VStack(alignment: .leading, spacing: 10) {
                                if i.urlToImage != "" {
                                    WebImage(url: URL(string: i.urlToImage)!, options: .highPriority, context: nil).resizable().frame(width: 375, height: 230).cornerRadius(10)
                                }
                                Text(i.title).fontWeight(.heavy)
                                Text(i.description).lineLimit(2)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                }
                .navigationBarTitle("Business")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List")
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "in" {
                List(listIndia.data) {i in
                    NavigationLink(destination:
                        BusinessWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
                        ) {
                        HStack(spacing: 15) {
                            VStack(alignment: .leading, spacing: 10) {
                                if i.urlToImage != "" {
                                    WebImage(url: URL(string: i.urlToImage)!, options: .highPriority, context: nil).resizable().frame(width: 375, height: 230).cornerRadius(10)
                                }
                                Text(i.title).fontWeight(.heavy)
                                Text(i.description).lineLimit(2)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                }
                .navigationBarTitle("Business")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List")
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "jp" {
                List(listJapan.data) {i in
                    NavigationLink(destination:
                        BusinessWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
                        ) {
                        HStack(spacing: 15) {
                            VStack(alignment: .leading, spacing: 10) {
                                if i.urlToImage != "" {
                                    WebImage(url: URL(string: i.urlToImage)!, options: .highPriority, context: nil).resizable().frame(width: 375, height: 230).cornerRadius(10)
                                }
                                Text(i.title).fontWeight(.heavy)
                                Text(i.description).lineLimit(2)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                }
                .navigationBarTitle("Business")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List")
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "kr" {
                List(listSouthKorea.data) {i in
                    NavigationLink(destination:
                        BusinessWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
                        ) {
                        HStack(spacing: 15) {
                            VStack(alignment: .leading, spacing: 10) {
                                if i.urlToImage != "" {
                                    WebImage(url: URL(string: i.urlToImage)!, options: .highPriority, context: nil).resizable().frame(width: 375, height: 230).cornerRadius(10)
                                }
                                Text(i.title).fontWeight(.heavy)
                                Text(i.description).lineLimit(2)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                }
                .navigationBarTitle("Business")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List")
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "ch" {
                 List(listSwitzerland.data) {i in
                     NavigationLink(destination:
                         BusinessWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
                         ) {
                         HStack(spacing: 15) {
                             VStack(alignment: .leading, spacing: 10) {
                                 if i.urlToImage != "" {
                                     WebImage(url: URL(string: i.urlToImage)!, options: .highPriority, context: nil).resizable().frame(width: 375, height: 230).cornerRadius(10)
                                 }
                                 Text(i.title).fontWeight(.heavy)
                                 Text(i.description).lineLimit(2)
                             }
                         }
                         .padding(.vertical, 15)
                     }
                 }
                 .navigationBarTitle("Business")
                 .navigationBarItems(
                     trailing: Button(action: {
                         print("Country List")
                         self.showCountryView = true
                     }, label: {
                         Image(CountryVariables.countryImage).renderingMode(.original)
                     }))
            } else if CountryVariables.countryOption == "gb" {
                List(listUnitedKingdom.data) {i in
                    NavigationLink(destination:
                        BusinessWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
                        ) {
                        HStack(spacing: 15) {
                            VStack(alignment: .leading, spacing: 10) {
                                if i.urlToImage != "" {
                                    WebImage(url: URL(string: i.urlToImage)!, options: .highPriority, context: nil).resizable().frame(width: 375, height: 230).cornerRadius(10)
                                }
                                Text(i.title).fontWeight(.heavy)
                                Text(i.description).lineLimit(2)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                }
                .navigationBarTitle("Business")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List")
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "us" {
                List(listUnitedStates.data) {i in
                    NavigationLink(destination:
                        BusinessWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
                        ) {
                        HStack(spacing: 15) {
                            VStack(alignment: .leading, spacing: 10) {
                                if i.urlToImage != "" {
                                    WebImage(url: URL(string: i.urlToImage)!, options: .highPriority, context: nil).resizable().frame(width: 375, height: 230).cornerRadius(10)
                                }
                                Text(i.title).fontWeight(.heavy)
                                Text(i.description).lineLimit(2)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                }
                .navigationBarTitle("Business")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List")
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            }
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

struct BusinessDataTypeCanada: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct BusinessDataTypeChina: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct BusinessDataTypeFrance: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct BusinessDataTypeGermany: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct BusinessDataTypeIndia: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct BusinessDataTypeJapan: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct BusinessDataTypeSouthKorea: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct BusinessDataTypeSwitzerland: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct BusinessDataTypeUnitedKingdom: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct BusinessDataTypeUnitedStates: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

class BusinessDataCanada: ObservableObject {
    @Published var data = [BusinessDataTypeCanada]()
    
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
                    self.data.append(BusinessDataTypeCanada(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class BusinessDataChina: ObservableObject {
    @Published var data = [BusinessDataTypeChina]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=cn&category=business&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(BusinessDataTypeChina(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class BusinessDataFrance: ObservableObject {
    @Published var data = [BusinessDataTypeFrance]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=fr&category=business&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(BusinessDataTypeFrance(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class BusinessDataGermany: ObservableObject {
    @Published var data = [BusinessDataTypeGermany]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=de&category=business&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(BusinessDataTypeGermany(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class BusinessDataIndia: ObservableObject {
    @Published var data = [BusinessDataTypeIndia]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(BusinessDataTypeIndia(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class BusinessDataJapan: ObservableObject {
    @Published var data = [BusinessDataTypeJapan]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=jp&category=business&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(BusinessDataTypeJapan(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class BusinessDataSouthKorea: ObservableObject {
    @Published var data = [BusinessDataTypeSouthKorea]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=kr&category=business&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(BusinessDataTypeSouthKorea(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class BusinessDataSwitzerland: ObservableObject {
    @Published var data = [BusinessDataTypeSwitzerland]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=ch&category=business&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(BusinessDataTypeSwitzerland(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class BusinessDataUnitedKingdom: ObservableObject {
    @Published var data = [BusinessDataTypeUnitedKingdom]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=gb&category=business&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(BusinessDataTypeUnitedKingdom(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class BusinessDataUnitedStates: ObservableObject {
    @Published var data = [BusinessDataTypeUnitedStates]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(BusinessDataTypeUnitedStates(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

struct BusinessWebView: UIViewRepresentable {
    
    var url: String
    
    func makeUIView(context: UIViewRepresentableContext<BusinessWebView>) -> WKWebView {
        let view = WKWebView()
        view.load(URLRequest(url: URL(string: url)!))
        return view
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<BusinessWebView>) {
        
    }
}
