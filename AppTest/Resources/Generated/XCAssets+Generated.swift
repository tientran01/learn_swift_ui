// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import SwiftUI

// Deprecated typealiases
@available(*, deprecated, renamed: "ColorAsset.SystemColor", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetColorTypeAlias = ColorAsset.SystemColor
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Assets {
    internal static let icArrowNext = SwiftUI.Image("ic_arrow_next")
    internal static let icArrowNext_uiImage = UIImage(named: "ic_arrow_next")!
    internal static let icArrowPrevious = SwiftUI.Image("ic_arrow_previous")
    internal static let icArrowPrevious_uiImage = UIImage(named: "ic_arrow_previous")!
    internal static let icBell = SwiftUI.Image("ic_bell")
    internal static let icBell_uiImage = UIImage(named: "ic_bell")!
    internal static let icBus = SwiftUI.Image("ic_bus")
    internal static let icBus_uiImage = UIImage(named: "ic_bus")!
    internal static let icChat = SwiftUI.Image("ic_chat")
    internal static let icChat_uiImage = UIImage(named: "ic_chat")!
    internal static let icHouse = SwiftUI.Image("ic_house")
    internal static let icHouse_uiImage = UIImage(named: "ic_house")!
    internal static let icListTask = SwiftUI.Image("ic_list_task")
    internal static let icListTask_uiImage = UIImage(named: "ic_list_task")!
    internal static let icMoney = SwiftUI.Image("ic_money")
    internal static let icMoney_uiImage = UIImage(named: "ic_money")!
    internal static let icUser = SwiftUI.Image("ic_user")
    internal static let icUser_uiImage = UIImage(named: "ic_user")!
}
internal enum Colors {
    internal static let background = ColorAsset(name: "background").color
    internal static let black = ColorAsset(name: "black").color
    internal static let blue = ColorAsset(name: "blue").color
    internal static let ceruleanBlue = ColorAsset(name: "ceruleanBlue").color
    internal static let headerBackground = ColorAsset(name: "headerBackground").color
    internal static let menthol = ColorAsset(name: "menthol").color
    internal static let russianGreen = ColorAsset(name: "russianGreen").color
    internal static let text = ColorAsset(name: "text").color
    internal static let white = ColorAsset(name: "white").color
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal final class ColorAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias SystemColor = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias SystemColor = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  internal private(set) lazy var systemColor: SystemColor = {
    guard let color = SystemColor(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }()

  internal private(set) lazy var color: Color = {
    Color(systemColor)
  }()

  fileprivate init(name: String) {
    self.name = name
  }
}

internal extension ColorAsset.SystemColor {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init?(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Image = UIImage
  #endif

  internal var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
}

internal extension ImageAsset.Image {
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init?(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}

// swiftlint:enable convenience_type
