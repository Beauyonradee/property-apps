import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "home" asset catalog image resource.
    static let home = DeveloperToolsSupport.ImageResource(name: "home", bundle: resourceBundle)

    /// The "home1" asset catalog image resource.
    static let home1 = DeveloperToolsSupport.ImageResource(name: "home1", bundle: resourceBundle)

    /// The "house1" asset catalog image resource.
    static let house1 = DeveloperToolsSupport.ImageResource(name: "house1", bundle: resourceBundle)

    /// The "house2" asset catalog image resource.
    static let house2 = DeveloperToolsSupport.ImageResource(name: "house2", bundle: resourceBundle)

    /// The "house3" asset catalog image resource.
    static let house3 = DeveloperToolsSupport.ImageResource(name: "house3", bundle: resourceBundle)

    /// The "house4" asset catalog image resource.
    static let house4 = DeveloperToolsSupport.ImageResource(name: "house4", bundle: resourceBundle)

    /// The "land1" asset catalog image resource.
    static let land1 = DeveloperToolsSupport.ImageResource(name: "land1", bundle: resourceBundle)

    /// The "land2" asset catalog image resource.
    static let land2 = DeveloperToolsSupport.ImageResource(name: "land2", bundle: resourceBundle)

    /// The "land3" asset catalog image resource.
    static let land3 = DeveloperToolsSupport.ImageResource(name: "land3", bundle: resourceBundle)

    /// The "land4" asset catalog image resource.
    static let land4 = DeveloperToolsSupport.ImageResource(name: "land4", bundle: resourceBundle)

    /// The "magnifyingglass" asset catalog image resource.
    static let magnifyingglass = DeveloperToolsSupport.ImageResource(name: "magnifyingglass", bundle: resourceBundle)

    /// The "magnifyingglass 1" asset catalog image resource.
    static let magnifyingglass1 = DeveloperToolsSupport.ImageResource(name: "magnifyingglass 1", bundle: resourceBundle)

    /// The "new" asset catalog image resource.
    static let new = DeveloperToolsSupport.ImageResource(name: "new", bundle: resourceBundle)

    /// The "thumbnail_house1" asset catalog image resource.
    static let thumbnailHouse1 = DeveloperToolsSupport.ImageResource(name: "thumbnail_house1", bundle: resourceBundle)

    /// The "thumbnail_house2" asset catalog image resource.
    static let thumbnailHouse2 = DeveloperToolsSupport.ImageResource(name: "thumbnail_house2", bundle: resourceBundle)

    /// The "thumbnail_house3" asset catalog image resource.
    static let thumbnailHouse3 = DeveloperToolsSupport.ImageResource(name: "thumbnail_house3", bundle: resourceBundle)

    /// The "thumbnail_house4" asset catalog image resource.
    static let thumbnailHouse4 = DeveloperToolsSupport.ImageResource(name: "thumbnail_house4", bundle: resourceBundle)

    /// The "thumbnail_land1" asset catalog image resource.
    static let thumbnailLand1 = DeveloperToolsSupport.ImageResource(name: "thumbnail_land1", bundle: resourceBundle)

    /// The "thumbnail_land2" asset catalog image resource.
    static let thumbnailLand2 = DeveloperToolsSupport.ImageResource(name: "thumbnail_land2", bundle: resourceBundle)

    /// The "thumbnail_land3" asset catalog image resource.
    static let thumbnailLand3 = DeveloperToolsSupport.ImageResource(name: "thumbnail_land3", bundle: resourceBundle)

    /// The "thumbnail_land4" asset catalog image resource.
    static let thumbnailLand4 = DeveloperToolsSupport.ImageResource(name: "thumbnail_land4", bundle: resourceBundle)

    /// The "thumbnail_new" asset catalog image resource.
    static let thumbnailNew = DeveloperToolsSupport.ImageResource(name: "thumbnail_new", bundle: resourceBundle)

    /// The "thumbnail_unit1" asset catalog image resource.
    static let thumbnailUnit1 = DeveloperToolsSupport.ImageResource(name: "thumbnail_unit1", bundle: resourceBundle)

    /// The "thumbnail_unit2" asset catalog image resource.
    static let thumbnailUnit2 = DeveloperToolsSupport.ImageResource(name: "thumbnail_unit2", bundle: resourceBundle)

    /// The "thumbnail_unit3" asset catalog image resource.
    static let thumbnailUnit3 = DeveloperToolsSupport.ImageResource(name: "thumbnail_unit3", bundle: resourceBundle)

    /// The "thumbnail_unit4" asset catalog image resource.
    static let thumbnailUnit4 = DeveloperToolsSupport.ImageResource(name: "thumbnail_unit4", bundle: resourceBundle)

    /// The "unit1" asset catalog image resource.
    static let unit1 = DeveloperToolsSupport.ImageResource(name: "unit1", bundle: resourceBundle)

    /// The "unit2" asset catalog image resource.
    static let unit2 = DeveloperToolsSupport.ImageResource(name: "unit2", bundle: resourceBundle)

    /// The "unit3" asset catalog image resource.
    static let unit3 = DeveloperToolsSupport.ImageResource(name: "unit3", bundle: resourceBundle)

    /// The "unit4" asset catalog image resource.
    static let unit4 = DeveloperToolsSupport.ImageResource(name: "unit4", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "home" asset catalog image.
    static var home: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .home)
