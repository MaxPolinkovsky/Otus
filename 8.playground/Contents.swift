//: A UIKit based Playground for presenting user interface

import UIKit

enum Language {
    case DE, RU, EN, RO, IT
}

struct Lang {
    var keyboard: String
    var abbreviation: Language
    
    func choice() {
        _ = keyboard +  "\(Language.self)"
    }
}

class Notebook {
    
    var color: UIColor
    var display: Int
    var memory: Int
    var storage: Int
    
    
    init(color: UIColor, display: Int, memory: Int, storage: Int) {
        
        self.color = color
        self.display = display
        self.memory = memory
        self.storage = storage
    }
}

class Apple: Notebook {
    
    var keyboard: Lang
    let touchID: Bool
    var fullInf: String  {
        "\(color) \(display) \(memory) \(storage) \(keyboard.abbreviation)"
    }
    
    func quickLook() {
        print(fullInf)
    }
    
    init(color: UIColor, display: Int, memory: Int, storage: Int, touchID: Bool, keyboard: Lang) {
        self.keyboard = keyboard
        self.touchID = touchID
        super.init(color: color, display: display, memory: memory, storage: storage)
    }
}

let macBookPro = Apple(color: UIColor.gray, display: 13, memory: 16, storage: 256, touchID: true, keyboard: Lang(keyboard: "English", abbreviation: Language.EN))

macBookPro.fullInf
macBookPro.quickLook()
macBookPro.keyboard.choice()


func performComparisonOperation(a: Int, b: String, operation: (Bool)){
    if a == 3 {
        for i in 0..<a {
            sleep(1)
            print(b + "\(i)")
        }
    } else {
        print("No result")
    }
}

performComparisonOperation(a: 3, b: "result", operation: true)
