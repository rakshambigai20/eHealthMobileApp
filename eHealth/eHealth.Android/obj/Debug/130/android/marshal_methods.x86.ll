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
@assembly_image_cache_hashes = local_unnamed_addr constant [386 x i32] [
	i32 11257817, ; 0: OxyPlot.dll => 0xabc7d9 => 35
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 130
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 168
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 34
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 163
	i32 57967248, ; 5: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 95
	i32 101534019, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 149
	i32 120558881, ; 7: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 149
	i32 122350210, ; 8: System.Threading.Channels.dll => 0x74aea82 => 60
	i32 134690465, ; 9: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 172
	i32 159306688, ; 10: System.ComponentModel.Annotations => 0x97ed3c0 => 185
	i32 160529393, ; 11: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 63
	i32 165246403, ; 12: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 107
	i32 166922606, ; 13: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 74
	i32 182336117, ; 14: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 153
	i32 194720069, ; 15: Plugin.Messaging.Abstractions => 0xb9b3145 => 39
	i32 201930040, ; 16: Xamarin.Android.Arch.Core.Runtime => 0xc093538 => 64
	i32 209399409, ; 17: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 105
	i32 230216969, ; 18: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 124
	i32 230752869, ; 19: Microsoft.CSharp.dll => 0xdc10265 => 187
	i32 232815796, ; 20: System.Web.Services => 0xde07cb4 => 183
	i32 246610117, ; 21: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 188
	i32 261689757, ; 22: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 110
	i32 278686392, ; 23: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 128
	i32 280482487, ; 24: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 122
	i32 293914992, ; 25: Xamarin.Android.Support.Transition => 0x1184c970 => 90
	i32 305710573, ; 26: Microsoft.ML.CpuMath.dll => 0x1238c5ed => 21
	i32 307891448, ; 27: Xamarin.AndroidX.Work.Runtime.dll => 0x125a0cf8 => 161
	i32 318968648, ; 28: Xamarin.AndroidX.Activity.dll => 0x13031348 => 97
	i32 321597661, ; 29: System.Numerics => 0x132b30dd => 55
	i32 326667749, ; 30: eHealth.Android => 0x13788de5 => 0
	i32 342366114, ; 31: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 126
	i32 347068432, ; 32: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 47
	i32 385762202, ; 33: System.Memory.dll => 0x16fe439a => 54
	i32 388313361, ; 34: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 70
	i32 389971796, ; 35: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 76
	i32 441335492, ; 36: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 109
	i32 442521989, ; 37: Xamarin.Essentials => 0x1a605985 => 162
	i32 442565967, ; 38: System.Collections => 0x1a61054f => 191
	i32 450948140, ; 39: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 121
	i32 465846621, ; 40: mscorlib => 0x1bc4415d => 32
	i32 469710990, ; 41: System.dll => 0x1bff388e => 53
	i32 476646585, ; 42: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 122
	i32 486930444, ; 43: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 135
	i32 514659665, ; 44: Xamarin.Android.Support.Compat => 0x1ead1551 => 74
	i32 524864063, ; 45: Xamarin.Android.Support.Print => 0x1f48ca3f => 87
	i32 525008092, ; 46: SkiaSharp.dll => 0x1f4afcdc => 41
	i32 526420162, ; 47: System.Transactions.dll => 0x1f6088c2 => 177
	i32 527452488, ; 48: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 172
	i32 539750087, ; 49: Xamarin.Android.Support.Design => 0x202beec7 => 80
	i32 551862371, ; 50: eHealth.Data => 0x20e4c063 => 10
	i32 571524804, ; 51: Xamarin.Android.Support.v7.RecyclerView => 0x2210c6c4 => 93
	i32 605376203, ; 52: System.IO.Compression.FileSystem => 0x24154ecb => 181
	i32 622817381, ; 53: System.Numerics.Tensors => 0x251f7065 => 56
	i32 627609679, ; 54: Xamarin.AndroidX.CustomView => 0x2568904f => 115
	i32 639843206, ; 55: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 120
	i32 663517072, ; 56: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 158
	i32 666292255, ; 57: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 102
	i32 690569205, ; 58: System.Xml.Linq.dll => 0x29293ff5 => 62
	i32 691348768, ; 59: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 174
	i32 692692150, ; 60: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 71
	i32 700284507, ; 61: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 169
	i32 705820857, ; 62: eHealth.Service => 0x2a11f8b9 => 12
	i32 720511267, ; 63: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 173
	i32 748832960, ; 64: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 45
	i32 775507847, ; 65: System.IO.Compression => 0x2e394f87 => 180
	i32 801787702, ; 66: Xamarin.Android.Support.Interpolator => 0x2fca4f36 => 84
	i32 809851609, ; 67: System.Drawing.Common.dll => 0x30455ad9 => 179
	i32 835661280, ; 68: MvvmHelpers.dll => 0x31cf2de0 => 33
	i32 836755697, ; 69: Xamarin.AndroidX.Lifecycle.Service => 0x31dfe0f1 => 131
	i32 843511501, ; 70: Xamarin.AndroidX.Print => 0x3246f6cd => 142
	i32 848419076, ; 71: Microsoft.ML.DataView => 0x3291d904 => 23
	i32 886248193, ; 72: Microcharts.Droid => 0x34d31301 => 16
	i32 916714535, ; 73: Xamarin.Android.Support.Print.dll => 0x36a3f427 => 87
	i32 928116545, ; 74: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 168
	i32 933403136, ; 75: Microsoft.ML.KMeansClustering => 0x37a29a00 => 25
	i32 955402788, ; 76: Newtonsoft.Json => 0x38f24a24 => 34
	i32 956575887, ; 77: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 173
	i32 967690846, ; 78: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 126
	i32 974778368, ; 79: FormsViewGroup.dll => 0x3a19f000 => 13
	i32 987342438, ; 80: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0x3ad9a666 => 67
	i32 992768348, ; 81: System.Collections.dll => 0x3b2c715c => 191
	i32 1012816738, ; 82: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 148
	i32 1028951442, ; 83: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 19
	i32 1032266309, ; 84: Plugin.Messaging.dll => 0x3d872245 => 40
	i32 1035644815, ; 85: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 101
	i32 1042160112, ; 86: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 165
	i32 1052210849, ; 87: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 132
	i32 1059984159, ; 88: Microsoft.ML.dll => 0x3f2e131f => 24
	i32 1084122840, ; 89: Xamarin.Kotlin.StdLib => 0x409e66d8 => 171
	i32 1098167829, ; 90: Xamarin.Android.Arch.Lifecycle.ViewModel => 0x4174b615 => 69
	i32 1098259244, ; 91: System => 0x41761b2c => 53
	i32 1139159932, ; 92: Accord.MachineLearning => 0x43e6337c => 5
	i32 1175144683, ; 93: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 156
	i32 1178241025, ; 94: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 139
	i32 1199680934, ; 95: Microsoft.ML.PCA.dll => 0x4781ada6 => 27
	i32 1204270330, ; 96: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 102
	i32 1214827643, ; 97: CommunityToolkit.Mvvm => 0x4868cc7b => 9
	i32 1257494309, ; 98: Plugin.Messaging.Abstractions.dll => 0x4af3d725 => 39
	i32 1264511973, ; 99: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 152
	i32 1267360935, ; 100: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 157
	i32 1275534314, ; 101: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 174
	i32 1292207520, ; 102: SQLitePCLRaw.core.dll => 0x4d0585a0 => 46
	i32 1292763917, ; 103: Xamarin.Android.Support.CursorAdapter.dll => 0x4d0e030d => 78
	i32 1293217323, ; 104: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 117
	i32 1297413738, ; 105: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0x4d54f66a => 66
	i32 1359785034, ; 106: Xamarin.Android.Support.Design.dll => 0x510cac4a => 80
	i32 1365406463, ; 107: System.ServiceModel.Internals.dll => 0x516272ff => 184
	i32 1376866003, ; 108: Xamarin.AndroidX.SavedState => 0x52114ed3 => 148
	i32 1385471832, ; 109: Accord.Statistics => 0x52949f58 => 8
	i32 1395857551, ; 110: Xamarin.AndroidX.Media.dll => 0x5333188f => 136
	i32 1406073936, ; 111: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 111
	i32 1411638395, ; 112: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 58
	i32 1419208175, ; 113: eHealth.Data.dll => 0x549765ef => 10
	i32 1428822194, ; 114: Accord.Math.Core => 0x552a18b2 => 6
	i32 1445117038, ; 115: Microsoft.ML.StandardTrainers => 0x5622bc6e => 28
	i32 1445445088, ; 116: Xamarin.Android.Support.Fragment => 0x5627bde0 => 83
	i32 1460219004, ; 117: Xamarin.Forms.Xaml => 0x57092c7c => 166
	i32 1461234159, ; 118: System.Collections.Immutable.dll => 0x5718a9ef => 51
	i32 1462112819, ; 119: System.IO.Compression.dll => 0x57261233 => 180
	i32 1469204771, ; 120: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 100
	i32 1472315147, ; 121: Microsoft.ML.KMeansClustering.dll => 0x57c1bf0b => 25
	i32 1479771757, ; 122: System.Collections.Immutable => 0x5833866d => 51
	i32 1555438164, ; 123: Microsoft.ML.StandardTrainers.dll => 0x5cb61a54 => 28
	i32 1574652163, ; 124: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 77
	i32 1582372066, ; 125: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 116
	i32 1582526884, ; 126: Microcharts.Forms.dll => 0x5e5371a4 => 17
	i32 1587447679, ; 127: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 63
	i32 1588351947, ; 128: eHealth.Android.dll => 0x5eac53cb => 0
	i32 1592978981, ; 129: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1615491967, ; 130: eHealth.Service.dll => 0x604a737f => 12
	i32 1622152042, ; 131: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 134
	i32 1624863272, ; 132: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 160
	i32 1634619362, ; 133: Xamarin.AndroidX.Room.Common => 0x616e4fe2 => 146
	i32 1635184631, ; 134: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 120
	i32 1636350590, ; 135: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 114
	i32 1639515021, ; 136: System.Net.Http.dll => 0x61b9038d => 2
	i32 1657153582, ; 137: System.Runtime => 0x62c6282e => 59
	i32 1658241508, ; 138: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 154
	i32 1658251792, ; 139: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 167
	i32 1662014763, ; 140: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 94
	i32 1670060433, ; 141: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 110
	i32 1698840827, ; 142: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 170
	i32 1711441057, ; 143: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 47
	i32 1722051300, ; 144: SkiaSharp.Views.Forms => 0x66a46ae4 => 43
	i32 1728929640, ; 145: Microsoft.ML.Data.dll => 0x670d5f68 => 22
	i32 1729485958, ; 146: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 106
	i32 1736948048, ; 147: Xamarin.AndroidX.Sqlite.dll => 0x6787b950 => 150
	i32 1758026047, ; 148: Xamarin.AndroidX.Room.Runtime.dll => 0x68c9593f => 147
	i32 1766324549, ; 149: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 153
	i32 1776026572, ; 150: System.Core.dll => 0x69dc03cc => 52
	i32 1788241197, ; 151: Xamarin.AndroidX.Fragment => 0x6a96652d => 121
	i32 1808609942, ; 152: Xamarin.AndroidX.Loader => 0x6bcd3296 => 134
	i32 1813058853, ; 153: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 171
	i32 1813201214, ; 154: Xamarin.Google.Android.Material => 0x6c13413e => 167
	i32 1818569960, ; 155: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 140
	i32 1866717392, ; 156: Xamarin.Android.Support.Interpolator.dll => 0x6f43d8d0 => 84
	i32 1867746548, ; 157: Xamarin.Essentials.dll => 0x6f538cf4 => 162
	i32 1877418711, ; 158: Xamarin.Android.Support.v7.RecyclerView.dll => 0x6fe722d7 => 93
	i32 1878053835, ; 159: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 166
	i32 1885316902, ; 160: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 103
	i32 1916660109, ; 161: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x723de98d => 69
	i32 1919157823, ; 162: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 137
	i32 1927897671, ; 163: System.CodeDom.dll => 0x72e96247 => 50
	i32 1950899813, ; 164: eHealth => 0x74485e65 => 11
	i32 1964994573, ; 165: Accord.MachineLearning.dll => 0x751f700d => 5
	i32 1983156543, ; 166: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 170
	i32 2011961780, ; 167: System.Buffers.dll => 0x77ec19b4 => 49
	i32 2012836262, ; 168: Plugin.Messaging => 0x77f971a6 => 40
	i32 2019465201, ; 169: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 132
	i32 2037417872, ; 170: Xamarin.Android.Support.ViewPager => 0x79708790 => 96
	i32 2044222327, ; 171: Xamarin.Android.Support.Loader => 0x79d85b77 => 85
	i32 2055257422, ; 172: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 127
	i32 2079903147, ; 173: System.Runtime.dll => 0x7bf8cdab => 59
	i32 2090596640, ; 174: System.Numerics.Vectors => 0x7c9bf920 => 57
	i32 2094405699, ; 175: System.Numerics.Tensors.dll => 0x7cd61843 => 56
	i32 2097448633, ; 176: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 123
	i32 2103459038, ; 177: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 48
	i32 2126786730, ; 178: Xamarin.Forms.Platform.Android => 0x7ec430aa => 164
	i32 2139458754, ; 179: Xamarin.Android.Support.DrawerLayout => 0x7f858cc2 => 82
	i32 2166116741, ; 180: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 77
	i32 2178612968, ; 181: System.CodeDom => 0x81dafee8 => 50
	i32 2196165013, ; 182: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 95
	i32 2201107256, ; 183: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 175
	i32 2201231467, ; 184: System.Net.Http => 0x8334206b => 2
	i32 2217644978, ; 185: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 156
	i32 2244775296, ; 186: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 135
	i32 2256548716, ; 187: Xamarin.AndroidX.MultiDex => 0x8680336c => 137
	i32 2261435625, ; 188: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 125
	i32 2267693617, ; 189: Microsoft.ML.Transforms.dll => 0x872a4231 => 30
	i32 2268072489, ; 190: Accord => 0x87300a29 => 4
	i32 2276592402, ; 191: Microsoft.ML.Core => 0x87b20b12 => 20
	i32 2279703579, ; 192: Xamarin.AndroidX.Sqlite.Framework.dll => 0x87e1841b => 151
	i32 2279755925, ; 193: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 144
	i32 2280430125, ; 194: Microsoft.ML.Transforms => 0x87ec9a2d => 30
	i32 2306217607, ; 195: OxyPlot.Xamarin.Forms => 0x89761687 => 37
	i32 2315684594, ; 196: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 98
	i32 2330457430, ; 197: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 76
	i32 2330986192, ; 198: Xamarin.Android.Support.SlidingPaneLayout.dll => 0x8af006d0 => 88
	i32 2373288475, ; 199: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 83
	i32 2403452196, ; 200: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 119
	i32 2409053734, ; 201: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 141
	i32 2435904999, ; 202: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 186
	i32 2440966767, ; 203: Xamarin.Android.Support.Loader.dll => 0x917e326f => 85
	i32 2461767756, ; 204: Microsoft.ML.TimeSeries => 0x92bb984c => 29
	i32 2465273461, ; 205: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 45
	i32 2465532216, ; 206: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 109
	i32 2471841756, ; 207: netstandard.dll => 0x93554fdc => 1
	i32 2473157462, ; 208: Microsoft.ML.CpuMath => 0x93696356 => 21
	i32 2475788418, ; 209: Java.Interop.dll => 0x93918882 => 14
	i32 2487632829, ; 210: Xamarin.Android.Support.DocumentFile => 0x944643bd => 81
	i32 2501346920, ; 211: System.Data.DataSetExtensions => 0x95178668 => 178
	i32 2505896520, ; 212: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 130
	i32 2538310050, ; 213: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 188
	i32 2549538471, ; 214: Microsoft.ML.Core.dll => 0x97f6dea7 => 20
	i32 2562349572, ; 215: Microsoft.CSharp => 0x98ba5a04 => 187
	i32 2568748418, ; 216: OxyPlot.Xamarin.Forms.Platform.Android => 0x991bfd82 => 38
	i32 2581819634, ; 217: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 157
	i32 2605712449, ; 218: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 175
	i32 2620871830, ; 219: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 114
	i32 2624644809, ; 220: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 118
	i32 2633051222, ; 221: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 128
	i32 2643034788, ; 222: Microsoft.ML.Data => 0x9d8982a4 => 22
	i32 2655103248, ; 223: Accord.dll => 0x9e41a910 => 4
	i32 2689529426, ; 224: OxyPlot.Xamarin.Android => 0xa04ef652 => 36
	i32 2698266930, ; 225: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa0d44932 => 67
	i32 2701096212, ; 226: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 154
	i32 2732626843, ; 227: Xamarin.AndroidX.Activity => 0xa2e0939b => 97
	i32 2735172069, ; 228: System.Threading.Channels => 0xa30769e5 => 60
	i32 2737747696, ; 229: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 100
	i32 2739926663, ; 230: Xamarin.AndroidX.Sqlite.Framework => 0xa34ff687 => 151
	i32 2747619038, ; 231: OxyPlot.Xamarin.Android.dll => 0xa3c556de => 36
	i32 2751899777, ; 232: Xamarin.Android.Support.Collections => 0xa406a881 => 73
	i32 2766581644, ; 233: Xamarin.Forms.Core => 0xa4e6af8c => 163
	i32 2770495804, ; 234: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 169
	i32 2778768386, ; 235: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 159
	i32 2779977773, ; 236: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 145
	i32 2788639665, ; 237: Xamarin.Android.Support.LocalBroadcastManager => 0xa63743b1 => 86
	i32 2788775637, ; 238: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0xa63956d5 => 89
	i32 2795602088, ; 239: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 42
	i32 2810250172, ; 240: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 111
	i32 2819470561, ; 241: System.Xml.dll => 0xa80db4e1 => 61
	i32 2821294376, ; 242: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 145
	i32 2853208004, ; 243: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 159
	i32 2855708567, ; 244: Xamarin.AndroidX.Transition => 0xaa36a797 => 155
	i32 2876493027, ; 245: Xamarin.Android.Support.SwipeRefreshLayout => 0xab73cce3 => 89
	i32 2893257763, ; 246: Xamarin.Android.Arch.Core.Runtime.dll => 0xac739c23 => 64
	i32 2903344695, ; 247: System.ComponentModel.Composition => 0xad0d8637 => 182
	i32 2905242038, ; 248: mscorlib.dll => 0xad2a79b6 => 32
	i32 2912489636, ; 249: SkiaSharp.Views.Android => 0xad9910a4 => 42
	i32 2916838712, ; 250: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 160
	i32 2919462931, ; 251: System.Numerics.Vectors.dll => 0xae037813 => 57
	i32 2921128767, ; 252: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 99
	i32 2921692953, ; 253: Xamarin.Android.Support.CustomView.dll => 0xae257f19 => 79
	i32 2922925221, ; 254: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 94
	i32 2953735189, ; 255: Xamarin.AndroidX.Lifecycle.Service.dll => 0xb00e6c15 => 131
	i32 2974793899, ; 256: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 43
	i32 2978675010, ; 257: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 117
	i32 2996846495, ; 258: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 129
	i32 3016983068, ; 259: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 152
	i32 3024354802, ; 260: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 124
	i32 3036068679, ; 261: Microcharts.Droid.dll => 0xb4f6bb47 => 16
	i32 3044182254, ; 262: FormsViewGroup => 0xb57288ee => 13
	i32 3056250942, ; 263: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0xb62ab03e => 72
	i32 3057625584, ; 264: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 138
	i32 3068715062, ; 265: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 65
	i32 3085392760, ; 266: OxyPlot => 0xb7e75b78 => 35
	i32 3092250273, ; 267: Accord.Math => 0xb84ffea1 => 7
	i32 3096563696, ; 268: Microsoft.Bcl.Numerics => 0xb891cff0 => 18
	i32 3111772706, ; 269: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3124832203, ; 270: System.Threading.Tasks.Extensions => 0xba4127cb => 190
	i32 3144132135, ; 271: Xamarin.AndroidX.Sqlite => 0xbb67a627 => 150
	i32 3147431871, ; 272: OxyPlot.Xamarin.Forms.dll => 0xbb99ffbf => 37
	i32 3204380047, ; 273: System.Data.dll => 0xbefef58f => 176
	i32 3204912593, ; 274: Xamarin.Android.Support.AsyncLayoutInflater => 0xbf0715d1 => 72
	i32 3211777861, ; 275: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 116
	i32 3218227740, ; 276: Microsoft.ML => 0xbfd2421c => 24
	i32 3233339011, ; 277: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xc0b8d683 => 66
	i32 3239802787, ; 278: Accord.Math.dll => 0xc11b77a3 => 7
	i32 3247949154, ; 279: Mono.Security => 0xc197c562 => 192
	i32 3257332390, ; 280: MvvmHelpers => 0xc226f2a6 => 33
	i32 3258312781, ; 281: Xamarin.AndroidX.CardView => 0xc235e84d => 106
	i32 3265893370, ; 282: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 190
	i32 3267021929, ; 283: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 104
	i32 3280506390, ; 284: System.ComponentModel.Annotations.dll => 0xc3888e16 => 185
	i32 3286872994, ; 285: SQLite-net.dll => 0xc3e9b3a2 => 44
	i32 3293959912, ; 286: Accord.Math.Core.dll => 0xc455d6e8 => 6
	i32 3296380511, ; 287: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 73
	i32 3317135071, ; 288: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 115
	i32 3317144872, ; 289: System.Data => 0xc5b79d28 => 176
	i32 3321585405, ; 290: Xamarin.Android.Support.DocumentFile.dll => 0xc5fb5efd => 81
	i32 3340387945, ; 291: SkiaSharp => 0xc71a4669 => 41
	i32 3340431453, ; 292: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 103
	i32 3345895724, ; 293: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 143
	i32 3346324047, ; 294: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 139
	i32 3352662376, ; 295: Xamarin.Android.Support.CoordinaterLayout => 0xc7d59168 => 75
	i32 3353484488, ; 296: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 123
	i32 3357663996, ; 297: Xamarin.Android.Support.CursorAdapter => 0xc821e2fc => 78
	i32 3360279109, ; 298: SQLitePCLRaw.core => 0xc849ca45 => 46
	i32 3362522851, ; 299: Xamarin.AndroidX.Core => 0xc86c06e3 => 113
	i32 3366347497, ; 300: Java.Interop => 0xc8a662e9 => 14
	i32 3374999561, ; 301: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 144
	i32 3376859421, ; 302: Microsoft.ML.TimeSeries.dll => 0xc946c91d => 29
	i32 3395150330, ; 303: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 58
	i32 3404865022, ; 304: System.ServiceModel.Internals => 0xcaf21dfe => 184
	i32 3417342253, ; 305: eHealth.dll => 0xcbb0812d => 11
	i32 3429136800, ; 306: System.Xml => 0xcc6479a0 => 61
	i32 3430777524, ; 307: netstandard => 0xcc7d82b4 => 1
	i32 3439690031, ; 308: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 71
	i32 3441283291, ; 309: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 118
	i32 3455791806, ; 310: Microcharts => 0xcdfb32be => 15
	i32 3476120550, ; 311: Mono.Android => 0xcf3163e6 => 31
	i32 3486566296, ; 312: System.Transactions => 0xcfd0c798 => 177
	i32 3493954962, ; 313: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 108
	i32 3498942916, ; 314: Xamarin.Android.Support.v7.CardView.dll => 0xd08da1c4 => 92
	i32 3501239056, ; 315: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 104
	i32 3509114376, ; 316: System.Xml.Linq => 0xd128d608 => 62
	i32 3522696746, ; 317: Microsoft.ML.PCA => 0xd1f8162a => 27
	i32 3536029504, ; 318: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 164
	i32 3547625832, ; 319: Xamarin.Android.Support.SlidingPaneLayout => 0xd3747968 => 88
	i32 3567349600, ; 320: System.ComponentModel.Composition.dll => 0xd4a16f60 => 182
	i32 3612947231, ; 321: Xamarin.AndroidX.Work.Runtime => 0xd759331f => 161
	i32 3618140916, ; 322: Xamarin.AndroidX.Preference => 0xd7a872f4 => 141
	i32 3627220390, ; 323: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 142
	i32 3632359727, ; 324: Xamarin.Forms.Platform => 0xd881692f => 165
	i32 3633644679, ; 325: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 99
	i32 3641597786, ; 326: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 127
	i32 3645089577, ; 327: System.ComponentModel.DataAnnotations => 0xd943a729 => 186
	i32 3664423555, ; 328: Xamarin.Android.Support.ViewPager.dll => 0xda6aaa83 => 96
	i32 3668042751, ; 329: Microcharts.dll => 0xdaa1e3ff => 15
	i32 3672681054, ; 330: Mono.Android.dll => 0xdae8aa5e => 31
	i32 3676310014, ; 331: System.Web.Services.dll => 0xdb2009fe => 183
	i32 3678221644, ; 332: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 91
	i32 3681174138, ; 333: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 65
	i32 3682565725, ; 334: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 105
	i32 3684561358, ; 335: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 108
	i32 3689375977, ; 336: System.Drawing.Common => 0xdbe768e9 => 179
	i32 3706696989, ; 337: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 112
	i32 3711244101, ; 338: Microsoft.ML.DataView.dll => 0xdd351745 => 23
	i32 3714038699, ; 339: Xamarin.Android.Support.LocalBroadcastManager.dll => 0xdd5fbbab => 86
	i32 3718463572, ; 340: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 70
	i32 3718780102, ; 341: Xamarin.AndroidX.Annotation => 0xdda814c6 => 98
	i32 3724971120, ; 342: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 138
	i32 3735092365, ; 343: Xamarin.AndroidX.Room.Common.dll => 0xdea0fc8d => 146
	i32 3754567612, ; 344: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 48
	i32 3758932259, ; 345: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 125
	i32 3776062606, ; 346: Xamarin.Android.Support.DrawerLayout.dll => 0xe112248e => 82
	i32 3786282454, ; 347: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 107
	i32 3819541726, ; 348: Accord.Statistics.dll => 0xe3a994de => 8
	i32 3822602673, ; 349: Xamarin.AndroidX.Media => 0xe3d849b1 => 136
	i32 3829621856, ; 350: System.Numerics.dll => 0xe4436460 => 55
	i32 3832731800, ; 351: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe472d898 => 75
	i32 3841636137, ; 352: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 19
	i32 3854864648, ; 353: OxyPlot.Xamarin.Forms.Platform.Android.dll => 0xe5c49108 => 38
	i32 3862817207, ; 354: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 68
	i32 3874897629, ; 355: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 68
	i32 3876362041, ; 356: SQLite-net => 0xe70c9739 => 44
	i32 3883175360, ; 357: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 91
	i32 3885922214, ; 358: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 155
	i32 3888767677, ; 359: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 143
	i32 3896760992, ; 360: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 113
	i32 3903721208, ; 361: Microcharts.Forms => 0xe8ae0ef8 => 17
	i32 3920810846, ; 362: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 181
	i32 3921031405, ; 363: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 158
	i32 3931092270, ; 364: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 140
	i32 3945713374, ; 365: System.Data.DataSetExtensions.dll => 0xeb2ecede => 178
	i32 3955647286, ; 366: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 101
	i32 3959773229, ; 367: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 129
	i32 4025784931, ; 368: System.Memory => 0xeff49a63 => 54
	i32 4054681211, ; 369: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 189
	i32 4054838365, ; 370: Microsoft.ML.OnnxRuntime => 0xf1afec5d => 26
	i32 4063435586, ; 371: Xamarin.Android.Support.CustomView => 0xf2331b42 => 79
	i32 4101593132, ; 372: Xamarin.AndroidX.Emoji2 => 0xf479582c => 119
	i32 4105002889, ; 373: Mono.Security.dll => 0xf4ad5f89 => 192
	i32 4137181845, ; 374: Xamarin.AndroidX.Room.Runtime => 0xf6986295 => 147
	i32 4147896353, ; 375: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 189
	i32 4151237749, ; 376: System.Core => 0xf76edc75 => 52
	i32 4167680228, ; 377: Microsoft.ML.OnnxRuntime.dll => 0xf869c0e4 => 26
	i32 4182413190, ; 378: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 133
	i32 4200399830, ; 379: Microsoft.Bcl.Numerics.dll => 0xfa5d03d6 => 18
	i32 4216993138, ; 380: Xamarin.Android.Support.Transition.dll => 0xfb5a3572 => 90
	i32 4219003402, ; 381: Xamarin.Android.Support.v7.CardView => 0xfb78e20a => 92
	i32 4256097574, ; 382: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 112
	i32 4260525087, ; 383: System.Buffers => 0xfdf2741f => 49
	i32 4274623895, ; 384: CommunityToolkit.Mvvm.dll => 0xfec99597 => 9
	i32 4292120959 ; 385: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 133
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [386 x i32] [
	i32 35, i32 130, i32 168, i32 34, i32 163, i32 95, i32 149, i32 149, ; 0..7
	i32 60, i32 172, i32 185, i32 63, i32 107, i32 74, i32 153, i32 39, ; 8..15
	i32 64, i32 105, i32 124, i32 187, i32 183, i32 188, i32 110, i32 128, ; 16..23
	i32 122, i32 90, i32 21, i32 161, i32 97, i32 55, i32 0, i32 126, ; 24..31
	i32 47, i32 54, i32 70, i32 76, i32 109, i32 162, i32 191, i32 121, ; 32..39
	i32 32, i32 53, i32 122, i32 135, i32 74, i32 87, i32 41, i32 177, ; 40..47
	i32 172, i32 80, i32 10, i32 93, i32 181, i32 56, i32 115, i32 120, ; 48..55
	i32 158, i32 102, i32 62, i32 174, i32 71, i32 169, i32 12, i32 173, ; 56..63
	i32 45, i32 180, i32 84, i32 179, i32 33, i32 131, i32 142, i32 23, ; 64..71
	i32 16, i32 87, i32 168, i32 25, i32 34, i32 173, i32 126, i32 13, ; 72..79
	i32 67, i32 191, i32 148, i32 19, i32 40, i32 101, i32 165, i32 132, ; 80..87
	i32 24, i32 171, i32 69, i32 53, i32 5, i32 156, i32 139, i32 27, ; 88..95
	i32 102, i32 9, i32 39, i32 152, i32 157, i32 174, i32 46, i32 78, ; 96..103
	i32 117, i32 66, i32 80, i32 184, i32 148, i32 8, i32 136, i32 111, ; 104..111
	i32 58, i32 10, i32 6, i32 28, i32 83, i32 166, i32 51, i32 180, ; 112..119
	i32 100, i32 25, i32 51, i32 28, i32 77, i32 116, i32 17, i32 63, ; 120..127
	i32 0, i32 3, i32 12, i32 134, i32 160, i32 146, i32 120, i32 114, ; 128..135
	i32 2, i32 59, i32 154, i32 167, i32 94, i32 110, i32 170, i32 47, ; 136..143
	i32 43, i32 22, i32 106, i32 150, i32 147, i32 153, i32 52, i32 121, ; 144..151
	i32 134, i32 171, i32 167, i32 140, i32 84, i32 162, i32 93, i32 166, ; 152..159
	i32 103, i32 69, i32 137, i32 50, i32 11, i32 5, i32 170, i32 49, ; 160..167
	i32 40, i32 132, i32 96, i32 85, i32 127, i32 59, i32 57, i32 56, ; 168..175
	i32 123, i32 48, i32 164, i32 82, i32 77, i32 50, i32 95, i32 175, ; 176..183
	i32 2, i32 156, i32 135, i32 137, i32 125, i32 30, i32 4, i32 20, ; 184..191
	i32 151, i32 144, i32 30, i32 37, i32 98, i32 76, i32 88, i32 83, ; 192..199
	i32 119, i32 141, i32 186, i32 85, i32 29, i32 45, i32 109, i32 1, ; 200..207
	i32 21, i32 14, i32 81, i32 178, i32 130, i32 188, i32 20, i32 187, ; 208..215
	i32 38, i32 157, i32 175, i32 114, i32 118, i32 128, i32 22, i32 4, ; 216..223
	i32 36, i32 67, i32 154, i32 97, i32 60, i32 100, i32 151, i32 36, ; 224..231
	i32 73, i32 163, i32 169, i32 159, i32 145, i32 86, i32 89, i32 42, ; 232..239
	i32 111, i32 61, i32 145, i32 159, i32 155, i32 89, i32 64, i32 182, ; 240..247
	i32 32, i32 42, i32 160, i32 57, i32 99, i32 79, i32 94, i32 131, ; 248..255
	i32 43, i32 117, i32 129, i32 152, i32 124, i32 16, i32 13, i32 72, ; 256..263
	i32 138, i32 65, i32 35, i32 7, i32 18, i32 3, i32 190, i32 150, ; 264..271
	i32 37, i32 176, i32 72, i32 116, i32 24, i32 66, i32 7, i32 192, ; 272..279
	i32 33, i32 106, i32 190, i32 104, i32 185, i32 44, i32 6, i32 73, ; 280..287
	i32 115, i32 176, i32 81, i32 41, i32 103, i32 143, i32 139, i32 75, ; 288..295
	i32 123, i32 78, i32 46, i32 113, i32 14, i32 144, i32 29, i32 58, ; 296..303
	i32 184, i32 11, i32 61, i32 1, i32 71, i32 118, i32 15, i32 31, ; 304..311
	i32 177, i32 108, i32 92, i32 104, i32 62, i32 27, i32 164, i32 88, ; 312..319
	i32 182, i32 161, i32 141, i32 142, i32 165, i32 99, i32 127, i32 186, ; 320..327
	i32 96, i32 15, i32 31, i32 183, i32 91, i32 65, i32 105, i32 108, ; 328..335
	i32 179, i32 112, i32 23, i32 86, i32 70, i32 98, i32 138, i32 146, ; 336..343
	i32 48, i32 125, i32 82, i32 107, i32 8, i32 136, i32 55, i32 75, ; 344..351
	i32 19, i32 38, i32 68, i32 68, i32 44, i32 91, i32 155, i32 143, ; 352..359
	i32 113, i32 17, i32 181, i32 158, i32 140, i32 178, i32 101, i32 129, ; 360..367
	i32 54, i32 189, i32 26, i32 79, i32 119, i32 192, i32 147, i32 189, ; 368..375
	i32 52, i32 26, i32 133, i32 18, i32 90, i32 92, i32 112, i32 49, ; 376..383
	i32 9, i32 133 ; 384..385
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
