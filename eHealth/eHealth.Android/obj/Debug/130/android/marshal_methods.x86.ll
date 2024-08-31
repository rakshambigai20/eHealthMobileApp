; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [342 x i32] [
	i32 11257817, ; 0: OxyPlot.dll => 0xabc7d9 => 18
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 110
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 148
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 17
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 143
	i32 57967248, ; 5: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 75
	i32 101534019, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 129
	i32 120558881, ; 7: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 129
	i32 134690465, ; 8: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 152
	i32 159306688, ; 9: System.ComponentModel.Annotations => 0x97ed3c0 => 165
	i32 160529393, ; 10: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 43
	i32 165246403, ; 11: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 87
	i32 166922606, ; 12: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 54
	i32 182336117, ; 13: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 133
	i32 194720069, ; 14: Plugin.Messaging.Abstractions => 0xb9b3145 => 22
	i32 201930040, ; 15: Xamarin.Android.Arch.Core.Runtime => 0xc093538 => 44
	i32 209399409, ; 16: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 85
	i32 230216969, ; 17: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 104
	i32 232815796, ; 18: System.Web.Services => 0xde07cb4 => 163
	i32 261689757, ; 19: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 90
	i32 278686392, ; 20: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 108
	i32 280482487, ; 21: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 102
	i32 293914992, ; 22: Xamarin.Android.Support.Transition => 0x1184c970 => 70
	i32 307891448, ; 23: Xamarin.AndroidX.Work.Runtime.dll => 0x125a0cf8 => 141
	i32 318968648, ; 24: Xamarin.AndroidX.Activity.dll => 0x13031348 => 77
	i32 321597661, ; 25: System.Numerics => 0x132b30dd => 36
	i32 326667749, ; 26: eHealth.Android => 0x13788de5 => 0
	i32 342366114, ; 27: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 106
	i32 347068432, ; 28: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 30
	i32 385762202, ; 29: System.Memory.dll => 0x16fe439a => 35
	i32 388313361, ; 30: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 50
	i32 389971796, ; 31: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 56
	i32 441335492, ; 32: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 89
	i32 442521989, ; 33: Xamarin.Essentials => 0x1a605985 => 142
	i32 442565967, ; 34: System.Collections => 0x1a61054f => 167
	i32 450948140, ; 35: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 101
	i32 465846621, ; 36: mscorlib => 0x1bc4415d => 15
	i32 469710990, ; 37: System.dll => 0x1bff388e => 34
	i32 476646585, ; 38: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 102
	i32 486930444, ; 39: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 115
	i32 514659665, ; 40: Xamarin.Android.Support.Compat => 0x1ead1551 => 54
	i32 524864063, ; 41: Xamarin.Android.Support.Print => 0x1f48ca3f => 67
	i32 525008092, ; 42: SkiaSharp.dll => 0x1f4afcdc => 24
	i32 526420162, ; 43: System.Transactions.dll => 0x1f6088c2 => 157
	i32 527452488, ; 44: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 152
	i32 539750087, ; 45: Xamarin.Android.Support.Design => 0x202beec7 => 60
	i32 551862371, ; 46: eHealth.Data => 0x20e4c063 => 5
	i32 571524804, ; 47: Xamarin.Android.Support.v7.RecyclerView => 0x2210c6c4 => 73
	i32 605376203, ; 48: System.IO.Compression.FileSystem => 0x24154ecb => 161
	i32 627609679, ; 49: Xamarin.AndroidX.CustomView => 0x2568904f => 95
	i32 639843206, ; 50: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 100
	i32 663517072, ; 51: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 138
	i32 666292255, ; 52: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 82
	i32 690569205, ; 53: System.Xml.Linq.dll => 0x29293ff5 => 42
	i32 691348768, ; 54: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 154
	i32 692692150, ; 55: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 51
	i32 700284507, ; 56: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 149
	i32 705820857, ; 57: eHealth.Service => 0x2a11f8b9 => 7
	i32 720511267, ; 58: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 153
	i32 722857257, ; 59: System.Runtime.Loader.dll => 0x2b15ed29 => 40
	i32 748832960, ; 60: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 28
	i32 775507847, ; 61: System.IO.Compression => 0x2e394f87 => 160
	i32 801787702, ; 62: Xamarin.Android.Support.Interpolator => 0x2fca4f36 => 64
	i32 809851609, ; 63: System.Drawing.Common.dll => 0x30455ad9 => 159
	i32 835661280, ; 64: MvvmHelpers.dll => 0x31cf2de0 => 16
	i32 836755697, ; 65: Xamarin.AndroidX.Lifecycle.Service => 0x31dfe0f1 => 111
	i32 843511501, ; 66: Xamarin.AndroidX.Print => 0x3246f6cd => 122
	i32 886248193, ; 67: Microcharts.Droid => 0x34d31301 => 11
	i32 916714535, ; 68: Xamarin.Android.Support.Print.dll => 0x36a3f427 => 67
	i32 928116545, ; 69: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 148
	i32 955402788, ; 70: Newtonsoft.Json => 0x38f24a24 => 17
	i32 956575887, ; 71: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 153
	i32 967690846, ; 72: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 106
	i32 974778368, ; 73: FormsViewGroup.dll => 0x3a19f000 => 8
	i32 987342438, ; 74: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0x3ad9a666 => 47
	i32 992768348, ; 75: System.Collections.dll => 0x3b2c715c => 167
	i32 1012816738, ; 76: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 128
	i32 1028951442, ; 77: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 13
	i32 1032266309, ; 78: Plugin.Messaging.dll => 0x3d872245 => 23
	i32 1035644815, ; 79: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 81
	i32 1042160112, ; 80: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 145
	i32 1052210849, ; 81: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 112
	i32 1084122840, ; 82: Xamarin.Kotlin.StdLib => 0x409e66d8 => 151
	i32 1098167829, ; 83: Xamarin.Android.Arch.Lifecycle.ViewModel => 0x4174b615 => 49
	i32 1098259244, ; 84: System => 0x41761b2c => 34
	i32 1175144683, ; 85: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 136
	i32 1178241025, ; 86: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 119
	i32 1204270330, ; 87: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 82
	i32 1214827643, ; 88: CommunityToolkit.Mvvm => 0x4868cc7b => 4
	i32 1257494309, ; 89: Plugin.Messaging.Abstractions.dll => 0x4af3d725 => 22
	i32 1264511973, ; 90: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 132
	i32 1267360935, ; 91: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 137
	i32 1275534314, ; 92: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 154
	i32 1292207520, ; 93: SQLitePCLRaw.core.dll => 0x4d0585a0 => 29
	i32 1292763917, ; 94: Xamarin.Android.Support.CursorAdapter.dll => 0x4d0e030d => 58
	i32 1293217323, ; 95: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 97
	i32 1297413738, ; 96: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0x4d54f66a => 46
	i32 1359785034, ; 97: Xamarin.Android.Support.Design.dll => 0x510cac4a => 60
	i32 1364015309, ; 98: System.IO => 0x514d38cd => 170
	i32 1365406463, ; 99: System.ServiceModel.Internals.dll => 0x516272ff => 164
	i32 1376866003, ; 100: Xamarin.AndroidX.SavedState => 0x52114ed3 => 128
	i32 1395857551, ; 101: Xamarin.AndroidX.Media.dll => 0x5333188f => 116
	i32 1406073936, ; 102: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 91
	i32 1411638395, ; 103: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 38
	i32 1419208175, ; 104: eHealth.Data.dll => 0x549765ef => 5
	i32 1445445088, ; 105: Xamarin.Android.Support.Fragment => 0x5627bde0 => 63
	i32 1460219004, ; 106: Xamarin.Forms.Xaml => 0x57092c7c => 146
	i32 1462112819, ; 107: System.IO.Compression.dll => 0x57261233 => 160
	i32 1469204771, ; 108: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 80
	i32 1574652163, ; 109: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 57
	i32 1582372066, ; 110: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 96
	i32 1582526884, ; 111: Microcharts.Forms.dll => 0x5e5371a4 => 12
	i32 1587447679, ; 112: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 43
	i32 1588351947, ; 113: eHealth.Android.dll => 0x5eac53cb => 0
	i32 1592978981, ; 114: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1615491967, ; 115: eHealth.Service.dll => 0x604a737f => 7
	i32 1622152042, ; 116: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 114
	i32 1624863272, ; 117: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 140
	i32 1634619362, ; 118: Xamarin.AndroidX.Room.Common => 0x616e4fe2 => 126
	i32 1635184631, ; 119: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 100
	i32 1636350590, ; 120: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 94
	i32 1639515021, ; 121: System.Net.Http.dll => 0x61b9038d => 2
	i32 1657153582, ; 122: System.Runtime => 0x62c6282e => 39
	i32 1658241508, ; 123: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 134
	i32 1658251792, ; 124: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 147
	i32 1662014763, ; 125: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 74
	i32 1670060433, ; 126: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 90
	i32 1698840827, ; 127: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 150
	i32 1711441057, ; 128: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 30
	i32 1722051300, ; 129: SkiaSharp.Views.Forms => 0x66a46ae4 => 26
	i32 1726116996, ; 130: System.Reflection.dll => 0x66e27484 => 169
	i32 1729485958, ; 131: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 86
	i32 1736948048, ; 132: Xamarin.AndroidX.Sqlite.dll => 0x6787b950 => 130
	i32 1758026047, ; 133: Xamarin.AndroidX.Room.Runtime.dll => 0x68c9593f => 127
	i32 1766324549, ; 134: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 133
	i32 1776026572, ; 135: System.Core.dll => 0x69dc03cc => 33
	i32 1788241197, ; 136: Xamarin.AndroidX.Fragment => 0x6a96652d => 101
	i32 1808609942, ; 137: Xamarin.AndroidX.Loader => 0x6bcd3296 => 114
	i32 1813058853, ; 138: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 151
	i32 1813201214, ; 139: Xamarin.Google.Android.Material => 0x6c13413e => 147
	i32 1818569960, ; 140: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 120
	i32 1866717392, ; 141: Xamarin.Android.Support.Interpolator.dll => 0x6f43d8d0 => 64
	i32 1867746548, ; 142: Xamarin.Essentials.dll => 0x6f538cf4 => 142
	i32 1877418711, ; 143: Xamarin.Android.Support.v7.RecyclerView.dll => 0x6fe722d7 => 73
	i32 1878053835, ; 144: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 146
	i32 1885316902, ; 145: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 83
	i32 1916660109, ; 146: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x723de98d => 49
	i32 1919157823, ; 147: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 117
	i32 1950899813, ; 148: eHealth => 0x74485e65 => 6
	i32 1983156543, ; 149: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 150
	i32 2011961780, ; 150: System.Buffers.dll => 0x77ec19b4 => 32
	i32 2012836262, ; 151: Plugin.Messaging => 0x77f971a6 => 23
	i32 2019465201, ; 152: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 112
	i32 2037417872, ; 153: Xamarin.Android.Support.ViewPager => 0x79708790 => 76
	i32 2044222327, ; 154: Xamarin.Android.Support.Loader => 0x79d85b77 => 65
	i32 2055257422, ; 155: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 107
	i32 2079903147, ; 156: System.Runtime.dll => 0x7bf8cdab => 39
	i32 2090596640, ; 157: System.Numerics.Vectors => 0x7c9bf920 => 37
	i32 2097448633, ; 158: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 103
	i32 2103459038, ; 159: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 31
	i32 2126786730, ; 160: Xamarin.Forms.Platform.Android => 0x7ec430aa => 144
	i32 2139458754, ; 161: Xamarin.Android.Support.DrawerLayout => 0x7f858cc2 => 62
	i32 2166116741, ; 162: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 57
	i32 2196165013, ; 163: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 75
	i32 2201107256, ; 164: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 155
	i32 2201231467, ; 165: System.Net.Http => 0x8334206b => 2
	i32 2217644978, ; 166: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 136
	i32 2244775296, ; 167: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 115
	i32 2256548716, ; 168: Xamarin.AndroidX.MultiDex => 0x8680336c => 117
	i32 2261435625, ; 169: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 105
	i32 2279703579, ; 170: Xamarin.AndroidX.Sqlite.Framework.dll => 0x87e1841b => 131
	i32 2279755925, ; 171: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 124
	i32 2306217607, ; 172: OxyPlot.Xamarin.Forms => 0x89761687 => 20
	i32 2315684594, ; 173: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 78
	i32 2330457430, ; 174: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 56
	i32 2330986192, ; 175: Xamarin.Android.Support.SlidingPaneLayout.dll => 0x8af006d0 => 68
	i32 2373288475, ; 176: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 63
	i32 2403452196, ; 177: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 99
	i32 2409053734, ; 178: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 121
	i32 2435904999, ; 179: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 166
	i32 2440966767, ; 180: Xamarin.Android.Support.Loader.dll => 0x917e326f => 65
	i32 2465273461, ; 181: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 28
	i32 2465532216, ; 182: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 89
	i32 2471841756, ; 183: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 184: Java.Interop.dll => 0x93918882 => 9
	i32 2487632829, ; 185: Xamarin.Android.Support.DocumentFile => 0x944643bd => 61
	i32 2501346920, ; 186: System.Data.DataSetExtensions => 0x95178668 => 158
	i32 2505896520, ; 187: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 110
	i32 2568748418, ; 188: OxyPlot.Xamarin.Forms.Platform.Android => 0x991bfd82 => 21
	i32 2581819634, ; 189: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 137
	i32 2605712449, ; 190: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 155
	i32 2620871830, ; 191: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 94
	i32 2624644809, ; 192: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 98
	i32 2633051222, ; 193: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 108
	i32 2663698177, ; 194: System.Runtime.Loader => 0x9ec4cf01 => 40
	i32 2689529426, ; 195: OxyPlot.Xamarin.Android => 0xa04ef652 => 19
	i32 2693849962, ; 196: System.IO.dll => 0xa090e36a => 170
	i32 2698266930, ; 197: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa0d44932 => 47
	i32 2701096212, ; 198: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 134
	i32 2732626843, ; 199: Xamarin.AndroidX.Activity => 0xa2e0939b => 77
	i32 2737747696, ; 200: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 80
	i32 2739926663, ; 201: Xamarin.AndroidX.Sqlite.Framework => 0xa34ff687 => 131
	i32 2747619038, ; 202: OxyPlot.Xamarin.Android.dll => 0xa3c556de => 19
	i32 2751899777, ; 203: Xamarin.Android.Support.Collections => 0xa406a881 => 53
	i32 2766581644, ; 204: Xamarin.Forms.Core => 0xa4e6af8c => 143
	i32 2770495804, ; 205: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 149
	i32 2778768386, ; 206: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 139
	i32 2779977773, ; 207: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 125
	i32 2788639665, ; 208: Xamarin.Android.Support.LocalBroadcastManager => 0xa63743b1 => 66
	i32 2788775637, ; 209: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0xa63956d5 => 69
	i32 2795602088, ; 210: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 25
	i32 2810250172, ; 211: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 91
	i32 2819470561, ; 212: System.Xml.dll => 0xa80db4e1 => 41
	i32 2821294376, ; 213: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 125
	i32 2853208004, ; 214: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 139
	i32 2855708567, ; 215: Xamarin.AndroidX.Transition => 0xaa36a797 => 135
	i32 2876493027, ; 216: Xamarin.Android.Support.SwipeRefreshLayout => 0xab73cce3 => 69
	i32 2893257763, ; 217: Xamarin.Android.Arch.Core.Runtime.dll => 0xac739c23 => 44
	i32 2901442782, ; 218: System.Reflection => 0xacf080de => 169
	i32 2903344695, ; 219: System.ComponentModel.Composition => 0xad0d8637 => 162
	i32 2905242038, ; 220: mscorlib.dll => 0xad2a79b6 => 15
	i32 2912489636, ; 221: SkiaSharp.Views.Android => 0xad9910a4 => 25
	i32 2916838712, ; 222: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 140
	i32 2919462931, ; 223: System.Numerics.Vectors.dll => 0xae037813 => 37
	i32 2921128767, ; 224: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 79
	i32 2921692953, ; 225: Xamarin.Android.Support.CustomView.dll => 0xae257f19 => 59
	i32 2922925221, ; 226: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 74
	i32 2953735189, ; 227: Xamarin.AndroidX.Lifecycle.Service.dll => 0xb00e6c15 => 111
	i32 2974793899, ; 228: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 26
	i32 2978675010, ; 229: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 97
	i32 2996846495, ; 230: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 109
	i32 3016983068, ; 231: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 132
	i32 3024354802, ; 232: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 104
	i32 3036068679, ; 233: Microcharts.Droid.dll => 0xb4f6bb47 => 11
	i32 3044182254, ; 234: FormsViewGroup => 0xb57288ee => 8
	i32 3056250942, ; 235: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0xb62ab03e => 52
	i32 3057625584, ; 236: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 118
	i32 3068715062, ; 237: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 45
	i32 3085392760, ; 238: OxyPlot => 0xb7e75b78 => 18
	i32 3111772706, ; 239: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3144132135, ; 240: Xamarin.AndroidX.Sqlite => 0xbb67a627 => 130
	i32 3147431871, ; 241: OxyPlot.Xamarin.Forms.dll => 0xbb99ffbf => 20
	i32 3204380047, ; 242: System.Data.dll => 0xbefef58f => 156
	i32 3204912593, ; 243: Xamarin.Android.Support.AsyncLayoutInflater => 0xbf0715d1 => 52
	i32 3211777861, ; 244: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 96
	i32 3233339011, ; 245: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xc0b8d683 => 46
	i32 3247949154, ; 246: Mono.Security => 0xc197c562 => 168
	i32 3257332390, ; 247: MvvmHelpers => 0xc226f2a6 => 16
	i32 3258312781, ; 248: Xamarin.AndroidX.CardView => 0xc235e84d => 86
	i32 3267021929, ; 249: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 84
	i32 3280506390, ; 250: System.ComponentModel.Annotations.dll => 0xc3888e16 => 165
	i32 3286872994, ; 251: SQLite-net.dll => 0xc3e9b3a2 => 27
	i32 3296380511, ; 252: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 53
	i32 3317135071, ; 253: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 95
	i32 3317144872, ; 254: System.Data => 0xc5b79d28 => 156
	i32 3321585405, ; 255: Xamarin.Android.Support.DocumentFile.dll => 0xc5fb5efd => 61
	i32 3340387945, ; 256: SkiaSharp => 0xc71a4669 => 24
	i32 3340431453, ; 257: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 83
	i32 3345895724, ; 258: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 123
	i32 3346324047, ; 259: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 119
	i32 3352662376, ; 260: Xamarin.Android.Support.CoordinaterLayout => 0xc7d59168 => 55
	i32 3353484488, ; 261: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 103
	i32 3357663996, ; 262: Xamarin.Android.Support.CursorAdapter => 0xc821e2fc => 58
	i32 3360279109, ; 263: SQLitePCLRaw.core => 0xc849ca45 => 29
	i32 3362522851, ; 264: Xamarin.AndroidX.Core => 0xc86c06e3 => 93
	i32 3366347497, ; 265: Java.Interop => 0xc8a662e9 => 9
	i32 3374999561, ; 266: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 124
	i32 3395150330, ; 267: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 38
	i32 3404865022, ; 268: System.ServiceModel.Internals => 0xcaf21dfe => 164
	i32 3417342253, ; 269: eHealth.dll => 0xcbb0812d => 6
	i32 3429136800, ; 270: System.Xml => 0xcc6479a0 => 41
	i32 3430777524, ; 271: netstandard => 0xcc7d82b4 => 1
	i32 3439690031, ; 272: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 51
	i32 3441283291, ; 273: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 98
	i32 3455791806, ; 274: Microcharts => 0xcdfb32be => 10
	i32 3476120550, ; 275: Mono.Android => 0xcf3163e6 => 14
	i32 3486566296, ; 276: System.Transactions => 0xcfd0c798 => 157
	i32 3493954962, ; 277: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 88
	i32 3498942916, ; 278: Xamarin.Android.Support.v7.CardView.dll => 0xd08da1c4 => 72
	i32 3501239056, ; 279: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 84
	i32 3509114376, ; 280: System.Xml.Linq => 0xd128d608 => 42
	i32 3536029504, ; 281: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 144
	i32 3547625832, ; 282: Xamarin.Android.Support.SlidingPaneLayout => 0xd3747968 => 68
	i32 3567349600, ; 283: System.ComponentModel.Composition.dll => 0xd4a16f60 => 162
	i32 3612947231, ; 284: Xamarin.AndroidX.Work.Runtime => 0xd759331f => 141
	i32 3618140916, ; 285: Xamarin.AndroidX.Preference => 0xd7a872f4 => 121
	i32 3627220390, ; 286: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 122
	i32 3632359727, ; 287: Xamarin.Forms.Platform => 0xd881692f => 145
	i32 3633644679, ; 288: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 79
	i32 3641597786, ; 289: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 107
	i32 3645089577, ; 290: System.ComponentModel.DataAnnotations => 0xd943a729 => 166
	i32 3664423555, ; 291: Xamarin.Android.Support.ViewPager.dll => 0xda6aaa83 => 76
	i32 3668042751, ; 292: Microcharts.dll => 0xdaa1e3ff => 10
	i32 3672681054, ; 293: Mono.Android.dll => 0xdae8aa5e => 14
	i32 3676310014, ; 294: System.Web.Services.dll => 0xdb2009fe => 163
	i32 3678221644, ; 295: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 71
	i32 3681174138, ; 296: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 45
	i32 3682565725, ; 297: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 85
	i32 3684561358, ; 298: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 88
	i32 3689375977, ; 299: System.Drawing.Common => 0xdbe768e9 => 159
	i32 3706696989, ; 300: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 92
	i32 3714038699, ; 301: Xamarin.Android.Support.LocalBroadcastManager.dll => 0xdd5fbbab => 66
	i32 3718463572, ; 302: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 50
	i32 3718780102, ; 303: Xamarin.AndroidX.Annotation => 0xdda814c6 => 78
	i32 3724971120, ; 304: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 118
	i32 3735092365, ; 305: Xamarin.AndroidX.Room.Common.dll => 0xdea0fc8d => 126
	i32 3754567612, ; 306: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 31
	i32 3758932259, ; 307: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 105
	i32 3776062606, ; 308: Xamarin.Android.Support.DrawerLayout.dll => 0xe112248e => 62
	i32 3786282454, ; 309: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 87
	i32 3822602673, ; 310: Xamarin.AndroidX.Media => 0xe3d849b1 => 116
	i32 3829621856, ; 311: System.Numerics.dll => 0xe4436460 => 36
	i32 3832731800, ; 312: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe472d898 => 55
	i32 3841636137, ; 313: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 13
	i32 3854864648, ; 314: OxyPlot.Xamarin.Forms.Platform.Android.dll => 0xe5c49108 => 21
	i32 3862817207, ; 315: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 48
	i32 3874897629, ; 316: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 48
	i32 3876362041, ; 317: SQLite-net => 0xe70c9739 => 27
	i32 3883175360, ; 318: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 71
	i32 3885922214, ; 319: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 135
	i32 3888767677, ; 320: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 123
	i32 3896760992, ; 321: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 93
	i32 3903721208, ; 322: Microcharts.Forms => 0xe8ae0ef8 => 12
	i32 3920810846, ; 323: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 161
	i32 3921031405, ; 324: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 138
	i32 3931092270, ; 325: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 120
	i32 3945713374, ; 326: System.Data.DataSetExtensions.dll => 0xeb2ecede => 158
	i32 3955647286, ; 327: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 81
	i32 3959773229, ; 328: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 109
	i32 4025784931, ; 329: System.Memory => 0xeff49a63 => 35
	i32 4063435586, ; 330: Xamarin.Android.Support.CustomView => 0xf2331b42 => 59
	i32 4101593132, ; 331: Xamarin.AndroidX.Emoji2 => 0xf479582c => 99
	i32 4105002889, ; 332: Mono.Security.dll => 0xf4ad5f89 => 168
	i32 4137181845, ; 333: Xamarin.AndroidX.Room.Runtime => 0xf6986295 => 127
	i32 4151237749, ; 334: System.Core => 0xf76edc75 => 33
	i32 4182413190, ; 335: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 113
	i32 4216993138, ; 336: Xamarin.Android.Support.Transition.dll => 0xfb5a3572 => 70
	i32 4219003402, ; 337: Xamarin.Android.Support.v7.CardView => 0xfb78e20a => 72
	i32 4256097574, ; 338: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 92
	i32 4260525087, ; 339: System.Buffers => 0xfdf2741f => 32
	i32 4274623895, ; 340: CommunityToolkit.Mvvm.dll => 0xfec99597 => 4
	i32 4292120959 ; 341: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 113
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [342 x i32] [
	i32 18, i32 110, i32 148, i32 17, i32 143, i32 75, i32 129, i32 129, ; 0..7
	i32 152, i32 165, i32 43, i32 87, i32 54, i32 133, i32 22, i32 44, ; 8..15
	i32 85, i32 104, i32 163, i32 90, i32 108, i32 102, i32 70, i32 141, ; 16..23
	i32 77, i32 36, i32 0, i32 106, i32 30, i32 35, i32 50, i32 56, ; 24..31
	i32 89, i32 142, i32 167, i32 101, i32 15, i32 34, i32 102, i32 115, ; 32..39
	i32 54, i32 67, i32 24, i32 157, i32 152, i32 60, i32 5, i32 73, ; 40..47
	i32 161, i32 95, i32 100, i32 138, i32 82, i32 42, i32 154, i32 51, ; 48..55
	i32 149, i32 7, i32 153, i32 40, i32 28, i32 160, i32 64, i32 159, ; 56..63
	i32 16, i32 111, i32 122, i32 11, i32 67, i32 148, i32 17, i32 153, ; 64..71
	i32 106, i32 8, i32 47, i32 167, i32 128, i32 13, i32 23, i32 81, ; 72..79
	i32 145, i32 112, i32 151, i32 49, i32 34, i32 136, i32 119, i32 82, ; 80..87
	i32 4, i32 22, i32 132, i32 137, i32 154, i32 29, i32 58, i32 97, ; 88..95
	i32 46, i32 60, i32 170, i32 164, i32 128, i32 116, i32 91, i32 38, ; 96..103
	i32 5, i32 63, i32 146, i32 160, i32 80, i32 57, i32 96, i32 12, ; 104..111
	i32 43, i32 0, i32 3, i32 7, i32 114, i32 140, i32 126, i32 100, ; 112..119
	i32 94, i32 2, i32 39, i32 134, i32 147, i32 74, i32 90, i32 150, ; 120..127
	i32 30, i32 26, i32 169, i32 86, i32 130, i32 127, i32 133, i32 33, ; 128..135
	i32 101, i32 114, i32 151, i32 147, i32 120, i32 64, i32 142, i32 73, ; 136..143
	i32 146, i32 83, i32 49, i32 117, i32 6, i32 150, i32 32, i32 23, ; 144..151
	i32 112, i32 76, i32 65, i32 107, i32 39, i32 37, i32 103, i32 31, ; 152..159
	i32 144, i32 62, i32 57, i32 75, i32 155, i32 2, i32 136, i32 115, ; 160..167
	i32 117, i32 105, i32 131, i32 124, i32 20, i32 78, i32 56, i32 68, ; 168..175
	i32 63, i32 99, i32 121, i32 166, i32 65, i32 28, i32 89, i32 1, ; 176..183
	i32 9, i32 61, i32 158, i32 110, i32 21, i32 137, i32 155, i32 94, ; 184..191
	i32 98, i32 108, i32 40, i32 19, i32 170, i32 47, i32 134, i32 77, ; 192..199
	i32 80, i32 131, i32 19, i32 53, i32 143, i32 149, i32 139, i32 125, ; 200..207
	i32 66, i32 69, i32 25, i32 91, i32 41, i32 125, i32 139, i32 135, ; 208..215
	i32 69, i32 44, i32 169, i32 162, i32 15, i32 25, i32 140, i32 37, ; 216..223
	i32 79, i32 59, i32 74, i32 111, i32 26, i32 97, i32 109, i32 132, ; 224..231
	i32 104, i32 11, i32 8, i32 52, i32 118, i32 45, i32 18, i32 3, ; 232..239
	i32 130, i32 20, i32 156, i32 52, i32 96, i32 46, i32 168, i32 16, ; 240..247
	i32 86, i32 84, i32 165, i32 27, i32 53, i32 95, i32 156, i32 61, ; 248..255
	i32 24, i32 83, i32 123, i32 119, i32 55, i32 103, i32 58, i32 29, ; 256..263
	i32 93, i32 9, i32 124, i32 38, i32 164, i32 6, i32 41, i32 1, ; 264..271
	i32 51, i32 98, i32 10, i32 14, i32 157, i32 88, i32 72, i32 84, ; 272..279
	i32 42, i32 144, i32 68, i32 162, i32 141, i32 121, i32 122, i32 145, ; 280..287
	i32 79, i32 107, i32 166, i32 76, i32 10, i32 14, i32 163, i32 71, ; 288..295
	i32 45, i32 85, i32 88, i32 159, i32 92, i32 66, i32 50, i32 78, ; 296..303
	i32 118, i32 126, i32 31, i32 105, i32 62, i32 87, i32 116, i32 36, ; 304..311
	i32 55, i32 13, i32 21, i32 48, i32 48, i32 27, i32 71, i32 135, ; 312..319
	i32 123, i32 93, i32 12, i32 161, i32 138, i32 120, i32 158, i32 81, ; 320..327
	i32 109, i32 35, i32 59, i32 99, i32 168, i32 127, i32 33, i32 113, ; 328..335
	i32 70, i32 72, i32 92, i32 32, i32 4, i32 113 ; 336..341
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
