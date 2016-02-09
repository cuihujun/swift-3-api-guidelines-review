
typealias ExtAudioFileRef = COpaquePointer
typealias ExtAudioFilePropertyID = UInt32
var kExtAudioFileProperty_FileDataFormat: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_FileChannelLayout: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_ClientDataFormat: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_ClientChannelLayout: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_CodecManufacturer: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_AudioConverter: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_AudioFile: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_FileMaxPacketSize: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_ClientMaxPacketSize: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_FileLengthFrames: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_ConverterConfig: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_IOBufferSizeBytes: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_IOBuffer: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_PacketTable: ExtAudioFilePropertyID { get }
var kExtAudioFileError_InvalidProperty: OSStatus { get }
var kExtAudioFileError_InvalidPropertySize: OSStatus { get }
var kExtAudioFileError_NonPCMClientFormat: OSStatus { get }
var kExtAudioFileError_InvalidChannelMap: OSStatus { get }
var kExtAudioFileError_InvalidOperationOrder: OSStatus { get }
var kExtAudioFileError_InvalidDataFormat: OSStatus { get }
var kExtAudioFileError_MaxPacketSizeUnknown: OSStatus { get }
var kExtAudioFileError_InvalidSeek: OSStatus { get }
var kExtAudioFileError_AsyncWriteTooLarge: OSStatus { get }
var kExtAudioFileError_AsyncWriteBufferOverflow: OSStatus { get }
@available(OSX 10.5, *)
func ExtAudioFileOpenURL(inURL: CFURL, _ outExtAudioFile: UnsafeMutablePointer<ExtAudioFileRef>) -> OSStatus
@available(OSX 10.4, *)
func ExtAudioFileWrapAudioFileID(inFileID: AudioFileID, _ inForWriting: Bool, _ outExtAudioFile: UnsafeMutablePointer<ExtAudioFileRef>) -> OSStatus
@available(OSX 10.5, *)
func ExtAudioFileCreateWithURL(inURL: CFURL, _ inFileType: AudioFileTypeID, _ inStreamDesc: UnsafePointer<AudioStreamBasicDescription>, _ inChannelLayout: UnsafePointer<AudioChannelLayout>, _ inFlags: UInt32, _ outExtAudioFile: UnsafeMutablePointer<ExtAudioFileRef>) -> OSStatus
@available(OSX 10.4, *)
func ExtAudioFileDispose(inExtAudioFile: ExtAudioFileRef) -> OSStatus
@available(OSX 10.4, *)
func ExtAudioFileRead(inExtAudioFile: ExtAudioFileRef, _ ioNumberFrames: UnsafeMutablePointer<UInt32>, _ ioData: UnsafeMutablePointer<AudioBufferList>) -> OSStatus
@available(OSX 10.4, *)
func ExtAudioFileWrite(inExtAudioFile: ExtAudioFileRef, _ inNumberFrames: UInt32, _ ioData: UnsafePointer<AudioBufferList>) -> OSStatus
@available(OSX 10.4, *)
func ExtAudioFileWriteAsync(inExtAudioFile: ExtAudioFileRef, _ inNumberFrames: UInt32, _ ioData: UnsafePointer<AudioBufferList>) -> OSStatus
@available(OSX 10.4, *)
func ExtAudioFileSeek(inExtAudioFile: ExtAudioFileRef, _ inFrameOffset: Int64) -> OSStatus
@available(OSX 10.4, *)
func ExtAudioFileTell(inExtAudioFile: ExtAudioFileRef, _ outFrameOffset: UnsafeMutablePointer<Int64>) -> OSStatus
@available(OSX 10.4, *)
func ExtAudioFileGetPropertyInfo(inExtAudioFile: ExtAudioFileRef, _ inPropertyID: ExtAudioFilePropertyID, _ outSize: UnsafeMutablePointer<UInt32>, _ outWritable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.4, *)
func ExtAudioFileGetProperty(inExtAudioFile: ExtAudioFileRef, _ inPropertyID: ExtAudioFilePropertyID, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus
@available(OSX 10.4, *)
func ExtAudioFileSetProperty(inExtAudioFile: ExtAudioFileRef, _ inPropertyID: ExtAudioFilePropertyID, _ inPropertyDataSize: UInt32, _ inPropertyData: UnsafePointer<Void>) -> OSStatus