import UIKit

var str = "Hello, playground"

struct CountedSet<Element: Hashable>{
    private (set) var elements: [Element]
    
    mutating func insertion(_ element: Element) -> Int?{
        elements.append(element)
        return elements.count
    }
    
    mutating func deletion() -> Element? {
        if elements.count > 0 {
            return elements.removeFirst()
        }else{
            return nil
        }
    
    }
    
    subscript(_ index: Element) -> Int? {
    
        get {
            if elements.index(after: index.hashValue) != nil{
                elements.index(after: index.hashValue)
                return index.hashValue
            }else{
                return 0
            }
         
            
        }
        
        
    }
    
    
}
