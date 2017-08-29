//
//  Classes.swift
//  Dictionary
//
//  Created by Jorge Mario Riascos Uribe on 8/28/17.
//  Copyright © 2017 Jorge Mario Riascos Uribe. All rights reserved.
//

import Foundation
import UIKit


let sectionsEnglish = ["Terms", "Settings"]
let sectionsSpanish = ["Términos", "Configuración"]

class Language {
    static var language = "English"
    
    func changeLanguage (language: String) {
        var language = "English"
        if language == "English" {
            language = "Spanish"
        }else {
            if language == "Spanish" {
                language = "English"
            }
        }
    }
    
}


class TableViewController: UITableViewController {
    
    
    @IBOutlet weak var term1Label: UILabel!
    @IBOutlet weak var term2Label: UILabel!
    @IBOutlet weak var term3Label: UILabel!
    @IBOutlet weak var term4Label: UILabel!
    @IBOutlet weak var term5Label: UILabel!
    @IBOutlet weak var changeLanguageButton: UILabel!
    
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch Language.language {
        case "Spanish":
            switch section {
            case 0:
                return sectionsSpanish[0]
            case 1:
                return sectionsSpanish[1]
            default:
                return ""
            }
        default:
            switch section {
            case 0:
                return sectionsEnglish[0]
            case 1:
                return sectionsEnglish[1]
            default:
                return ""
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        switch Language.language {
        case "Spanish":
            term1Label.text = "Clase"
            term2Label.text = "Herencia"
            term3Label.text = "Método de Clase"
            term4Label.text = "Objeto de Clase"
            term5Label.text = "Variable de clase"
            changeLanguageButton.text = "Change Language"
        default:
            term1Label.text = "Class"
            term2Label.text = "Inheritance"
            term3Label.text = "Class Method"
            term4Label.text = "Class Object"
            term5Label.text = "Class Variable"
            changeLanguageButton.text = "Cambio de Idioma"
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}




class ModalViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func spanishLanguageButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        Language.language = "Spanish"
    }
    @IBAction func englishLanguageButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        Language.language = "English"
    }
}

class Term1ViewController: UIViewController {
    
    var url : URL? = URL (string: "https://en.wikipedia.org/wiki/Main_Page")!
    
    @IBOutlet weak var termTitleLabel: UILabel!
    @IBOutlet weak var termImage: UIImageView!
    @IBOutlet weak var termText: UITextView!
    @IBOutlet weak var wikipediaLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.termImage.image = #imageLiteral(resourceName: "classImage")
        switch Language.language {
        case "Spanish":
            self.termTitleLabel.text = "Clases"
            self.termText.text = classSpanishText
            self.wikipediaLabel.text = "Fuente Wikipedia"
            self.url = URL (string: "https://es.wikipedia.org/wiki/Clase_(informatica)")!
        default:
            self.termTitleLabel.text = "Class"
            self.termText.text = classEnglishText
            self.wikipediaLabel.text = "Source Wikipedia"
            self.url = URL (string: "https://en.wikipedia.org/wiki/Class_(computer_programming)")!
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func sourceWikipediaButton(_ sender: Any) {
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
}

class Term2ViewController: UIViewController {
    
    var url : URL? = URL (string: "https://en.wikipedia.org/wiki/Main_Page")!
    
    @IBOutlet weak var termTitleLabel: UILabel!
    @IBOutlet weak var termImage: UIImageView!
    @IBOutlet weak var termText: UITextView!
    @IBOutlet weak var wikipediaLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.termImage.image = #imageLiteral(resourceName: "inheritance")
        switch Language.language {
        case "Spanish":
            self.termTitleLabel.text = "Herencia"
            self.termText.text = inheritanceSpanishText
            self.wikipediaLabel.text = "Fuente Wikipedia"
            self.url = URL (string: "https://es.wikipedia.org/wiki/Herencia_(informatica)")!
        default:
            self.termTitleLabel.text = "Inheritance"
            self.termText.text = inheritanceEnglishText
            self.wikipediaLabel.text = "Source Wikipedia"
            self.url = URL (string: "https://en.wikipedia.org/wiki/Inheritance_(object-oriented_programming)")!
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func sourceWikipediaButton(_ sender: Any) {
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
}

class Term3ViewController: UIViewController {
    
    var url : URL? = URL (string: "https://en.wikipedia.org/wiki/Main_Page")!
    
    @IBOutlet weak var termTitleLabel: UILabel!
    @IBOutlet weak var termImage: UIImageView!
    @IBOutlet weak var termText: UITextView!
    @IBOutlet weak var wikipediaLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.termImage.image = #imageLiteral(resourceName: "classMethod")
        switch Language.language {
        case "Spanish":
            self.termTitleLabel.text = "Metodo de Clase"
            self.termText.text = classMethodSpanishText
            self.wikipediaLabel.text = "Fuente Wikipedia"
            self.url = URL (string: "https://es.wikipedia.org/wiki/Metodo_(informatica)")!
        default:
            self.termTitleLabel.text = "Method"
            self.termText.text = classMethodEnglishText
            self.wikipediaLabel.text = "Source Wikipedia"
            self.url = URL (string: "https://en.wikipedia.org/wiki/Method_(computer_programming)#Class_methods")!
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func sourceWikipediaButton(_ sender: Any) {
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
}

class Term4ViewController: UIViewController {
    
    var url : URL? = URL (string: "https://en.wikipedia.org/wiki/Main_Page")!
    
    @IBOutlet weak var termTitleLabel: UILabel!
    @IBOutlet weak var termImage: UIImageView!
    @IBOutlet weak var termText: UITextView!
    @IBOutlet weak var wikipediaLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.termImage.image = #imageLiteral(resourceName: "classesObjects")
        switch Language.language {
        case "Spanish":
            self.termTitleLabel.text = "Objeto"
            self.termText.text = classObjectSpanishText
            self.wikipediaLabel.text = "Fuente Wikipedia"
            self.url = URL (string: "https://es.wikipedia.org/wiki/Objeto_(programacion)")!
        default:
            self.termTitleLabel.text = "Class Object"
            self.termText.text = classObjectEnglishText
            self.wikipediaLabel.text = "Source Wikipedia"
            self.url = URL (string: "https://en.wikipedia.org/wiki/Object_(computer_science)")!
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func sourceWikipediaButton(_ sender: Any) {
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
}

class Term5ViewController: UIViewController {
    
    var url : URL? = URL (string: "https://en.wikipedia.org/wiki/Main_Page")!
    
    @IBOutlet weak var termTitleLabel: UILabel!
    @IBOutlet weak var termImage: UIImageView!
    @IBOutlet weak var termText: UITextView!
    @IBOutlet weak var wikipediaLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.termImage.image = #imageLiteral(resourceName: "classVariable")
        switch Language.language {
        case "Spanish":
            self.termTitleLabel.text = "Variable de clase"
            self.termText.text = classVariableSpanishText
            self.wikipediaLabel.text = "Fuente Wikipedia"
            self.url = URL (string: "https://es.wikipedia.org/wiki/Variable_de_clase")!
        default:
            self.termTitleLabel.text = "Class Variable"
            self.termText.text = classVariableEnglishText
            self.wikipediaLabel.text = "Source Wikipedia"
            self.url = URL (string: "https://en.wikipedia.org/wiki/Class_variable")!
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func sourceWikipediaButton(_ sender: Any) {
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
}
