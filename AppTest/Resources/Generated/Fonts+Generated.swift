// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import SwiftUI
#if os(OSX)
  import AppKit.NSFont
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIFont
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "FontConvertible.Font", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias SystemFont = FontConvertible.SystemFont

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Fonts

// swiftlint:disable identifier_name line_length type_body_length
internal enum FontFamily {
  internal enum Nunito {
    internal static let black = FontConvertible(name: "Nunito-Black", family: "Nunito", path: "Nunito-Black.ttf")
    internal static let bold = FontConvertible(name: "Nunito-Bold", family: "Nunito", path: "Nunito-Bold.ttf")
    internal static let extraBold = FontConvertible(name: "Nunito-ExtraBold", family: "Nunito", path: "Nunito-ExtraBold.ttf")
    internal static let extraLight = FontConvertible(name: "Nunito-ExtraLight", family: "Nunito", path: "Nunito-ExtraLight.ttf")
    internal static let light = FontConvertible(name: "Nunito-Light", family: "Nunito", path: "Nunito-Light.ttf")
    internal static let medium = FontConvertible(name: "Nunito-Medium", family: "Nunito", path: "Nunito-Medium.ttf")
    internal static let regular = FontConvertible(name: "Nunito-Regular", family: "Nunito", path: "Nunito-Regular.ttf")
    internal static let semiBold = FontConvertible(name: "Nunito-SemiBold", family: "Nunito", path: "Nunito-SemiBold.ttf")
    internal static let all: [FontConvertible] = [black, bold, extraBold, extraLight, light, medium, regular, semiBold]
  }
  internal enum SFProText {
    internal static let medium = FontConvertible(name: "SFProText-Medium", family: "SF Pro Text", path: "SF-Pro-Text-Medium.otf")
    internal static let all: [FontConvertible] = [medium]
  }
  internal static let allCustomFonts: [FontConvertible] = [Nunito.all, SFProText.all].flatMap { $0 }
  internal static func registerAllCustomFonts() {
    allCustomFonts.forEach { $0.register() }
  }
}
// swiftlint:enable identifier_name line_length type_body_length

// MARK: - Implementation Details

internal struct FontConvertible {
  internal let name: String
  internal let family: String
  internal let path: String

  #if os(OSX)
  internal typealias SystemFont = NSFont
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias SystemFont = UIFont
  #endif

  internal func font(size: CGFloat) -> SystemFont {
    guard let font = SystemFont(font: self, size: size) else {
      fatalError("Unable to initialize font '\(name)' (\(family))")
    }
    return font
  }

  internal func textStyle(_ textStyle: Font.TextStyle) -> Font {
    Font.mappedFont(name, textStyle: textStyle)
  }

  internal func size(_ size: CGFloat) -> Font {
      Font.mappedFont(name, size: size)
    }

  internal func register() {
    // swiftlint:disable:next conditional_returns_on_newline
    guard let url = url else { return }
    CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
  }

  fileprivate var url: URL? {
    // swiftlint:disable:next implicit_return
    return BundleToken.bundle.url(forResource: path, withExtension: nil)
  }
}

internal extension FontConvertible.SystemFont {
  convenience init?(font: FontConvertible, size: CGFloat) {
    #if os(iOS) || os(tvOS) || os(watchOS)
    if !UIFont.fontNames(forFamilyName: font.family).contains(font.name) {
      font.register()
    }
    #elseif os(OSX)
    if let url = font.url, CTFontManagerGetScopeForURL(url as CFURL) == .none {
      font.register()
    }
    #endif

    self.init(name: font.name, size: size)
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

fileprivate extension Font {
  static func mappedFont(_ name: String, textStyle: TextStyle) -> Font {
    let fontSize = UIFont.preferredFont(forTextStyle: self.mapToUIFontTextStyle(textStyle)).pointSize
    return Font.custom(name, size: fontSize, relativeTo: textStyle)
  }
  static func mappedFont(_ name: String, size: CGFloat) -> Font {
    return Font.custom(name, size: size)
  }

  // swiftlint:disable:next cyclomatic_complexity
  static func mapToUIFontTextStyle(_ textStyle: SwiftUI.Font.TextStyle) -> UIFont.TextStyle {
    switch textStyle {
    case .largeTitle:
      return .largeTitle
    case .title:
      return .title1
    case .title2:
      return .title2
    case .title3:
      return .title3
    case .headline:
      return .headline
    case .subheadline:
      return .subheadline
    case .callout:
      return .callout
    case .body:
      return .body
    case .caption:
      return .caption1
    case .caption2:
      return .caption2
    case .footnote:
      return .footnote
    @unknown default:
      fatalError("Missing a TextStyle mapping")
    }
  }
}

// swiftlint:enable convenience_type
