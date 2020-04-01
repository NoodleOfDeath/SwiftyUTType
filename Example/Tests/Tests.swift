import XCTest
import SwiftyUTType

class Tests: XCTestCase {
    
    func testPrintStrings() {
        print("my-file.css".uttype) // prints "public.css"
        print("my-file.html".uttype) // prints "public.html"
        print("my-file.java".uttype) // prints "com.sun.java-source"
        print("my-file.jpg".uttype) // prints "public.jpeg"
        print("my-file.js".uttype) // prints "com.netscpe.javascript-source"
        print("my-file.json".uttype) // prints "public.json"
        print("my-file.md".uttype) // prints "dyn."; custom document type like this need to be specified in the Info.plist
        print("my-file.mp4".uttype) // prints "public.mpeg-4"
        print("my-file.plist".uttype) // prints "com.apple.property-list"
        print("my-file.png".uttype) // prints "public.png"
        print("my-file.swift".uttype) // prints "public.swift-source"
        print("my-file.tiff".uttype) // prints "public.tiff"
        print("my-file.txt".uttype) // prints "public.plain-text"
    }
    
    func testStringUttypes() {
        XCTAssert("my-file.css".uttype == .CSS)
        XCTAssert("my-file.html".uttype == .HTML)
        XCTAssert("my-file.java".uttype == .JavaSource)
        XCTAssert("my-file.jpg".uttype == .JPEG)
        XCTAssert("my-file.js".uttype == .JavaScript)
        XCTAssert("my-file.json".uttype == .JSON)
        //XCTAssert("my-file.md".uttype == .MD)
        XCTAssert("my-file.mp4".uttype == .MPEG4)
        XCTAssert("my-file.plist".uttype == .PropertyList)
        XCTAssert("my-file.png".uttype == .PNG)
        XCTAssert("my-file.swift".uttype == .SwiftSource)
        XCTAssert("my-file.tiff".uttype == .TIFF) 
        XCTAssert("my-file.txt".uttype == .PlainText)
    }
    
    func testPrintStringFromURLS() {
        guard let testFilesURL = (Bundle(for: type(of: self)).resourcePath +/ "TestFiles")?.fileURL else { 
            XCTFail()
            return
        }
        guard let urls = try? FileManager.default.contentsOfDirectory(at: testFilesURL, includingPropertiesForKeys: [], options: []) else { 
            XCTFail()
            return
        }
        urls.forEach { print($0.uttype) }
    }
    
    func testConformance() {
        XCTAssert("my-file.jpg".uttype.conforms(to: .Image))
        XCTAssert("my-file.jpg".uttype.conforms(to: .JPEG))
        XCTAssert(!"my-file.jpg".uttype.conforms(to: .PNG))
        XCTAssert("my-file.jpg".uttype.conforms(to: .PNG, .TIFF, .JPEG))
        
        XCTAssert("my-file.png".uttype.conforms(to: .Image))
        XCTAssert(!"my-file.png".uttype.conforms(to: .JPEG))
        XCTAssert("my-file.png".uttype.conforms(to: .PNG))
        XCTAssert("my-file.png".uttype.conforms(to: .PNG, .TIFF, .JPEG))
        
        XCTAssert("my-file.mp4".uttype.conforms(to: .Video, .Movie))
        
        XCTAssert("my-file.jpg".uttype.conforms(to: .Image, .JPEG, mustConformToAll: true))
        XCTAssert(!"my-file.jpg".uttype.conforms(to: .Image, .PNG, mustConformToAll: true))
        
        XCTAssert(!"my-file.png".uttype.conforms(to: .Image, .JPEG, mustConformToAll: true))
        XCTAssert("my-file.png".uttype.conforms(to: .Image, .PNG, mustConformToAll: true))
        
        XCTAssert("my-file.jpg".uttype.conforms(toFirst: .TIFF, .JPEG) == .JPEG)
        XCTAssert("my-file.jpg".uttype.conforms(toFirst: .TIFF, .Image, .JPEG) == .Image)
        
        XCTAssert("my-file.png".uttype.conforms(toFirst: .TIFF, .JPEG) == nil)
        XCTAssert("my-file.png".uttype.conforms(toFirst: .TIFF, .Image, .JPEG) == .Image)
    }
    
}
