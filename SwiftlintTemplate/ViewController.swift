//
//  ViewController.swift
//  SwiftlintTemplate
//
//  Created by Liu, Henry on 17/12/21.
//

import UIKit

class ViewController: UIViewController {
    // MARK: ENABLED RULES TESTS: General Formatting
    
    // Colum limit
    /// SWIFTLINT: line_length.
    /// Swift Guide Rule: (Column Width) Swift code has a column limit of 100 characters. Any lines that exceed this limit can use Line-wrapping
    /// (Warning if the above rule description is on the same line)
    
    // Semicolons
    /// SWIFTLINT: trailing_semicolon
    /// Semicolons(;) are not used, either to terminate or separate statements.
    /// Warnings
    func printSum(_ param1: Int, _ param2: Int) {
      let sum = param1 + param2;
      print(sum);
    }
    
    // Horizontal Whitespace (Comma)
    /// SWIFTLINT: comma
    /// Rule guide: Whitespace after, but not before, the comma in parameter lists and in tuple/array/dictionary literals.
    let numbers2 = [1,2,3] // Warning
    let numbers3 = [1 ,2 ,3] // Warning
    let numbers4 = [1 , 2 , 3] // Warning

    // Horizontal Whitespace (Colon)
    /// SWIFTLINT: colon
    /// Rule guide: Whitespace after, but not before, the colon (:) in certain cases.
    class MyClass : Formatter { // Warning
    }
    
    func greet2(person : String) -> String { // Warning
    
        let val1 : Int = 0 // Warning
        let val2: [String : [Int]] = ["Num" : [1, 2, 3]] // Warning
        
        return "hello world"
    }
    
    // Parentheses
    /// SWIFTLINT: control_statement
    /// Rule guide: Parentheses are not used around the top-most expression that follows an if, guard, while, or switch keyword.
    func testFunction() {
        
        let valX = 0, valY = 1, valZ = 2
        
        if (valX == 0) { // Warning
          print("x is zero")
        }
         
        if ((valX == 0 || valY == 1) && valZ == 2) { // Warning
          print("...")
        }
    }
    
    // MARK: ENABLED RULES TESTS: Programming Practices
    
    // Types with Shorthand Names - Void
    /// SWIFTLINT: redundant_void_return and void_return
    
    func doSomething() -> Void { // Warning
      // ...
    }
     
    func doSomething2() -> () { // Warning
        let callback: () -> () // Warning
    }

    // Optional Types
    /// SWIFTLINT rule: unused_optional_binding
    func testfunction2(val: String) {
        let value: String?
        value = val
        
        if let _ = value { // Warning
          print("value was not nil")
        }
    }
    
    // Force Unwrapping and Force Casts
    /// SWIFTLINT: force_cast
    /// Rule guide: Avoid using as! to force a downcast, or ! to force unwrapping. Use as? to attempt the cast, then deal with the failure case explicitly.
    class Animal {}
    class Bird: Animal {}

    func testCast() {
        let animal: Animal = Bird()

        animal as! Bird  // Warning
    }
  