#else
        .init()
#endif
    }

    /// The "home1" asset catalog image.
    static var home1: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .home1)
#else
        .init()
#endif
    }

    /// The "house1" asset catalog image.
    static var house1: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .house1)
#else
        .init()
#endif
    }

    /// The "house2" asset catalog image.
    static var house2: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .house2)
#else
        .init()
#endif
    }

    /// The "house3" asset catalog image.
    static var house3: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .house3)
#else
        .init()
#endif
    }

    /// The "house4" asset catalog image.
    static var house4: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .house4)
#else
        .init()
#endif
    }

    /// The "land1" asset catalog image.
    static var land1: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .land1)
#else
        .init()
#endif
    }

    /// The "land2" asset catalog image.
    static var land2: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .land2)
#else
        .init()
#endif
    }

    /// The "land3" asset catalog image.
    static var land3: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .land3)
#else
        .init()
#endif
    }

    /// The "land4" asset catalog image.
    static var land4: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .land4)
#else
        .init()
#endif
    }

    /// The "magnifyingglass" asset catalog image.
    static var magnifyingglass: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .magnifyingglass)
#else
        .init()
#endif
    }

    /// The "magnifyingglass 1" asset catalog image.
    static var magnifyingglass1: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .magnifyingglass1)
#else
        .init()
#endif
    }

    /// The "new" asset catalog image.
    static var new: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .new)
#else
        .init()
#endif
    }

    /// The "thumbnail_house1" asset catalog image.
    static var thumbnailHouse1: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .thumbnailHouse1)
#else
        .init()
#endif
    }

    /// The "thumbnail_house2" asset catalog image.
    static var thumbnailHouse2: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .thumbnailHouse2)
#else
        .init()
#endif
    }

    /// The "thumbnail_house3" asset catalog image.
    static var thumbnailHouse3: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .thumbnailHouse3)
#else
        .init()
#endif
    }

    /// The "thumbnail_house4" asset catalog image.
    static var thumbnailHouse4: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .thumbnailHouse4)
#else
        .init()
#endif
    }

    /// The "thumbnail_land1" asset catalog image.
    static var thumbnailLand1: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .thumbnailLand1)
#else
        .init()
#endif
    }

    /// The "thumbnail_land2" asset catalog image.
    static var thumbnailLand2: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .thumbnailLand2)
#else
        .init()
#endif
    }

    /// The "thumbnail_land3" asset catalog image.
    static var thumbnailLand3: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .thumbnailLand3)
#else
        .init()
#endif
    }

    /// The "thumbnail_land4" asset catalog image.
    static var thumbnailLand4: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .thumbnailLand4)
#else
        .init()
#endif
    }

    /// The "thumbnail_new" asset catalog image.
    static var thumbnailNew: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .thumbnailNew)
#else
        .init()
#endif
    }

    /// The "thumbnail_unit1" asset catalog image.
    static var thumbnailUnit1: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .thumbnailUnit1)
#else
        .init()
#endif
    }

    /// The "thumbnail_unit2" asset catalog image.
    static var thumbnailUnit2: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .thumbnailUnit2)
#else
        .init()
#endif
    }

    /// The "thumbnail_unit3" asset catalog image.
    static var thumbnailUnit3: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .thumbnailUnit3)
#else
        .init()
#endif
    }

    /// The "thumbnail_unit4" asset catalog image.
    static var thumbnailUnit4: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .thumbnailUnit4)
