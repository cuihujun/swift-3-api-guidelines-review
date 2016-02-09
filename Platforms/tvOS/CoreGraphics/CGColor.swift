
class CGColor {
}
@available(tvOS 2.0, *)
func CGColorCreate(space: CGColorSpace?, _ components: UnsafePointer<CGFloat>) -> CGColor?
@available(tvOS 2.0, *)
func CGColorCreateWithPattern(space: CGColorSpace?, _ pattern: CGPattern?, _ components: UnsafePointer<CGFloat>) -> CGColor?
@available(tvOS 2.0, *)
func CGColorCreateCopy(color: CGColor?) -> CGColor?
@available(tvOS 2.0, *)
func CGColorCreateCopyWithAlpha(color: CGColor?, _ alpha: CGFloat) -> CGColor?
@available(tvOS 9.0, *)
func CGColorCreateCopyByMatchingToColorSpace(_: CGColorSpace?, _ intent: CGColorRenderingIntent, _ color: CGColor?, _ options: CFDictionary?) -> CGColor?
@available(tvOS 2.0, *)
func CGColorEqualToColor(color1: CGColor?, _ color2: CGColor?) -> Bool
@available(tvOS 2.0, *)
func CGColorGetNumberOfComponents(color: CGColor?) -> Int
@available(tvOS 2.0, *)
func CGColorGetComponents(color: CGColor?) -> UnsafePointer<CGFloat>
@available(tvOS 2.0, *)
func CGColorGetAlpha(color: CGColor?) -> CGFloat
@available(tvOS 2.0, *)
func CGColorGetColorSpace(color: CGColor?) -> CGColorSpace?
@available(tvOS 2.0, *)
func CGColorGetPattern(color: CGColor?) -> CGPattern?
@available(tvOS 2.0, *)
func CGColorGetTypeID() -> CFTypeID