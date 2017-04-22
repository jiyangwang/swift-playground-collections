//: # Playground Live Views with SpriteKit
//: This is a short update to my original post on [Playing with SpriteKit in a Playground](http://www.swift-studies.com/blog/2014/6/4/playing-with-spritekit-in-a-swift-playground)
//: I thought it was worth updating as a lot of new functionality has been added to playgrounds since their initial introduction. Not least markup which makes it easier to explain what's going on.
//: ## Getting Started
//: OK, first we will need SpriteKit
import SpriteKit

//: ## The XCPlayground Module
//: This is important... It brings in the **XC**ode**Playground** module which is what is going to allow use to show the live view. Make sure that you are showing the assistant editor (Command-Alt-Enter) otherwise you won't see your live view
import XCPlayground

//: ## Setting the SKScene
//: Now we can do the basic setup for SpriteKit. I'm going to prepare a couple of constants for the size of the scene and a mid-point. You could obviously just pass these in place, but we are likely to want to re-use them
let frame = CGRect(x: 0, y: 0, width: 320, height: 256)
let midPoint = CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0)

//: With these in place, we can create a scene, and a SpriteNode which we position at the midpoint of the scene, and of course add it to the scene
var scene = SKScene(size: frame.size)

let nyanCat = SKSpriteNode(imageNamed: "Nyancat")
nyanCat.position = midPoint
nyanCat.setScale(8.0)

scene.addChild(nyanCat)

//: Now all we need to do is create an SKView to show the scene, present it
let view = SKView(frame: frame)
view.presentScene(scene)

//: We want this to show up in our AssistantEditor, and we use XCPlaygroundPage to do that, setting the liveView property of currentPage to our newly created view
XCPlaygroundPage.currentPage.liveView = view

//: That's it... you could now go and be very creative building a scene of your own... Or... [Make Nyan Cat Happy](@next)
