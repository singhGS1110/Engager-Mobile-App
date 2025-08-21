; ModuleID = 'obj\Debug\100\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\100\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [306 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 103
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 20
	i32 39852199, ; 2: Plugin.Permissions => 0x26018a7 => 26
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 124
	i32 57967248, ; 4: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 76
	i32 99966887, ; 5: Xamarin.Firebase.Iid.dll => 0x5f55fa7 => 122
	i32 101534019, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 114
	i32 108920425, ; 7: Xamarin.AndroidX.AppCompat.Resources.dll => 0x67dfe69 => 82
	i32 120558881, ; 8: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 114
	i32 160529393, ; 9: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 40
	i32 165246403, ; 10: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 88
	i32 166922606, ; 11: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 51
	i32 182336117, ; 12: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 115
	i32 201930040, ; 13: Xamarin.Android.Arch.Core.Runtime => 0xc093538 => 41
	i32 209399409, ; 14: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 86
	i32 219130465, ; 15: Xamarin.Android.Support.v4 => 0xd0faa61 => 69
	i32 220171995, ; 16: System.Diagnostics.Debug => 0xd1f8edb => 149
	i32 230216969, ; 17: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 98
	i32 231814094, ; 18: System.Globalization => 0xdd133ce => 151
	i32 232587938, ; 19: Xamarin.AndroidX.MediaRouter => 0xddd02a2 => 108
	i32 232815796, ; 20: System.Web.Services => 0xde07cb4 => 141
	i32 278686392, ; 21: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 102
	i32 280482487, ; 22: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 96
	i32 293914992, ; 23: Xamarin.Android.Support.Transition => 0x1184c970 => 68
	i32 318968648, ; 24: Xamarin.AndroidX.Activity.dll => 0x13031348 => 78
	i32 321597661, ; 25: System.Numerics => 0x132b30dd => 134
	i32 324488843, ; 26: EngagerMobile.Mariteam.dll => 0x13574e8b => 7
	i32 331266987, ; 27: Xamarin.Android.Support.v7.MediaRouter.dll => 0x13bebbab => 72
	i32 342366114, ; 28: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 100
	i32 388313361, ; 29: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 47
	i32 389971796, ; 30: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 53
	i32 442565967, ; 31: System.Collections => 0x1a61054f => 145
	i32 450948140, ; 32: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 95
	i32 465846621, ; 33: mscorlib => 0x1bc4415d => 19
	i32 469710990, ; 34: System.dll => 0x1bff388e => 36
	i32 476646585, ; 35: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 96
	i32 480982410, ; 36: Microsoft.AppCenter.Distribute => 0x1cab358a => 16
	i32 486930444, ; 37: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 106
	i32 514659665, ; 38: Xamarin.Android.Support.Compat => 0x1ead1551 => 51
	i32 524864063, ; 39: Xamarin.Android.Support.Print => 0x1f48ca3f => 65
	i32 526420162, ; 40: System.Transactions.dll => 0x1f6088c2 => 135
	i32 539750087, ; 41: Xamarin.Android.Support.Design => 0x202beec7 => 57
	i32 545304856, ; 42: System.Runtime.Extensions => 0x2080b118 => 146
	i32 571524804, ; 43: Xamarin.Android.Support.v7.RecyclerView => 0x2210c6c4 => 74
	i32 605376203, ; 44: System.IO.Compression.FileSystem => 0x24154ecb => 139
	i32 627609679, ; 45: Xamarin.AndroidX.CustomView => 0x2568904f => 92
	i32 663517072, ; 46: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 119
	i32 666292255, ; 47: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 83
	i32 674270924, ; 48: EngagerMobile.Mariteam.Common => 0x28308ecc => 6
	i32 679199331, ; 49: EngagerMobile.Mariteam.Android => 0x287bc263 => 0
	i32 679820142, ; 50: Plugin.Connectivity.Abstractions => 0x28853b6e => 21
	i32 690569205, ; 51: System.Xml.Linq.dll => 0x29293ff5 => 39
	i32 692692150, ; 52: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 48
	i32 721481609, ; 53: Microsoft.AppCenter.dll => 0x2b00ef89 => 17
	i32 748832960, ; 54: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 31
	i32 775507847, ; 55: System.IO.Compression => 0x2e394f87 => 138
	i32 801787702, ; 56: Xamarin.Android.Support.Interpolator => 0x2fca4f36 => 61
	i32 802720955, ; 57: SignaturePad => 0x2fd88cbb => 27
	i32 809851609, ; 58: System.Drawing.Common.dll => 0x30455ad9 => 137
	i32 843511501, ; 59: Xamarin.AndroidX.Print => 0x3246f6cd => 111
	i32 877678880, ; 60: System.Globalization.dll => 0x34505120 => 151
	i32 882883187, ; 61: Xamarin.Android.Support.v4.dll => 0x349fba73 => 69
	i32 898563296, ; 62: Microsoft.AppCenter.Crashes.Android.Bindings => 0x358efce0 => 13
	i32 903406257, ; 63: SignaturePad.dll => 0x35d8e2b1 => 27
	i32 916714535, ; 64: Xamarin.Android.Support.Print.dll => 0x36a3f427 => 65
	i32 955402788, ; 65: Newtonsoft.Json => 0x38f24a24 => 20
	i32 957807352, ; 66: Plugin.CurrentActivity => 0x3916faf8 => 23
	i32 958213972, ; 67: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 64
	i32 963428712, ; 68: Xamarin.AndroidX.AppCompat.Resources => 0x396cc168 => 82
	i32 967690846, ; 69: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 100
	i32 974778368, ; 70: FormsViewGroup.dll => 0x3a19f000 => 8
	i32 987342438, ; 71: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0x3ad9a666 => 44
	i32 992768348, ; 72: System.Collections.dll => 0x3b2c715c => 145
	i32 1012816738, ; 73: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 113
	i32 1031141475, ; 74: Microsoft.AppCenter.Analytics => 0x3d75f863 => 11
	i32 1035644815, ; 75: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 81
	i32 1042160112, ; 76: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 126
	i32 1044663988, ; 77: System.Linq.Expressions.dll => 0x3e444eb4 => 147
	i32 1052210849, ; 78: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 104
	i32 1066173877, ; 79: Microsoft.AppCenter => 0x3f8c85b5 => 17
	i32 1098167829, ; 80: Xamarin.Android.Arch.Lifecycle.ViewModel => 0x4174b615 => 46
	i32 1098259244, ; 81: System => 0x41761b2c => 36
	i32 1104002344, ; 82: Plugin.Media => 0x41cdbd28 => 25
	i32 1136756104, ; 83: Microsoft.AppCenter.Distribute.dll => 0x43c18588 => 16
	i32 1137654822, ; 84: Plugin.Permissions.dll => 0x43cf3c26 => 26
	i32 1175144683, ; 85: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 117
	i32 1201468061, ; 86: Microsoft.AppCenter.Distribute.Android.Bindings => 0x479cf29d => 15
	i32 1204270330, ; 87: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 83
	i32 1267360935, ; 88: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 118
	i32 1282958517, ; 89: Plugin.Geolocator => 0x4c7864b5 => 24
	i32 1292207520, ; 90: SQLitePCLRaw.core.dll => 0x4d0585a0 => 32
	i32 1292763917, ; 91: Xamarin.Android.Support.CursorAdapter.dll => 0x4d0e030d => 55
	i32 1293217323, ; 92: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 94
	i32 1297413738, ; 93: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0x4d54f66a => 43
	i32 1324164729, ; 94: System.Linq => 0x4eed2679 => 150
	i32 1333047053, ; 95: Xamarin.Firebase.Common => 0x4f74af0d => 121
	i32 1359785034, ; 96: Xamarin.Android.Support.Design.dll => 0x510cac4a => 57
	i32 1365406463, ; 97: System.ServiceModel.Internals.dll => 0x516272ff => 142
	i32 1376866003, ; 98: Xamarin.AndroidX.SavedState => 0x52114ed3 => 113
	i32 1395857551, ; 99: Xamarin.AndroidX.Media.dll => 0x5333188f => 107
	i32 1406073936, ; 100: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 89
	i32 1414989748, ; 101: EngagerMobile.Mariteam => 0x545707b4 => 7
	i32 1427829809, ; 102: EngagerMobile.Mariteam.Common.dll => 0x551af431 => 6
	i32 1445445088, ; 103: Xamarin.Android.Support.Fragment => 0x5627bde0 => 60
	i32 1454233054, ; 104: SQLitePCLRaw.lib.e_sqlite3.dll => 0x56add5de => 33
	i32 1457743152, ; 105: System.Runtime.Extensions.dll => 0x56e36530 => 146
	i32 1460219004, ; 106: Xamarin.Forms.Xaml => 0x57092c7c => 127
	i32 1462112819, ; 107: System.IO.Compression.dll => 0x57261233 => 138
	i32 1469204771, ; 108: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 80
	i32 1550322496, ; 109: System.Reflection.Extensions.dll => 0x5c680b40 => 3
	i32 1574652163, ; 110: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 54
	i32 1582372066, ; 111: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 93
	i32 1587447679, ; 112: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 40
	i32 1592978981, ; 113: System.Runtime.Serialization.dll => 0x5ef2ee25 => 5
	i32 1622152042, ; 114: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 105
	i32 1636350590, ; 115: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 91
	i32 1639515021, ; 116: System.Net.Http.dll => 0x61b9038d => 4
	i32 1653276212, ; 117: Microsoft.AppCenter.Android.Bindings => 0x628afe34 => 12
	i32 1657153582, ; 118: System.Runtime => 0x62c6282e => 37
	i32 1658251792, ; 119: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 128
	i32 1662014763, ; 120: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 75
	i32 1701541528, ; 121: System.Diagnostics.Debug.dll => 0x656b7698 => 149
	i32 1717874493, ; 122: EngagerMobile.Mariteam.ApplicationCore => 0x6664af3d => 1
	i32 1726116996, ; 123: System.Reflection.dll => 0x66e27484 => 148
	i32 1729485958, ; 124: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 87
	i32 1765942094, ; 125: System.Reflection.Extensions => 0x6942234e => 3
	i32 1766324549, ; 126: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 115
	i32 1776026572, ; 127: System.Core.dll => 0x69dc03cc => 35
	i32 1788241197, ; 128: Xamarin.AndroidX.Fragment => 0x6a96652d => 95
	i32 1808609942, ; 129: Xamarin.AndroidX.Loader => 0x6bcd3296 => 105
	i32 1813201214, ; 130: Xamarin.Google.Android.Material => 0x6c13413e => 128
	i32 1858542181, ; 131: System.Linq.Expressions => 0x6ec71a65 => 147
	i32 1866717392, ; 132: Xamarin.Android.Support.Interpolator.dll => 0x6f43d8d0 => 61
	i32 1877418711, ; 133: Xamarin.Android.Support.v7.RecyclerView.dll => 0x6fe722d7 => 74
	i32 1878053835, ; 134: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 127
	i32 1885316902, ; 135: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 84
	i32 1908813208, ; 136: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 130
	i32 1916660109, ; 137: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x723de98d => 46
	i32 1919157823, ; 138: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 109
	i32 1933215285, ; 139: Xamarin.Firebase.Messaging.dll => 0x733a8635 => 123
	i32 1974384273, ; 140: Microsoft.AppCenter.Distribute.Android.Bindings.dll => 0x75aeb691 => 15
	i32 1991544456, ; 141: SignaturePad.Forms.dll => 0x76b48e88 => 28
	i32 2019465201, ; 142: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 104
	i32 2019533804, ; 143: SQLitePCLRaw.lib.e_sqlite3 => 0x785fa3ec => 33
	i32 2024078044, ; 144: Microsoft.AppCenter.Analytics.dll => 0x78a4fadc => 11
	i32 2037417872, ; 145: Xamarin.Android.Support.ViewPager => 0x79708790 => 77
	i32 2044222327, ; 146: Xamarin.Android.Support.Loader => 0x79d85b77 => 62
	i32 2045425888, ; 147: Microsoft.AppCenter.Analytics.Android.Bindings => 0x79eab8e0 => 10
	i32 2048185678, ; 148: Plugin.Media.dll => 0x7a14d54e => 25
	i32 2055257422, ; 149: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 101
	i32 2061764407, ; 150: EngagerMobile.Mariteam.Services => 0x7ae40737 => 2
	i32 2079903147, ; 151: System.Runtime.dll => 0x7bf8cdab => 37
	i32 2097448633, ; 152: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 97
	i32 2103459038, ; 153: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 34
	i32 2126786730, ; 154: Xamarin.Forms.Platform.Android => 0x7ec430aa => 125
	i32 2129483829, ; 155: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 129
	i32 2139458754, ; 156: Xamarin.Android.Support.DrawerLayout => 0x7f858cc2 => 59
	i32 2166116741, ; 157: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 54
	i32 2196165013, ; 158: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 76
	i32 2201231467, ; 159: System.Net.Http => 0x8334206b => 4
	i32 2217644978, ; 160: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 117
	i32 2244775296, ; 161: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 106
	i32 2256548716, ; 162: Xamarin.AndroidX.MultiDex => 0x8680336c => 109
	i32 2261435625, ; 163: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 99
	i32 2279755925, ; 164: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 112
	i32 2315684594, ; 165: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 79
	i32 2330457430, ; 166: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 53
	i32 2330986192, ; 167: Xamarin.Android.Support.SlidingPaneLayout.dll => 0x8af006d0 => 66
	i32 2373288475, ; 168: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 60
	i32 2440966767, ; 169: Xamarin.Android.Support.Loader.dll => 0x917e326f => 62
	i32 2465273461, ; 170: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 31
	i32 2471841756, ; 171: netstandard.dll => 0x93554fdc => 132
	i32 2475788418, ; 172: Java.Interop.dll => 0x93918882 => 9
	i32 2483742551, ; 173: Xamarin.Firebase.Messaging => 0x940ae757 => 123
	i32 2487632829, ; 174: Xamarin.Android.Support.DocumentFile => 0x944643bd => 58
	i32 2501346920, ; 175: System.Data.DataSetExtensions => 0x95178668 => 136
	i32 2505896520, ; 176: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 103
	i32 2581819634, ; 177: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 118
	i32 2620871830, ; 178: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 91
	i32 2633051222, ; 179: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 102
	i32 2697269578, ; 180: Microsoft.AppCenter.Crashes.dll => 0xa0c5114a => 14
	i32 2698266930, ; 181: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa0d44932 => 44
	i32 2715334215, ; 182: System.Threading.Tasks.dll => 0xa1d8b647 => 143
	i32 2732626843, ; 183: Xamarin.AndroidX.Activity => 0xa2e0939b => 78
	i32 2737747696, ; 184: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 80
	i32 2751899777, ; 185: Xamarin.Android.Support.Collections => 0xa406a881 => 50
	i32 2754271178, ; 186: Xamarin.Android.Support.v7.Palette => 0xa42ad7ca => 73
	i32 2766581644, ; 187: Xamarin.Forms.Core => 0xa4e6af8c => 124
	i32 2772484381, ; 188: Xamarin.AndroidX.Palette.dll => 0xa540c11d => 110
	i32 2778768386, ; 189: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 120
	i32 2788639665, ; 190: Xamarin.Android.Support.LocalBroadcastManager => 0xa63743b1 => 63
	i32 2788775637, ; 191: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0xa63956d5 => 67
	i32 2806986428, ; 192: Plugin.CurrentActivity.dll => 0xa74f36bc => 23
	i32 2810250172, ; 193: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 89
	i32 2819470561, ; 194: System.Xml.dll => 0xa80db4e1 => 38
	i32 2847418871, ; 195: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 129
	i32 2849962309, ; 196: Microsoft.AppCenter.Android.Bindings.dll => 0xa9def945 => 12
	i32 2853208004, ; 197: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 120
	i32 2855708567, ; 198: Xamarin.AndroidX.Transition => 0xaa36a797 => 116
	i32 2870995654, ; 199: Xamarin.Firebase.Iid => 0xab1feac6 => 122
	i32 2876493027, ; 200: Xamarin.Android.Support.SwipeRefreshLayout => 0xab73cce3 => 67
	i32 2893257763, ; 201: Xamarin.Android.Arch.Core.Runtime.dll => 0xac739c23 => 41
	i32 2901442782, ; 202: System.Reflection => 0xacf080de => 148
	i32 2903344695, ; 203: System.ComponentModel.Composition => 0xad0d8637 => 140
	i32 2905242038, ; 204: mscorlib.dll => 0xad2a79b6 => 19
	i32 2921692953, ; 205: Xamarin.Android.Support.CustomView.dll => 0xae257f19 => 56
	i32 2922925221, ; 206: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 75
	i32 2950178753, ; 207: EngagerMobile.Mariteam.ApplicationCore.dll => 0xafd827c1 => 1
	i32 2978675010, ; 208: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 94
	i32 3024354802, ; 209: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 98
	i32 3037436946, ; 210: Microsoft.AppCenter.Analytics.Android.Bindings.dll => 0xb50b9c12 => 10
	i32 3044182254, ; 211: FormsViewGroup => 0xb57288ee => 8
	i32 3056250942, ; 212: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0xb62ab03e => 49
	i32 3058099980, ; 213: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 131
	i32 3068715062, ; 214: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 42
	i32 3071899978, ; 215: Xamarin.Firebase.Common.dll => 0xb719794a => 121
	i32 3075834255, ; 216: System.Threading.Tasks => 0xb755818f => 143
	i32 3092211740, ; 217: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 64
	i32 3111772706, ; 218: System.Runtime.Serialization => 0xb979e222 => 5
	i32 3126016514, ; 219: Plugin.Geolocator.dll => 0xba533a02 => 24
	i32 3194035187, ; 220: Xamarin.Android.Support.v7.MediaRouter => 0xbe611bf3 => 72
	i32 3204380047, ; 221: System.Data.dll => 0xbefef58f => 133
	i32 3204912593, ; 222: Xamarin.Android.Support.AsyncLayoutInflater => 0xbf0715d1 => 49
	i32 3211777861, ; 223: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 93
	i32 3220365878, ; 224: System.Threading => 0xbff2e236 => 144
	i32 3230466174, ; 225: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 130
	i32 3233339011, ; 226: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xc0b8d683 => 43
	i32 3247949154, ; 227: Mono.Security => 0xc197c562 => 152
	i32 3258312781, ; 228: Xamarin.AndroidX.CardView => 0xc235e84d => 87
	i32 3267021929, ; 229: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 85
	i32 3286872994, ; 230: SQLite-net.dll => 0xc3e9b3a2 => 29
	i32 3296380511, ; 231: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 50
	i32 3317135071, ; 232: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 92
	i32 3317144872, ; 233: System.Data => 0xc5b79d28 => 133
	i32 3321585405, ; 234: Xamarin.Android.Support.DocumentFile.dll => 0xc5fb5efd => 58
	i32 3340431453, ; 235: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 84
	i32 3342024700, ; 236: Plugin.Connectivity.Abstractions.dll => 0xc7333ffc => 21
	i32 3352662376, ; 237: Xamarin.Android.Support.CoordinaterLayout => 0xc7d59168 => 52
	i32 3353484488, ; 238: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 97
	i32 3357663996, ; 239: Xamarin.Android.Support.CursorAdapter => 0xc821e2fc => 55
	i32 3360279109, ; 240: SQLitePCLRaw.core => 0xc849ca45 => 32
	i32 3362522851, ; 241: Xamarin.AndroidX.Core => 0xc86c06e3 => 90
	i32 3366046733, ; 242: Plugin.Connectivity.dll => 0xc8a1cc0d => 22
	i32 3366347497, ; 243: Java.Interop => 0xc8a662e9 => 9
	i32 3369739654, ; 244: Xamarin.AndroidX.Palette => 0xc8da2586 => 110
	i32 3374999561, ; 245: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 112
	i32 3404865022, ; 246: System.ServiceModel.Internals => 0xcaf21dfe => 142
	i32 3429136800, ; 247: System.Xml => 0xcc6479a0 => 38
	i32 3430777524, ; 248: netstandard => 0xcc7d82b4 => 132
	i32 3439690031, ; 249: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 48
	i32 3476120550, ; 250: Mono.Android => 0xcf3163e6 => 18
	i32 3486566296, ; 251: System.Transactions => 0xcfd0c798 => 135
	i32 3498942916, ; 252: Xamarin.Android.Support.v7.CardView.dll => 0xd08da1c4 => 71
	i32 3501239056, ; 253: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 85
	i32 3509114376, ; 254: System.Xml.Linq => 0xd128d608 => 39
	i32 3536029504, ; 255: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 125
	i32 3543730307, ; 256: SQLitePCLRaw.batteries_green.dll => 0xd3390883 => 30
	i32 3547625832, ; 257: Xamarin.Android.Support.SlidingPaneLayout => 0xd3747968 => 66
	i32 3567349600, ; 258: System.ComponentModel.Composition.dll => 0xd4a16f60 => 140
	i32 3608519521, ; 259: System.Linq.dll => 0xd715a361 => 150
	i32 3627220390, ; 260: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 111
	i32 3629053394, ; 261: Xamarin.AndroidX.MediaRouter.dll => 0xd84ef5d2 => 108
	i32 3632359727, ; 262: Xamarin.Forms.Platform => 0xd881692f => 126
	i32 3639440179, ; 263: EngagerMobile.Mariteam.Android.dll => 0xd8ed7333 => 0
	i32 3641597786, ; 264: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 101
	i32 3641967938, ; 265: SQLitePCLRaw.batteries_green => 0xd9140542 => 30
	i32 3664423555, ; 266: Xamarin.Android.Support.ViewPager.dll => 0xda6aaa83 => 77
	i32 3672681054, ; 267: Mono.Android.dll => 0xdae8aa5e => 18
	i32 3676310014, ; 268: System.Web.Services.dll => 0xdb2009fe => 141
	i32 3678221644, ; 269: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 70
	i32 3681174138, ; 270: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 42
	i32 3682565725, ; 271: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 86
	i32 3689375977, ; 272: System.Drawing.Common => 0xdbe768e9 => 137
	i32 3714038699, ; 273: Xamarin.Android.Support.LocalBroadcastManager.dll => 0xdd5fbbab => 63
	i32 3718463572, ; 274: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 47
	i32 3718780102, ; 275: Xamarin.AndroidX.Annotation => 0xdda814c6 => 79
	i32 3754567612, ; 276: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 34
	i32 3758932259, ; 277: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 99
	i32 3776062606, ; 278: Xamarin.Android.Support.DrawerLayout.dll => 0xe112248e => 59
	i32 3786282454, ; 279: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 88
	i32 3789524022, ; 280: Xamarin.Android.Support.v7.Palette.dll => 0xe1df8c36 => 73
	i32 3822602673, ; 281: Xamarin.AndroidX.Media => 0xe3d849b1 => 107
	i32 3829621856, ; 282: System.Numerics.dll => 0xe4436460 => 134
	i32 3832731800, ; 283: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe472d898 => 52
	i32 3862817207, ; 284: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 45
	i32 3869245228, ; 285: Microsoft.AppCenter.Crashes.Android.Bindings.dll => 0xe69fff2c => 13
	i32 3874897629, ; 286: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 45
	i32 3876362041, ; 287: SQLite-net => 0xe70c9739 => 29
	i32 3883175360, ; 288: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 70
	i32 3885922214, ; 289: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 116
	i32 3896760992, ; 290: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 90
	i32 3914259587, ; 291: Plugin.Connectivity => 0xe94edc83 => 22
	i32 3920810846, ; 292: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 139
	i32 3921031405, ; 293: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 119
	i32 3945713374, ; 294: System.Data.DataSetExtensions.dll => 0xeb2ecede => 136
	i32 3955647286, ; 295: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 81
	i32 3970018735, ; 296: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 131
	i32 4063435586, ; 297: Xamarin.Android.Support.CustomView => 0xf2331b42 => 56
	i32 4071430779, ; 298: SignaturePad.Forms => 0xf2ad1a7b => 28
	i32 4073602200, ; 299: System.Threading.dll => 0xf2ce3c98 => 144
	i32 4105002889, ; 300: Mono.Security.dll => 0xf4ad5f89 => 152
	i32 4146307099, ; 301: Microsoft.AppCenter.Crashes => 0xf723a01b => 14
	i32 4151237749, ; 302: System.Core => 0xf76edc75 => 35
	i32 4160274953, ; 303: EngagerMobile.Mariteam.Services.dll => 0xf7f8c209 => 2
	i32 4216993138, ; 304: Xamarin.Android.Support.Transition.dll => 0xfb5a3572 => 68
	i32 4219003402 ; 305: Xamarin.Android.Support.v7.CardView => 0xfb78e20a => 71
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [306 x i32] [
	i32 103, i32 20, i32 26, i32 124, i32 76, i32 122, i32 114, i32 82, ; 0..7
	i32 114, i32 40, i32 88, i32 51, i32 115, i32 41, i32 86, i32 69, ; 8..15
	i32 149, i32 98, i32 151, i32 108, i32 141, i32 102, i32 96, i32 68, ; 16..23
	i32 78, i32 134, i32 7, i32 72, i32 100, i32 47, i32 53, i32 145, ; 24..31
	i32 95, i32 19, i32 36, i32 96, i32 16, i32 106, i32 51, i32 65, ; 32..39
	i32 135, i32 57, i32 146, i32 74, i32 139, i32 92, i32 119, i32 83, ; 40..47
	i32 6, i32 0, i32 21, i32 39, i32 48, i32 17, i32 31, i32 138, ; 48..55
	i32 61, i32 27, i32 137, i32 111, i32 151, i32 69, i32 13, i32 27, ; 56..63
	i32 65, i32 20, i32 23, i32 64, i32 82, i32 100, i32 8, i32 44, ; 64..71
	i32 145, i32 113, i32 11, i32 81, i32 126, i32 147, i32 104, i32 17, ; 72..79
	i32 46, i32 36, i32 25, i32 16, i32 26, i32 117, i32 15, i32 83, ; 80..87
	i32 118, i32 24, i32 32, i32 55, i32 94, i32 43, i32 150, i32 121, ; 88..95
	i32 57, i32 142, i32 113, i32 107, i32 89, i32 7, i32 6, i32 60, ; 96..103
	i32 33, i32 146, i32 127, i32 138, i32 80, i32 3, i32 54, i32 93, ; 104..111
	i32 40, i32 5, i32 105, i32 91, i32 4, i32 12, i32 37, i32 128, ; 112..119
	i32 75, i32 149, i32 1, i32 148, i32 87, i32 3, i32 115, i32 35, ; 120..127
	i32 95, i32 105, i32 128, i32 147, i32 61, i32 74, i32 127, i32 84, ; 128..135
	i32 130, i32 46, i32 109, i32 123, i32 15, i32 28, i32 104, i32 33, ; 136..143
	i32 11, i32 77, i32 62, i32 10, i32 25, i32 101, i32 2, i32 37, ; 144..151
	i32 97, i32 34, i32 125, i32 129, i32 59, i32 54, i32 76, i32 4, ; 152..159
	i32 117, i32 106, i32 109, i32 99, i32 112, i32 79, i32 53, i32 66, ; 160..167
	i32 60, i32 62, i32 31, i32 132, i32 9, i32 123, i32 58, i32 136, ; 168..175
	i32 103, i32 118, i32 91, i32 102, i32 14, i32 44, i32 143, i32 78, ; 176..183
	i32 80, i32 50, i32 73, i32 124, i32 110, i32 120, i32 63, i32 67, ; 184..191
	i32 23, i32 89, i32 38, i32 129, i32 12, i32 120, i32 116, i32 122, ; 192..199
	i32 67, i32 41, i32 148, i32 140, i32 19, i32 56, i32 75, i32 1, ; 200..207
	i32 94, i32 98, i32 10, i32 8, i32 49, i32 131, i32 42, i32 121, ; 208..215
	i32 143, i32 64, i32 5, i32 24, i32 72, i32 133, i32 49, i32 93, ; 216..223
	i32 144, i32 130, i32 43, i32 152, i32 87, i32 85, i32 29, i32 50, ; 224..231
	i32 92, i32 133, i32 58, i32 84, i32 21, i32 52, i32 97, i32 55, ; 232..239
	i32 32, i32 90, i32 22, i32 9, i32 110, i32 112, i32 142, i32 38, ; 240..247
	i32 132, i32 48, i32 18, i32 135, i32 71, i32 85, i32 39, i32 125, ; 248..255
	i32 30, i32 66, i32 140, i32 150, i32 111, i32 108, i32 126, i32 0, ; 256..263
	i32 101, i32 30, i32 77, i32 18, i32 141, i32 70, i32 42, i32 86, ; 264..271
	i32 137, i32 63, i32 47, i32 79, i32 34, i32 99, i32 59, i32 88, ; 272..279
	i32 73, i32 107, i32 134, i32 52, i32 45, i32 13, i32 45, i32 29, ; 280..287
	i32 70, i32 116, i32 90, i32 22, i32 139, i32 119, i32 136, i32 81, ; 288..295
	i32 131, i32 56, i32 28, i32 144, i32 152, i32 14, i32 35, i32 2, ; 296..303
	i32 68, i32 71 ; 304..305
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
