import Foundation

class ReadJson<T: Decodable> {
    
    var filename: String;
    var data: Data?;
    
    init(_ filename: String) {
        self.filename = filename;
        self.loadFile();
    }
    
    private func loadFile() {
        if let path = Bundle.main.path(forResource: self.filename, ofType: "json") {
            do {
                self.data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            } catch let loadError {
                print("Error load file", loadError);
            }
        }
    }
    
    public func parse() -> T? {
        do {
            let decoder = JSONDecoder()
            let model: T = try decoder.decode(T.self, from: self.data!)
            print(model)
            return model;
        } catch let parsingError {
            print("Error", parsingError)
            return nil;
        }
    }
}
