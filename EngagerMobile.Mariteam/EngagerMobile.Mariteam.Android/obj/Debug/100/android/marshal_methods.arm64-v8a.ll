; ModuleID = 'obj\Debug\100\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\100\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [306 x i64] [
	i64 64965700876137411, ; 0: Microsoft.AppCenter.Distribute => 0xe6cdf5f34e73c3 => 16
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 18
	i64 196720943101637631, ; 2: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 147
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 88
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 113
	i64 295915112840604065, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 114
	i64 403694196094993479, ; 6: Xamarin.AndroidX.MediaRouter => 0x59a35bb84210447 => 108
	i64 533980546060132701, ; 7: Microsoft.AppCenter.Analytics.dll => 0x769147a3ce2215d => 11
	i64 590536689428908136, ; 8: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x83201fd803ec868 => 46
	i64 634308326490598313, ; 9: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 103
	i64 687654259221141486, ; 10: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 129
	i64 702024105029695270, ; 11: System.Drawing.Common => 0x9be17343c0e7726 => 137
	i64 720058930071658100, ; 12: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 97
	i64 816102801403336439, ; 13: Xamarin.Android.Support.Collections => 0xb53612c89d8d6f7 => 50
	i64 822256607215579516, ; 14: Microsoft.AppCenter.Analytics.Android.Bindings.dll => 0xb693e071b4d717c => 10
	i64 846634227898301275, ; 15: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0xbbfd9583890bb5b => 43
	i64 872800313462103108, ; 16: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 94
	i64 940822596282819491, ; 17: System.Transactions => 0xd0e792aa81923a3 => 135
	i64 996343623809489702, ; 18: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 126
	i64 1000557547492888992, ; 19: Mono.Security.dll => 0xde2b1c9cba651a0 => 152
	i64 1120440138749646132, ; 20: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 128
	i64 1301485588176585670, ; 21: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 32
	i64 1315114680217950157, ; 22: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 83
	i64 1342439039765371018, ; 23: Xamarin.Android.Support.Fragment => 0x12a14d31b1d4d88a => 60
	i64 1400031058434376889, ; 24: Plugin.Permissions.dll => 0x136de8d4787ec4b9 => 26
	i64 1425944114962822056, ; 25: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 5
	i64 1451832606041849089, ; 26: SignaturePad.Forms.dll => 0x1425f21024743d01 => 28
	i64 1490981186906623721, ; 27: Xamarin.Android.Support.VersionedParcelable => 0x14b1077d6c5c0ee9 => 76
	i64 1518315023656898250, ; 28: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 34
	i64 1624659445732251991, ; 29: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 80
	i64 1636321030536304333, ; 30: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 98
	i64 1731380447121279447, ; 31: Newtonsoft.Json => 0x18071957e9b889d7 => 20
	i64 1744702963312407042, ; 32: Xamarin.Android.Support.v7.AppCompat => 0x18366e19eeceb202 => 70
	i64 1795316252682057001, ; 33: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 81
	i64 1836611346387731153, ; 34: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 113
	i64 1860886102525309849, ; 35: Xamarin.Android.Support.v7.RecyclerView.dll => 0x19d3320d047b7399 => 74
	i64 1875917498431009007, ; 36: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 79
	i64 1938067011858688285, ; 37: Xamarin.Android.Support.v4.dll => 0x1ae565add0bd691d => 69
	i64 1981742497975770890, ; 38: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 104
	i64 2133195048986300728, ; 39: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 20
	i64 2136356949452311481, ; 40: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 109
	i64 2165725771938924357, ; 41: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 86
	i64 2197658138908603915, ; 42: Microsoft.AppCenter.Android.Bindings.dll => 0x1e7fa66f0364b60b => 12
	i64 2262844636196693701, ; 43: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 94
	i64 2284400282711631002, ; 44: System.Web.Services => 0x1fb3d1f42fd4249a => 141
	i64 2329709569556905518, ; 45: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 101
	i64 2382620431232230310, ; 46: EngagerMobile.Mariteam.ApplicationCore => 0x2110c4a8962f63a6 => 1
	i64 2470498323731680442, ; 47: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 89
	i64 2479423007379663237, ; 48: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 117
	i64 2497223385847772520, ; 49: System.Runtime => 0x22a7eb7046413568 => 37
	i64 2547086958574651984, ; 50: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 78
	i64 2592350477072141967, ; 51: System.Xml.dll => 0x23f9e10627330e8f => 38
	i64 2624866290265602282, ; 52: mscorlib.dll => 0x246d65fbde2db8ea => 19
	i64 2749910993029543237, ; 53: Microsoft.AppCenter.Crashes => 0x2629a57a7f77b545 => 14
	i64 2801558180824670388, ; 54: Plugin.CurrentActivity.dll => 0x26e1225279a4e0b4 => 23
	i64 2949706848458024531, ; 55: Xamarin.Android.Support.SlidingPaneLayout => 0x28ef76c01de0a653 => 66
	i64 2960931600190307745, ; 56: Xamarin.Forms.Core => 0x2917579a49927da1 => 124
	i64 2977248461349026546, ; 57: Xamarin.Android.Support.DrawerLayout => 0x29514fb392c97af2 => 59
	i64 3017704767998173186, ; 58: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 128
	i64 3022227708164871115, ; 59: Xamarin.Android.Support.Media.Compat.dll => 0x29f11c168f8293cb => 64
	i64 3289009412538028488, ; 60: Microsoft.AppCenter.Distribute.Android.Bindings => 0x2da4e8a2813ed1c8 => 15
	i64 3289520064315143713, ; 61: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 100
	i64 3364695309916733813, ; 62: Xamarin.Firebase.Common => 0x2eb1cc8eb5028175 => 121
	i64 3411255996856937470, ; 63: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 130
	i64 3522470458906976663, ; 64: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 115
	i64 3531994851595924923, ; 65: System.Numerics => 0x31042a9aade235bb => 134
	i64 3571415421602489686, ; 66: System.Runtime.dll => 0x319037675df7e556 => 37
	i64 3609787854626478660, ; 67: Plugin.CurrentActivity => 0x32188aeda587da44 => 23
	i64 3716579019761409177, ; 68: netstandard.dll => 0x3393f0ed5c8c5c99 => 132
	i64 3727469159507183293, ; 69: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 112
	i64 3955305636023511547, ; 70: Microsoft.AppCenter.Crashes.Android.Bindings.dll => 0x36e41185154829fb => 13
	i64 4187479170553454871, ; 71: System.Linq.Expressions => 0x3a1cea1e912fa117 => 147
	i64 4247996603072512073, ; 72: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 131
	i64 4252163538099460320, ; 73: Xamarin.Android.Support.ViewPager.dll => 0x3b02b8357f4958e0 => 77
	i64 4264996749430196783, ; 74: Xamarin.Android.Support.Transition.dll => 0x3b304ff259fb8a2f => 68
	i64 4337444564132831293, ; 75: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 31
	i64 4349341163892612332, ; 76: Xamarin.Android.Support.DocumentFile => 0x3c5bf6bea8cd9cec => 58
	i64 4358874816810663266, ; 77: EngagerMobile.Mariteam.Common => 0x3c7dd58d34653d62 => 6
	i64 4416987920449902723, ; 78: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0x3d4c4b1c879b9883 => 49
	i64 4525561845656915374, ; 79: System.ServiceModel.Internals => 0x3ece06856b710dae => 142
	i64 4629398872588149562, ; 80: EngagerMobile.Mariteam => 0x403eedbf3c35e33a => 7
	i64 4636684751163556186, ; 81: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 119
	i64 4782108999019072045, ; 82: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 85
	i64 4794310189461587505, ; 83: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 78
	i64 4795410492532947900, ; 84: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 115
	i64 4841234827713643511, ; 85: Xamarin.Android.Support.CoordinaterLayout => 0x432f856d041f03f7 => 52
	i64 4963205065368577818, ; 86: Xamarin.Android.Support.LocalBroadcastManager.dll => 0x44e0d8b5f4b6a71a => 63
	i64 5142919913060024034, ; 87: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 125
	i64 5178572682164047940, ; 88: Xamarin.Android.Support.Print.dll => 0x47ddfc6acbee1044 => 65
	i64 5202753749449073649, ; 89: Plugin.Media => 0x4833e4f841be63f1 => 25
	i64 5205316157927637098, ; 90: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 106
	i64 5288341611614403055, ; 91: Xamarin.Android.Support.Interpolator.dll => 0x4963f6ad4b3179ef => 61
	i64 5348796042099802469, ; 92: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 107
	i64 5376510917114486089, ; 93: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 117
	i64 5408338804355907810, ; 94: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 116
	i64 5439315836349573567, ; 95: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0x4b7c54ef36c5e9bf => 47
	i64 5446034149219586269, ; 96: System.Diagnostics.Debug => 0x4b94333452e150dd => 149
	i64 5507995362134886206, ; 97: System.Core.dll => 0x4c705499688c873e => 35
	i64 5563049671862343767, ; 98: Xamarin.AndroidX.Palette.dll => 0x4d33ec33c7355857 => 110
	i64 5619971803549996551, ; 99: Microsoft.AppCenter => 0x4dfe2694564f1607 => 17
	i64 5767696078500135884, ; 100: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 48
	i64 5819465594466874502, ; 101: SignaturePad.Forms => 0x50c2e52014ce3486 => 28
	i64 5896680224035167651, ; 102: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 102
	i64 6025176081837716467, ; 103: SQLitePCLRaw.lib.e_sqlite3.dll => 0x539db9b9431df3f3 => 33
	i64 6044705416426755068, ; 104: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0x53e31b8ccdff13fc => 67
	i64 6085203216496545422, ; 105: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 126
	i64 6086316965293125504, ; 106: FormsViewGroup.dll => 0x5476f10882baef80 => 8
	i64 6183170893902868313, ; 107: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 31
	i64 6300241346327543539, ; 108: Xamarin.Firebase.Iid => 0x576ef41fd714fef3 => 122
	i64 6311200438583329442, ; 109: Xamarin.Android.Support.LocalBroadcastManager => 0x5795e35c580c82a2 => 63
	i64 6319713645133255417, ; 110: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 103
	i64 6401687960814735282, ; 111: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 101
	i64 6405879832841858445, ; 112: Xamarin.Android.Support.Vector.Drawable.dll => 0x58e641c4a660ad8d => 75
	i64 6437453774371681866, ; 113: Xamarin.Android.Support.v7.Palette => 0x59566e19c76bf64a => 73
	i64 6504860066809920875, ; 114: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 86
	i64 6548213210057960872, ; 115: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 92
	i64 6588599331800941662, ; 116: Xamarin.Android.Support.v4 => 0x5b6f682f335f045e => 69
	i64 6591024623626361694, ; 117: System.Web.Services.dll => 0x5b7805f9751a1b5e => 141
	i64 6659513131007730089, ; 118: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 97
	i64 6876862101832370452, ; 119: System.Xml.Linq => 0x5f6f85a57d108914 => 39
	i64 7036436454368433159, ; 120: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 99
	i64 7103753931438454322, ; 121: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 96
	i64 7164916624638427275, ; 122: Xamarin.Android.Support.v7.MediaRouter.dll => 0x636ee5b570dd408b => 72
	i64 7194160955514091247, ; 123: Xamarin.Android.Support.CursorAdapter.dll => 0x63d6cb45d266f6ef => 55
	i64 7270811800166795866, ; 124: System.Linq => 0x64e71ccf51a90a5a => 150
	i64 7291284685109936435, ; 125: Microsoft.AppCenter.Analytics => 0x652fd8ca4c394133 => 11
	i64 7338192458477945005, ; 126: System.Reflection => 0x65d67f295d0740ad => 148
	i64 7488575175965059935, ; 127: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 39
	i64 7635363394907363464, ; 128: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 124
	i64 7654504624184590948, ; 129: System.Net.Http => 0x6a3a4366801b8264 => 4
	i64 7820441508502274321, ; 130: System.Data => 0x6c87ca1e14ff8111 => 133
	i64 7821246742157274664, ; 131: Xamarin.Android.Support.AsyncLayoutInflater => 0x6c8aa67926f72e28 => 49
	i64 7836164640616011524, ; 132: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 80
	i64 7879037620440914030, ; 133: Xamarin.Android.Support.v7.AppCompat.dll => 0x6d57f6f88a51d86e => 70
	i64 8003488281596490781, ; 134: Xamarin.Android.Support.v7.MediaRouter => 0x6f121a30148f741d => 72
	i64 8044118961405839122, ; 135: System.ComponentModel.Composition => 0x6fa2739369944712 => 140
	i64 8064050204834738623, ; 136: System.Collections.dll => 0x6fe942efa61731bf => 145
	i64 8083354569033831015, ; 137: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 100
	i64 8101777744205214367, ; 138: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 48
	i64 8103644804370223335, ; 139: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 136
	i64 8113615946733131500, ; 140: System.Reflection.Extensions => 0x70995ab73cf916ec => 3
	i64 8166306397637729642, ; 141: EngagerMobile.Mariteam.Common.dll => 0x71548c66d6325d6a => 6
	i64 8167236081217502503, ; 142: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 9
	i64 8185542183669246576, ; 143: System.Collections => 0x7198e33f4794aa70 => 145
	i64 8196541262927413903, ; 144: Xamarin.Android.Support.Interpolator => 0x71bff6d9fb9ec28f => 61
	i64 8290740647658429042, ; 145: System.Runtime.Extensions => 0x730ea0b15c929a72 => 146
	i64 8385935383968044654, ; 146: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0x7460d3cd16cb566e => 45
	i64 8428678171113854126, ; 147: Xamarin.Firebase.Iid.dll => 0x74f8ae23bb5494ae => 122
	i64 8465511506719290632, ; 148: Xamarin.Firebase.Messaging.dll => 0x757b89dcf7fc3508 => 123
	i64 8601935802264776013, ; 149: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 116
	i64 8626175481042262068, ; 150: Java.Interop => 0x77b654e585b55834 => 9
	i64 8684531736582871431, ; 151: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 139
	i64 8808820144457481518, ; 152: Xamarin.Android.Support.Loader.dll => 0x7a3f374010b17d2e => 62
	i64 8917102979740339192, ; 153: Xamarin.Android.Support.DocumentFile.dll => 0x7bbfe9ea4d000bf8 => 58
	i64 8974768617058262486, ; 154: Xamarin.AndroidX.MediaRouter.dll => 0x7c8cc881c114ddd6 => 108
	i64 9170803483914160232, ; 155: EngagerMobile.Mariteam.ApplicationCore.dll => 0x7f453d2dfb9e4868 => 1
	i64 9324707631942237306, ; 156: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 81
	i64 9439625609732276754, ; 157: Plugin.Connectivity.dll => 0x8300497a90c5c212 => 22
	i64 9475595603812259686, ; 158: Xamarin.Android.Support.Design => 0x838013ff707b9766 => 57
	i64 9662334977499516867, ; 159: System.Numerics.dll => 0x8617827802b0cfc3 => 134
	i64 9678050649315576968, ; 160: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 89
	i64 9711637524876806384, ; 161: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 107
	i64 9732461928540118312, ; 162: Plugin.Connectivity.Abstractions.dll => 0x8710a68f28a59d28 => 21
	i64 9793247711277112057, ; 163: SQLitePCLRaw.batteries_green.dll => 0x87e89ae814145af9 => 30
	i64 9808709177481450983, ; 164: Mono.Android.dll => 0x881f890734e555e7 => 18
	i64 9834056768316610435, ; 165: System.Transactions.dll => 0x8879968718899783 => 135
	i64 9866412715007501892, ; 166: Xamarin.Android.Arch.Lifecycle.Common.dll => 0x88ec8a16fd6b6644 => 42
	i64 9875200773399460291, ; 167: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 129
	i64 9998632235833408227, ; 168: Mono.Security => 0x8ac2470b209ebae3 => 152
	i64 10038780035334861115, ; 169: System.Net.Http.dll => 0x8b50e941206af13b => 4
	i64 10062927935428175733, ; 170: EngagerMobile.Mariteam.Android => 0x8ba6b3a43f8d2775 => 0
	i64 10229024438826829339, ; 171: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 92
	i64 10303855825347935641, ; 172: Xamarin.Android.Support.Loader => 0x8efea647eeb3fd99 => 62
	i64 10363495123250631811, ; 173: Xamarin.Android.Support.Collections.dll => 0x8fd287e80cd8d483 => 50
	i64 10430153318873392755, ; 174: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 90
	i64 10545655496944366125, ; 175: EngagerMobile.Mariteam.Android.dll => 0x9259b1cd1b03b22d => 0
	i64 10566960649245365243, ; 176: System.Globalization.dll => 0x92a562b96dcd13fb => 151
	i64 10635644668885628703, ; 177: Xamarin.Android.Support.DrawerLayout.dll => 0x93996679ee34771f => 59
	i64 10714184849103829812, ; 178: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 146
	i64 10799329113984400778, ; 179: EngagerMobile.Mariteam.Services.dll => 0x95deec9ca392fd8a => 2
	i64 10807679263882430897, ; 180: SQLitePCLRaw.batteries_green => 0x95fc97076a1149b1 => 30
	i64 10847732767863316357, ; 181: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 83
	i64 10850923258212604222, ; 182: Xamarin.Android.Arch.Lifecycle.Runtime => 0x9696393672c9593e => 45
	i64 10893486831770828839, ; 183: EngagerMobile.Mariteam.Services => 0x972d708ead188027 => 2
	i64 11023048688141570732, ; 184: System.Core => 0x98f9bc61168392ac => 35
	i64 11037814507248023548, ; 185: System.Xml => 0x992e31d0412bf7fc => 38
	i64 11162124722117608902, ; 186: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 120
	i64 11202883116519673972, ; 187: Xamarin.AndroidX.AppCompat.Resources => 0x9b78a2d6cc605074 => 82
	i64 11340910727871153756, ; 188: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 91
	i64 11376461258732682436, ; 189: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 51
	i64 11392833485892708388, ; 190: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 111
	i64 11395105072750394936, ; 191: Xamarin.Android.Support.v7.CardView => 0x9e238bb09789fe38 => 71
	i64 11472067811128429120, ; 192: Microsoft.AppCenter.Crashes.Android.Bindings => 0x9f34f8e48180ca40 => 13
	i64 11529969570048099689, ; 193: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 120
	i64 11578238080964724296, ; 194: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 99
	i64 11580057168383206117, ; 195: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 79
	i64 11597940890313164233, ; 196: netstandard => 0xa0f429ca8d1805c9 => 132
	i64 11672361001936329215, ; 197: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 96
	i64 11724931932191659106, ; 198: Xamarin.AndroidX.Palette => 0xa2b7537891eb1462 => 110
	i64 11739066727115742305, ; 199: SQLite-net.dll => 0xa2e98afdf8575c61 => 29
	i64 11743665907891708234, ; 200: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 143
	i64 11805766896659882188, ; 201: Plugin.Connectivity => 0xa3d68271607a60cc => 22
	i64 11806260347154423189, ; 202: SQLite-net => 0xa3d8433bc5eb5d95 => 29
	i64 11834399401546345650, ; 203: Xamarin.Android.Support.SlidingPaneLayout.dll => 0xa43c3b8deb43ecb2 => 66
	i64 11854093697108963210, ; 204: Microsoft.AppCenter.Crashes.dll => 0xa48233696e606f8a => 14
	i64 11865714326292153359, ; 205: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa4ab7c5000e8440f => 44
	i64 11866610289935986454, ; 206: Xamarin.Android.Support.v7.Palette.dll => 0xa4aeab2fcba12f16 => 73
	i64 12006736334756399793, ; 207: SignaturePad => 0xa6a07f1500ee4ab1 => 27
	i64 12123043025855404482, ; 208: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 3
	i64 12137774235383566651, ; 209: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 118
	i64 12250081775278992142, ; 210: Microsoft.AppCenter.Analytics.Android.Bindings => 0xaa0108788cfdab0e => 10
	i64 12263794765274154115, ; 211: Microsoft.AppCenter.dll => 0xaa31c05cd6760483 => 17
	i64 12279246230491828964, ; 212: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 34
	i64 12388767885335911387, ; 213: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0xabedbec0d236dbdb => 44
	i64 12414299427252656003, ; 214: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 51
	i64 12450197211230333945, ; 215: SignaturePad.dll => 0xacc7fc664ef16bf9 => 27
	i64 12451044538927396471, ; 216: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 95
	i64 12466513435562512481, ; 217: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 105
	i64 12487638416075308985, ; 218: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 93
	i64 12501328358063843848, ; 219: Plugin.Geolocator.dll => 0xad7da3e822e9aa08 => 24
	i64 12538491095302438457, ; 220: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 87
	i64 12550732019250633519, ; 221: System.IO.Compression => 0xae2d28465e8e1b2f => 138
	i64 12559163541709922900, ; 222: Xamarin.Android.Support.v7.CardView.dll => 0xae4b1cb32ba82254 => 71
	i64 12700543734426720211, ; 223: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 88
	i64 12952608645614506925, ; 224: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 54
	i64 12963446364377008305, ; 225: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 137
	i64 13358059602087096138, ; 226: Xamarin.Android.Support.Fragment.dll => 0xb9615c6f1ee5af4a => 60
	i64 13370592475155966277, ; 227: System.Runtime.Serialization => 0xb98de304062ea945 => 5
	i64 13401370062847626945, ; 228: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 118
	i64 13491513212026656886, ; 229: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 84
	i64 13572454107664307259, ; 230: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 112
	i64 13629449975987305271, ; 231: Microsoft.AppCenter.Android.Bindings => 0xbd25888a8eadfb37 => 12
	i64 13643785327914841093, ; 232: Plugin.Media.dll => 0xbd587677c60cf405 => 25
	i64 13647894001087880694, ; 233: System.Data.dll => 0xbd670f48cb071df6 => 133
	i64 13959074834287824816, ; 234: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 95
	i64 13967638549803255703, ; 235: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 125
	i64 14124974489674258913, ; 236: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 87
	i64 14125464355221830302, ; 237: System.Threading.dll => 0xc407bafdbc707a9e => 144
	i64 14172845254133543601, ; 238: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 109
	i64 14261073672896646636, ; 239: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 111
	i64 14327695147300244862, ; 240: System.Reflection.dll => 0xc6d632d338eb4d7e => 148
	i64 14369828458497533121, ; 241: Xamarin.Android.Support.Vector.Drawable => 0xc76be2d9300b64c1 => 75
	i64 14400856865250966808, ; 242: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 53
	i64 14486659737292545672, ; 243: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 102
	i64 14644440854989303794, ; 244: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 106
	i64 14661790646341542033, ; 245: Xamarin.Android.Support.SwipeRefreshLayout => 0xcb7924e94e552091 => 67
	i64 14789919016435397935, ; 246: Xamarin.Firebase.Common.dll => 0xcd4058fc2f6d352f => 121
	i64 14852515768018889994, ; 247: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 91
	i64 14860968717792381699, ; 248: Microsoft.AppCenter.Distribute.Android.Bindings.dll => 0xce3cc44fe2350b03 => 15
	i64 14987728460634540364, ; 249: System.IO.Compression.dll => 0xcfff1ba06622494c => 138
	i64 14988210264188246988, ; 250: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 93
	i64 15133485256822086103, ; 251: System.Linq.dll => 0xd204f0a9127dd9d7 => 150
	i64 15188640517174936311, ; 252: Xamarin.Android.Arch.Core.Common => 0xd2c8e413d75142f7 => 40
	i64 15246441518555807158, ; 253: Xamarin.Android.Arch.Core.Common.dll => 0xd3963dc832493db6 => 40
	i64 15326820765897713587, ; 254: Xamarin.Android.Arch.Core.Runtime.dll => 0xd4b3ce481769e7b3 => 41
	i64 15370334346939861994, ; 255: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 90
	i64 15418891414777631748, ; 256: Xamarin.Android.Support.Transition => 0xd5fae80c88241404 => 68
	i64 15457813392950723921, ; 257: Xamarin.Android.Support.Media.Compat => 0xd6852f61c31a8551 => 64
	i64 15568534730848034786, ; 258: Xamarin.Android.Support.VersionedParcelable.dll => 0xd80e8bda21875fe2 => 76
	i64 15609085926864131306, ; 259: System.dll => 0xd89e9cf3334914ea => 36
	i64 15777549416145007739, ; 260: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 114
	i64 15810740023422282496, ; 261: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 127
	i64 15817206913877585035, ; 262: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 143
	i64 15845421705271187762, ; 263: Microsoft.AppCenter.Distribute.dll => 0xdbe63f169af41932 => 16
	i64 15927756110560504529, ; 264: EngagerMobile.Mariteam.dll => 0xdd0ac1cb2f042ad1 => 7
	i64 15930129725311349754, ; 265: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 131
	i64 16154507427712707110, ; 266: System => 0xe03056ea4e39aa26 => 36
	i64 16242842420508142678, ; 267: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe16a2b1f8908ac56 => 52
	i64 16259387015512368243, ; 268: Xamarin.AndroidX.AppCompat.Resources.dll => 0xe1a4f2583d36a473 => 82
	i64 16392891804791780225, ; 269: SQLitePCLRaw.lib.e_sqlite3 => 0xe37f403e4206b381 => 33
	i64 16565028646146589191, ; 270: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 140
	i64 16755018182064898362, ; 271: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 32
	i64 16767985610513713374, ; 272: Xamarin.Android.Arch.Core.Runtime => 0xe8b3da12798808de => 41
	i64 16822611501064131242, ; 273: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 136
	i64 16833383113903931215, ; 274: mscorlib => 0xe99c30c1484d7f4f => 19
	i64 16895806301542741427, ; 275: Plugin.Permissions => 0xea79f6503d42f5b3 => 26
	i64 16932527889823454152, ; 276: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 54
	i64 17009591894298689098, ; 277: Xamarin.Android.Support.Animated.Vector.Drawable => 0xec0e35b50a097e4a => 47
	i64 17037200463775726619, ; 278: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 98
	i64 17238569155936077394, ; 279: Plugin.Connectivity.Abstractions => 0xef3bb3503f934652 => 21
	i64 17383232329670771222, ; 280: Xamarin.Android.Support.CustomView.dll => 0xf13da5b41a1cc216 => 56
	i64 17428701562824544279, ; 281: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 53
	i64 17483646997724851973, ; 282: Xamarin.Android.Support.ViewPager => 0xf2a2644fe5b6ef05 => 77
	i64 17524135665394030571, ; 283: Xamarin.Android.Support.Print => 0xf3323c8a739097eb => 65
	i64 17544493274320527064, ; 284: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 85
	i64 17627500474728259406, ; 285: System.Globalization => 0xf4a176498a351f4e => 151
	i64 17666959971718154066, ; 286: Xamarin.Android.Support.CustomView => 0xf52da67d9f4e4752 => 56
	i64 17685921127322830888, ; 287: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 149
	i64 17704177640604968747, ; 288: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 105
	i64 17710060891934109755, ; 289: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 104
	i64 17760961058993581169, ; 290: Xamarin.Android.Arch.Lifecycle.Common => 0xf67b9bfb46dbac71 => 42
	i64 17786996386789405829, ; 291: Plugin.Geolocator => 0xf6d81af967bd3485 => 24
	i64 17841643939744178149, ; 292: Xamarin.Android.Arch.Lifecycle.ViewModel => 0xf79a40a25573dfe5 => 46
	i64 17882897186074144999, ; 293: FormsViewGroup => 0xf82cd03e3ac830e7 => 8
	i64 17892495832318972303, ; 294: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 127
	i64 17928294245072900555, ; 295: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 139
	i64 17936749993673010118, ; 296: Xamarin.Android.Support.Design.dll => 0xf8ec231615deabc6 => 57
	i64 17958105683855786126, ; 297: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xf93801f92d25c08e => 43
	i64 17986907704309214542, ; 298: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 130
	i64 18025913125965088385, ; 299: System.Threading => 0xfa28e87b91334681 => 144
	i64 18090425465832348288, ; 300: Xamarin.Android.Support.v7.RecyclerView => 0xfb0e1a1d2e9e1a80 => 74
	i64 18116111925905154859, ; 301: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 84
	i64 18129453464017766560, ; 302: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 142
	i64 18301997741680159453, ; 303: Xamarin.Android.Support.CursorAdapter => 0xfdfdc1fa58d8eadd => 55
	i64 18337470502355292274, ; 304: Xamarin.Firebase.Messaging => 0xfe7bc8440c175072 => 123
	i64 18380184030268848184 ; 305: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 119
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [306 x i32] [
	i32 16, i32 18, i32 147, i32 88, i32 113, i32 114, i32 108, i32 11, ; 0..7
	i32 46, i32 103, i32 129, i32 137, i32 97, i32 50, i32 10, i32 43, ; 8..15
	i32 94, i32 135, i32 126, i32 152, i32 128, i32 32, i32 83, i32 60, ; 16..23
	i32 26, i32 5, i32 28, i32 76, i32 34, i32 80, i32 98, i32 20, ; 24..31
	i32 70, i32 81, i32 113, i32 74, i32 79, i32 69, i32 104, i32 20, ; 32..39
	i32 109, i32 86, i32 12, i32 94, i32 141, i32 101, i32 1, i32 89, ; 40..47
	i32 117, i32 37, i32 78, i32 38, i32 19, i32 14, i32 23, i32 66, ; 48..55
	i32 124, i32 59, i32 128, i32 64, i32 15, i32 100, i32 121, i32 130, ; 56..63
	i32 115, i32 134, i32 37, i32 23, i32 132, i32 112, i32 13, i32 147, ; 64..71
	i32 131, i32 77, i32 68, i32 31, i32 58, i32 6, i32 49, i32 142, ; 72..79
	i32 7, i32 119, i32 85, i32 78, i32 115, i32 52, i32 63, i32 125, ; 80..87
	i32 65, i32 25, i32 106, i32 61, i32 107, i32 117, i32 116, i32 47, ; 88..95
	i32 149, i32 35, i32 110, i32 17, i32 48, i32 28, i32 102, i32 33, ; 96..103
	i32 67, i32 126, i32 8, i32 31, i32 122, i32 63, i32 103, i32 101, ; 104..111
	i32 75, i32 73, i32 86, i32 92, i32 69, i32 141, i32 97, i32 39, ; 112..119
	i32 99, i32 96, i32 72, i32 55, i32 150, i32 11, i32 148, i32 39, ; 120..127
	i32 124, i32 4, i32 133, i32 49, i32 80, i32 70, i32 72, i32 140, ; 128..135
	i32 145, i32 100, i32 48, i32 136, i32 3, i32 6, i32 9, i32 145, ; 136..143
	i32 61, i32 146, i32 45, i32 122, i32 123, i32 116, i32 9, i32 139, ; 144..151
	i32 62, i32 58, i32 108, i32 1, i32 81, i32 22, i32 57, i32 134, ; 152..159
	i32 89, i32 107, i32 21, i32 30, i32 18, i32 135, i32 42, i32 129, ; 160..167
	i32 152, i32 4, i32 0, i32 92, i32 62, i32 50, i32 90, i32 0, ; 168..175
	i32 151, i32 59, i32 146, i32 2, i32 30, i32 83, i32 45, i32 2, ; 176..183
	i32 35, i32 38, i32 120, i32 82, i32 91, i32 51, i32 111, i32 71, ; 184..191
	i32 13, i32 120, i32 99, i32 79, i32 132, i32 96, i32 110, i32 29, ; 192..199
	i32 143, i32 22, i32 29, i32 66, i32 14, i32 44, i32 73, i32 27, ; 200..207
	i32 3, i32 118, i32 10, i32 17, i32 34, i32 44, i32 51, i32 27, ; 208..215
	i32 95, i32 105, i32 93, i32 24, i32 87, i32 138, i32 71, i32 88, ; 216..223
	i32 54, i32 137, i32 60, i32 5, i32 118, i32 84, i32 112, i32 12, ; 224..231
	i32 25, i32 133, i32 95, i32 125, i32 87, i32 144, i32 109, i32 111, ; 232..239
	i32 148, i32 75, i32 53, i32 102, i32 106, i32 67, i32 121, i32 91, ; 240..247
	i32 15, i32 138, i32 93, i32 150, i32 40, i32 40, i32 41, i32 90, ; 248..255
	i32 68, i32 64, i32 76, i32 36, i32 114, i32 127, i32 143, i32 16, ; 256..263
	i32 7, i32 131, i32 36, i32 52, i32 82, i32 33, i32 140, i32 32, ; 264..271
	i32 41, i32 136, i32 19, i32 26, i32 54, i32 47, i32 98, i32 21, ; 272..279
	i32 56, i32 53, i32 77, i32 65, i32 85, i32 151, i32 56, i32 149, ; 280..287
	i32 105, i32 104, i32 42, i32 24, i32 46, i32 8, i32 127, i32 139, ; 288..295
	i32 57, i32 43, i32 130, i32 144, i32 74, i32 84, i32 142, i32 55, ; 296..303
	i32 123, i32 119 ; 304..305
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