#else
        .init()
#endif
    }

    /// The "unit1" asset catalog image.
    static var unit1: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .unit1)
#else
        .init()
#endif
    }

    /// The "unit2" asset catalog image.
    static var unit2: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .unit2)
#else
        .init()
#endif
    }

    /// The "unit3" asset catalog image.
    static var unit3: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .unit3)
#else
        .init()
#endif
    }

    /// The "unit4" asset catalog image.
    static var unit4: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .unit4)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "home" asset catalog image.
    static var home: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .home)
#else
        .init()
#endif
    }

    /// The "home1" asset catalog image.
    static var home1: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .home1)
#else
        .init()
#endif
    }

    /// The "house1" asset catalog image.
    static var house1: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .house1)
#else
        .init()
#endif
    }

    /// The "house2" asset catalog image.
    static var house2: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .house2)
#else
        .init()
#endif
    }

    /// The "house3" asset catalog image.
    static var house3: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .house3)
#else
        .init()
#endif
    }

    /// The "house4" asset catalog image.
    static var house4: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .house4)
#else
        .init()
#endif
    }

    /// The "land1" asset catalog image.
    static var land1: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .land1)
#else
        .init()
#endif
    }

    /// The "land2" asset catalog image.
    static var land2: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .land2)
#else
        .init()
#endif
    }

    /// The "land3" asset catalog image.
    static var land3: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .land3)
#else
        .init()
#endif
    }

    /// The "land4" asset catalog image.
    static var land4: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .land4)
#else
        .init()
#endif
    }

    /// The "magnifyingglass" asset catalog image.
    static var magnifyingglass: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .magnifyingglass)
#else
        .init()
#endif
    }

    /// The "magnifyingglass 1" asset catalog image.
    static var magnifyingglass1: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .magnifyingglass1)
#else
        .init()
#endif
    }

    /// The "new" asset catalog image.
    static var new: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .new)
#else
        .init()
#endif
    }

    /// The "thumbnail_house1" asset catalog image.
    static var thumbnailHouse1: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .thumbnailHouse1)
#else
        .init()
#endif
    }

    /// The "thumbnail_house2" asset catalog image.
    static var thumbnailHouse2: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .thumbnailHouse2)
#else
        .init()
#endif
    }

    /// The "thumbnail_house3" asset catalog image.
    static var thumbnailHouse3: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .thumbnailHouse3)
#else
        .init()
#endif
    }

    /// The "thumbnail_house4" asset catalog image.
    static var thumbnailHouse4: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .thumbnailHouse4)
#else
        .init()
#endif
    }

    /// The "thumbnail_land1" asset catalog image.
    static var thumbnailLand1: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .thumbnailLand1)
#else
        .init()
#endif
    }

    /// The "thumbnail_land2" asset catalog image.
    static var thumbnailLand2: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .thumbnailLand2)
#else
        .init()
#endif
    }

    /// The "thumbnail_land3" asset catalog image.
    static var thumbnailLand3: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .thumbnailLand3)
#else
        .init()
#endif
    }

    /// The "thumbnail_land4" asset catalog image.
    static var thumbnailLand4: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .thumbnailLand4)
#else
        .init()
#endif
    }

    /// The "thumbnail_new" asset catalog image.
    static var thumbnailNew: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .thumbnailNew)
#else
        .init()
#endif
    }

    /// The "thumbnail_unit1" asset catalog image.
    static var thumbnailUnit1: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .thumbnailUnit1)
#else
        .init()
#endif
    }

    /// The "thumbnail_unit2" asset catalog image.
    static var thumbnailUnit2: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .thumbnailUnit2)
#else
        .init()
#endif
    }

    /// The "thumbnail_unit3" asset catalog image.
    static var thumbnailUnit3: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .thumbnailUnit3)
#else
        .init()
#endif
    }

    /// The "thumbnail_unit4" asset catalog image.
    static var thumbnailUnit4: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .thumbnailUnit4)
#else
        .init()
#endif
    }

    /// The "unit1" asset catalog image.
    static var unit1: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .unit1)
#else
        .init()
#endif
    }

    /// The "unit2" asset catalog image.
    static var unit2: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .unit2)
#else
        .init()
#endif
    }

    /// The "unit3" asset catalog image.
    static var unit3: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .unit3)
#else
        .init()
#endif
    }

    /// The "unit4" asset catalog image.
    static var unit4: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .unit4)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

