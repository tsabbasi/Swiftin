/**
 
 To the button enum, add a method named toUIBarButtonItem that returns an instance of UIBarButtonItem configured properly.
 
 In the buttons.swift file there is a basic implementation of UIBarButtonItem. You can create buttons with three different styles and titles.
 
 Using the associated values as titles for the button, return a button with style UIBarButtonStyle.Done for the Done member of the Button enum. Similarly for the Edit member, return a UIBarButtonItem instance with the style set to UIBarButtonStyle.Plain.
 
 In both cases you can pass nil for target and action. Once you have a method, call it on the value we created in the previous task and assign it to a constant named doneButton.
 
**/

enum Button {
    case Done(String)
    case Edit(String)
    
    func toUIBarButtonItem() -> UIBarButtonItem {
        switch self {
        case .Done(let doneTitle):
            return UIBarButtonItem(title: doneTitle, style: UIBarButtonStyle.Done, target: nil, action: nil)
        case .Edit(let editTitle):
            return UIBarButtonItem(title: editTitle, style: UIBarButtonStyle.Plain, target: nil, action: nil)
        }
    }
}

let done = Button.Done("Done")
let doneButton = done.toUIBarButtonItem()