    // For-where Loops
    /// SWIFTLINT: for_where
    /// When the entirety of a for loop’s body would be a single if block testing a condition of the element, the test is placed in the where clause of the for statement instead.
    func testForWhereLoop() {
        let collection = [1, 2, 3]
        
        for item in collection where item == 2 {
          
        }
   
    // MARK: OPT IN RULE TESTS
    
    // SWIFTLINT: operator_usage_whitespace
    /// Guide Rule: "On both sides of any binary or ternary operator, including the operator-like symbols (eg. =, &, ==, →).
    let operatorTest1 = true
    let operatorTest2=false // Warning
    
    // SWIFTLINT: multiline_parameters
    /// Guide Rule: "When a function call is line-wrapped, each argument is written on its own line, indented +2 from the original line."
    func test1( // Warning
      veryLongVariableName1: Int,
      veryLongVariableName2: Int, veryLongVariableName3: Int) {
          print("Hello world")

        }
    
    // No Warning
    func test2(
        veryLongVariableName1: Int,
        veryLongVariableName2: Int,
        veryLongVariableName3: Int) {}
    
    // SWIFTLINT: implicitly_unwrapped_optional
    /// Guide Rule: "Implicitly unwrapped optionals are inherently unsafe and should be avoided whenever possible.
    func test3() {
        let int: Int! = nil // Warning
    }
    

    // Swiftlint: modifier_order
    // Guide Rule: "When using access modifiers, write the keyword first."
    

    // Correct
    let initialFactor1 = 2  // Comment
     
    //  Incorrect
    let initialFactor2 = 2 //    Comment
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    // SWIFTLINT: modifier_order
    /// Guide Rule: "When using access modifiers, write the keyword first."

    private static let firstValue: Int = 20
    static private let secondValue: Int = 20 // Warning

}
    // SWIFTLINT: no_extension_access_modifier
    // Guide Rule: "Specifying an explicit access level at the file level on an extension is forbidden."

        // Correct
        extension String {

        }
     
//     // Error Warning (uncomment to test)
//     public extension String {
//
//     }
   
    }

    func printSum(_ abc: Int, _ bcd: Int) {
        let sum = abc + bcd;
        print(sum);
    }
    // MARK: Formatting Specific Constructs and Naming
    // SWIFTLINT: switch_case_on_newline
    // Guide Rule: "Case statements must be on a newline"
            // Correct
            enum testEnvironment {
            case development
            }
            // Wrong (Error Warning uncomment to test)
            /* switch testEnvironment2 {
                case 1: return true
            }
            */

    // SWIFTLINT: switch_case_alignment
    // Guide Rule: "Case statements should align with their enclosing switch statement"
        // Correct
        func testWeekday(day: Int) -> String {
            let day = 4
            switch day {
            case 1:
                print("Monday")
            case 2:
                print("Tuesday")
            case 3:
                print("Wednesday")
            case 4:
                print("Thursday")
            case 5:
                print("Friday")
            default:
                print("Invalid day")
            }
        }
        // Wrong
        func testWeekend(dayOfWeek: Int) -> String {
            let dayOfWeek = 5
            switch dayOfWeek {
                case 1:
                    print("Monday - not the weekend")
                case 2:
                    print("Tuesday - not the weekend")
                case 3:
                    print("Wednesday - not the weekend")
                case 4:
                    print("Thursday - not the weekend")
                case 5:
                    print("Friday - not the weekend")
                case 6:
                    print("Weekend")
                case 7:
                    print("Weekend")
                default:
                    print("Invalid day")
            }
        }
    // SWIFTLINT: explicit_enum_raw_value
    // Guide Rule: "Enums should be explicitly assigned their raw values with only one case per line"
        // Correct
        enum testExplicit1 {
          case int(Int)
          case short(Int16)
        }
        enum testExplicit2: Int {
          case one = 1
          case two = 2
        }
        enum testExplicit3: String {
          case one = "one"
          case two = "two"
        }

        // Wrong
        enum testExplicit4: Int {
          case one = 10, two, three = 30
        }
        enum testExplicit5: String {
           case one, two = "two"
        }

    // SWIFTLINT: redundant_string_enum_value
    // Guide Rule: "Enum values can be omitted when they are equal to the enumcase name"
        // Correct
        enum testRedundant1: String {
          case one
          case two
        }
        enum testRedundant2: String {
          case one, two
        }
        // Wrong
        enum testRedundant3: String {
          case one = "one"
          case two = "two"
        }
        enum testRedundant4: String {
          case one = "one", two = "two"
        }
        enum testRedundant5: String {
          case one, two = "two"
        }

    // SWIFTLINT: comment_spacing
    // Guide Rule: "One space after slashes for comments"
        // Correct
            // This is a comment
            // Multiline double-slash
            // comment
            // - MARK: Mark comment

         // Wrong
                //Something
                ///MARK
}

