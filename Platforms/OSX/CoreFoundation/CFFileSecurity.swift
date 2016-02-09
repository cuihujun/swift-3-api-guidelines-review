
var __COREFOUNDATION_CFFILESECURITY__: Int32 { get }
class CFFileSecurity {
}
@available(OSX 10.7, *)
func CFFileSecurityGetTypeID() -> CFTypeID
@available(OSX 10.7, *)
func CFFileSecurityCreate(allocator: CFAllocator!) -> CFFileSecurity!
@available(OSX 10.7, *)
func CFFileSecurityCreateCopy(allocator: CFAllocator!, _ fileSec: CFFileSecurity!) -> CFFileSecurity!
@available(OSX 10.7, *)
func CFFileSecurityCopyOwnerUUID(fileSec: CFFileSecurity!, _ ownerUUID: UnsafeMutablePointer<Unmanaged<CFUUID>?>) -> Bool
@available(OSX 10.7, *)
func CFFileSecuritySetOwnerUUID(fileSec: CFFileSecurity!, _ ownerUUID: CFUUID!) -> Bool
@available(OSX 10.7, *)
func CFFileSecurityCopyGroupUUID(fileSec: CFFileSecurity!, _ groupUUID: UnsafeMutablePointer<Unmanaged<CFUUID>?>) -> Bool
@available(OSX 10.7, *)
func CFFileSecuritySetGroupUUID(fileSec: CFFileSecurity!, _ groupUUID: CFUUID!) -> Bool
@available(OSX 10.7, *)
func CFFileSecurityCopyAccessControlList(fileSec: CFFileSecurity!, _ accessControlList: UnsafeMutablePointer<acl_t>) -> Bool
@available(OSX 10.7, *)
func CFFileSecuritySetAccessControlList(fileSec: CFFileSecurity!, _ accessControlList: acl_t) -> Bool
@available(OSX 10.7, *)
func CFFileSecurityGetOwner(fileSec: CFFileSecurity!, _ owner: UnsafeMutablePointer<uid_t>) -> Bool
@available(OSX 10.7, *)
func CFFileSecuritySetOwner(fileSec: CFFileSecurity!, _ owner: uid_t) -> Bool
@available(OSX 10.7, *)
func CFFileSecurityGetGroup(fileSec: CFFileSecurity!, _ group: UnsafeMutablePointer<gid_t>) -> Bool
@available(OSX 10.7, *)
func CFFileSecuritySetGroup(fileSec: CFFileSecurity!, _ group: gid_t) -> Bool
@available(OSX 10.7, *)
func CFFileSecurityGetMode(fileSec: CFFileSecurity!, _ mode: UnsafeMutablePointer<mode_t>) -> Bool
@available(OSX 10.7, *)
func CFFileSecuritySetMode(fileSec: CFFileSecurity!, _ mode: mode_t) -> Bool
@available(OSX 10.8, *)
struct CFFileSecurityClearOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var owner: CFFileSecurityClearOptions { get }
  static var group: CFFileSecurityClearOptions { get }
  static var mode: CFFileSecurityClearOptions { get }
  static var ownerUUID: CFFileSecurityClearOptions { get }
  static var groupUUID: CFFileSecurityClearOptions { get }
  static var accessControlList: CFFileSecurityClearOptions { get }
}
@available(OSX 10.8, *)
func CFFileSecurityClearProperties(fileSec: CFFileSecurity!, _ clearPropertyMask: CFFileSecurityClearOptions) -> Bool