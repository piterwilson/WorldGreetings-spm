import Foundation

public struct WorldGreetings {
    
    /// Explicit Bundle dependency, permits overriding the source of the localized strings in this struct
    internal var bundle: Bundle = Bundle.module
    
    public var hello: String {
        NSLocalizedString("hello", bundle: self.bundle, comment: "A word used to greet other people")
    }
    
    /// `public` init needs to be added to expose this class outside the modules
    public init() {}
    
    /// This init permits the injection of a specific `Bundle`. This init is `internal` and used in the unit tests only.
    internal init?(languageCode: String) {
        guard let path = Bundle.module.path(forResource: languageCode, ofType: "lproj"), let bundle = Bundle(path: path) else {
            return nil
        }
        self.bundle = bundle
    }
}
