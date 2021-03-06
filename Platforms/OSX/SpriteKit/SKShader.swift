
@available(OSX 10.10, *)
class SKShader : NSObject, NSCopying, NSCoding {
  init(source source: String)
  init(source source: String, uniforms uniforms: [SKUniform])
  convenience init(fileNamed name: String)
  var source: String?
  var uniforms: [SKUniform]
  func addUniform(_ uniform: SKUniform)
  func uniformNamed(_ name: String) -> SKUniform?
  func removeUniformNamed(_ name: String)
  @available(OSX 10.10, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.10, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
