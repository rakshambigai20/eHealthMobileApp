; ModuleID = 'obj\Release\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\130\android\marshal_methods.armeabi-v7a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [200 x i32] [
	i32 11257817, ; 0: OxyPlot.dll => 0xabc7d9 => 65
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 90
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 64
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 86
	i32 122350210, ; 4: System.Threading.Channels.dll => 0x74aea82 => 82
	i32 134690465, ; 5: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 92
	i32 182336117, ; 6: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 27
	i32 194720069, ; 7: Plugin.Messaging.Abstractions => 0xb9b3145 => 69
	i32 230752869, ; 8: Microsoft.CSharp.dll => 0xdc10265 => 38
	i32 305710573, ; 9: Microsoft.ML.CpuMath.dll => 0x1238c5ed => 54
	i32 318968648, ; 10: Xamarin.AndroidX.Activity.dll => 0x13031348 => 83
	i32 321597661, ; 11: System.Numerics => 0x132b30dd => 8
	i32 326667749, ; 12: eHealth.Android => 0x13788de5 => 96
	i32 342366114, ; 13: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 22
	i32 347068432, ; 14: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 77
	i32 442521989, ; 15: Xamarin.Essentials => 0x1a605985 => 85
	i32 450948140, ; 16: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 20
	i32 465846621, ; 17: mscorlib => 0x1bc4415d => 4
	i32 469710990, ; 18: System.dll => 0x1bff388e => 7
	i32 525008092, ; 19: SkiaSharp.dll => 0x1f4afcdc => 71
	i32 527452488, ; 20: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 92
	i32 551862371, ; 21: eHealth.Data => 0x20e4c063 => 97
	i32 605376203, ; 22: System.IO.Compression.FileSystem => 0x24154ecb => 35
	i32 622817381, ; 23: System.Numerics.Tensors => 0x251f7065 => 81
	i32 627609679, ; 24: Xamarin.AndroidX.CustomView => 0x2568904f => 18
	i32 690569205, ; 25: System.Xml.Linq.dll => 0x29293ff5 => 11
	i32 691348768, ; 26: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 94
	i32 700284507, ; 27: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 30
	i32 705820857, ; 28: eHealth.Service => 0x2a11f8b9 => 99
	i32 720511267, ; 29: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 93
	i32 748832960, ; 30: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 75
	i32 775507847, ; 31: System.IO.Compression => 0x2e394f87 => 34
	i32 809851609, ; 32: System.Drawing.Common.dll => 0x30455ad9 => 33
	i32 835661280, ; 33: MvvmHelpers.dll => 0x31cf2de0 => 63
	i32 848419076, ; 34: Microsoft.ML.DataView => 0x3291d904 => 56
	i32 886248193, ; 35: Microcharts.Droid => 0x34d31301 => 49
	i32 928116545, ; 36: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 90
	i32 933403136, ; 37: Microsoft.ML.KMeansClustering => 0x37a29a00 => 58
	i32 955402788, ; 38: Newtonsoft.Json => 0x38f24a24 => 64
	i32 956575887, ; 39: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 93
	i32 967690846, ; 40: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 22
	i32 974778368, ; 41: FormsViewGroup.dll => 0x3a19f000 => 47
	i32 1012816738, ; 42: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 84
	i32 1028951442, ; 43: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 52
	i32 1032266309, ; 44: Plugin.Messaging.dll => 0x3d872245 => 70
	i32 1035644815, ; 45: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 13
	i32 1042160112, ; 46: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 88
	i32 1052210849, ; 47: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 24
	i32 1059984159, ; 48: Microsoft.ML.dll => 0x3f2e131f => 57
	i32 1084122840, ; 49: Xamarin.Kotlin.StdLib => 0x409e66d8 => 31
	i32 1098259244, ; 50: System => 0x41761b2c => 7
	i32 1139159932, ; 51: Accord.MachineLearning => 0x43e6337c => 42
	i32 1199680934, ; 52: Microsoft.ML.PCA.dll => 0x4781ada6 => 59
	i32 1214827643, ; 53: CommunityToolkit.Mvvm => 0x4868cc7b => 46
	i32 1257494309, ; 54: Plugin.Messaging.Abstractions.dll => 0x4af3d725 => 69
	i32 1275534314, ; 55: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 94
	i32 1292207520, ; 56: SQLitePCLRaw.core.dll => 0x4d0585a0 => 76
	i32 1293217323, ; 57: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 19
	i32 1365406463, ; 58: System.ServiceModel.Internals.dll => 0x516272ff => 36
	i32 1376866003, ; 59: Xamarin.AndroidX.SavedState => 0x52114ed3 => 84
	i32 1385471832, ; 60: Accord.Statistics => 0x52949f58 => 45
	i32 1406073936, ; 61: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 15
	i32 1411638395, ; 62: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 9
	i32 1419208175, ; 63: eHealth.Data.dll => 0x549765ef => 97
	i32 1428822194, ; 64: Accord.Math.Core => 0x552a18b2 => 43
	i32 1445117038, ; 65: Microsoft.ML.StandardTrainers => 0x5622bc6e => 60
	i32 1460219004, ; 66: Xamarin.Forms.Xaml => 0x57092c7c => 89
	i32 1461234159, ; 67: System.Collections.Immutable.dll => 0x5718a9ef => 80
	i32 1462112819, ; 68: System.IO.Compression.dll => 0x57261233 => 34
	i32 1469204771, ; 69: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 12
	i32 1472315147, ; 70: Microsoft.ML.KMeansClustering.dll => 0x57c1bf0b => 58
	i32 1479771757, ; 71: System.Collections.Immutable => 0x5833866d => 80
	i32 1555438164, ; 72: Microsoft.ML.StandardTrainers.dll => 0x5cb61a54 => 60
	i32 1582526884, ; 73: Microcharts.Forms.dll => 0x5e5371a4 => 50
	i32 1588351947, ; 74: eHealth.Android.dll => 0x5eac53cb => 96
	i32 1592978981, ; 75: System.Runtime.Serialization.dll => 0x5ef2ee25 => 1
	i32 1615491967, ; 76: eHealth.Service.dll => 0x604a737f => 99
	i32 1622152042, ; 77: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 25
	i32 1636350590, ; 78: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 17
	i32 1639515021, ; 79: System.Net.Http.dll => 0x61b9038d => 0
	i32 1658251792, ; 80: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 29
	i32 1698840827, ; 81: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 91
	i32 1711441057, ; 82: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 77
	i32 1722051300, ; 83: SkiaSharp.Views.Forms => 0x66a46ae4 => 73
	i32 1728929640, ; 84: Microsoft.ML.Data.dll => 0x670d5f68 => 55
	i32 1729485958, ; 85: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 14
	i32 1766324549, ; 86: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 27
	i32 1776026572, ; 87: System.Core.dll => 0x69dc03cc => 6
	i32 1788241197, ; 88: Xamarin.AndroidX.Fragment => 0x6a96652d => 20
	i32 1808609942, ; 89: Xamarin.AndroidX.Loader => 0x6bcd3296 => 25
	i32 1813058853, ; 90: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 31
	i32 1813201214, ; 91: Xamarin.Google.Android.Material => 0x6c13413e => 29
	i32 1867746548, ; 92: Xamarin.Essentials.dll => 0x6f538cf4 => 85
	i32 1878053835, ; 93: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 89
	i32 1927897671, ; 94: System.CodeDom.dll => 0x72e96247 => 79
	i32 1950899813, ; 95: eHealth => 0x74485e65 => 98
	i32 1964994573, ; 96: Accord.MachineLearning.dll => 0x751f700d => 42
	i32 1983156543, ; 97: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 91
	i32 2011961780, ; 98: System.Buffers.dll => 0x77ec19b4 => 5
	i32 2012836262, ; 99: Plugin.Messaging => 0x77f971a6 => 70
	i32 2019465201, ; 100: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 24
	i32 2055257422, ; 101: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 23
	i32 2094405699, ; 102: System.Numerics.Tensors.dll => 0x7cd61843 => 81
	i32 2097448633, ; 103: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 21
	i32 2103459038, ; 104: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 78
	i32 2126786730, ; 105: Xamarin.Forms.Platform.Android => 0x7ec430aa => 87
	i32 2178612968, ; 106: System.CodeDom => 0x81dafee8 => 79
	i32 2201107256, ; 107: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 95
	i32 2201231467, ; 108: System.Net.Http => 0x8334206b => 0
	i32 2267693617, ; 109: Microsoft.ML.Transforms.dll => 0x872a4231 => 62
	i32 2268072489, ; 110: Accord => 0x87300a29 => 41
	i32 2276592402, ; 111: Microsoft.ML.Core => 0x87b20b12 => 53
	i32 2279755925, ; 112: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 26
	i32 2280430125, ; 113: Microsoft.ML.Transforms => 0x87ec9a2d => 62
	i32 2306217607, ; 114: OxyPlot.Xamarin.Forms => 0x89761687 => 67
	i32 2435904999, ; 115: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 37
	i32 2461767756, ; 116: Microsoft.ML.TimeSeries => 0x92bb984c => 61
	i32 2465273461, ; 117: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 75
	i32 2473157462, ; 118: Microsoft.ML.CpuMath => 0x93696356 => 54
	i32 2475788418, ; 119: Java.Interop.dll => 0x93918882 => 2
	i32 2549538471, ; 120: Microsoft.ML.Core.dll => 0x97f6dea7 => 53
	i32 2562349572, ; 121: Microsoft.CSharp => 0x98ba5a04 => 38
	i32 2568748418, ; 122: OxyPlot.Xamarin.Forms.Platform.Android => 0x991bfd82 => 68
	i32 2605712449, ; 123: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 95
	i32 2620871830, ; 124: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 17
	i32 2643034788, ; 125: Microsoft.ML.Data => 0x9d8982a4 => 55
	i32 2655103248, ; 126: Accord.dll => 0x9e41a910 => 41
	i32 2689529426, ; 127: OxyPlot.Xamarin.Android => 0xa04ef652 => 66
	i32 2732626843, ; 128: Xamarin.AndroidX.Activity => 0xa2e0939b => 83
	i32 2735172069, ; 129: System.Threading.Channels => 0xa30769e5 => 82
	i32 2737747696, ; 130: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 12
	i32 2747619038, ; 131: OxyPlot.Xamarin.Android.dll => 0xa3c556de => 66
	i32 2766581644, ; 132: Xamarin.Forms.Core => 0xa4e6af8c => 86
	i32 2770495804, ; 133: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 30
	i32 2778768386, ; 134: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 28
	i32 2795602088, ; 135: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 72
	i32 2810250172, ; 136: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 15
	i32 2819470561, ; 137: System.Xml.dll => 0xa80db4e1 => 10
	i32 2853208004, ; 138: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 28
	i32 2905242038, ; 139: mscorlib.dll => 0xad2a79b6 => 4
	i32 2912489636, ; 140: SkiaSharp.Views.Android => 0xad9910a4 => 72
	i32 2974793899, ; 141: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 73
	i32 2978675010, ; 142: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 19
	i32 3036068679, ; 143: Microcharts.Droid.dll => 0xb4f6bb47 => 49
	i32 3044182254, ; 144: FormsViewGroup => 0xb57288ee => 47
	i32 3085392760, ; 145: OxyPlot => 0xb7e75b78 => 65
	i32 3092250273, ; 146: Accord.Math => 0xb84ffea1 => 44
	i32 3096563696, ; 147: Microsoft.Bcl.Numerics => 0xb891cff0 => 51
	i32 3111772706, ; 148: System.Runtime.Serialization => 0xb979e222 => 1
	i32 3124832203, ; 149: System.Threading.Tasks.Extensions => 0xba4127cb => 39
	i32 3147431871, ; 150: OxyPlot.Xamarin.Forms.dll => 0xbb99ffbf => 67
	i32 3204380047, ; 151: System.Data.dll => 0xbefef58f => 32
	i32 3218227740, ; 152: Microsoft.ML => 0xbfd2421c => 57
	i32 3239802787, ; 153: Accord.Math.dll => 0xc11b77a3 => 44
	i32 3247949154, ; 154: Mono.Security => 0xc197c562 => 40
	i32 3257332390, ; 155: MvvmHelpers => 0xc226f2a6 => 63
	i32 3258312781, ; 156: Xamarin.AndroidX.CardView => 0xc235e84d => 14
	i32 3265893370, ; 157: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 39
	i32 3286872994, ; 158: SQLite-net.dll => 0xc3e9b3a2 => 74
	i32 3293959912, ; 159: Accord.Math.Core.dll => 0xc455d6e8 => 43
	i32 3317135071, ; 160: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 18
	i32 3317144872, ; 161: System.Data => 0xc5b79d28 => 32
	i32 3340387945, ; 162: SkiaSharp => 0xc71a4669 => 71
	i32 3353484488, ; 163: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 21
	i32 3360279109, ; 164: SQLitePCLRaw.core => 0xc849ca45 => 76
	i32 3362522851, ; 165: Xamarin.AndroidX.Core => 0xc86c06e3 => 16
	i32 3366347497, ; 166: Java.Interop => 0xc8a662e9 => 2
	i32 3374999561, ; 167: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 26
	i32 3376859421, ; 168: Microsoft.ML.TimeSeries.dll => 0xc946c91d => 61
	i32 3395150330, ; 169: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 9
	i32 3404865022, ; 170: System.ServiceModel.Internals => 0xcaf21dfe => 36
	i32 3417342253, ; 171: eHealth.dll => 0xcbb0812d => 98
	i32 3429136800, ; 172: System.Xml => 0xcc6479a0 => 10
	i32 3455791806, ; 173: Microcharts => 0xcdfb32be => 48
	i32 3476120550, ; 174: Mono.Android => 0xcf3163e6 => 3
	i32 3509114376, ; 175: System.Xml.Linq => 0xd128d608 => 11
	i32 3522696746, ; 176: Microsoft.ML.PCA => 0xd1f8162a => 59
	i32 3536029504, ; 177: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 87
	i32 3632359727, ; 178: Xamarin.Forms.Platform => 0xd881692f => 88
	i32 3641597786, ; 179: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 23
	i32 3645089577, ; 180: System.ComponentModel.DataAnnotations => 0xd943a729 => 37
	i32 3668042751, ; 181: Microcharts.dll => 0xdaa1e3ff => 48
	i32 3672681054, ; 182: Mono.Android.dll => 0xdae8aa5e => 3
	i32 3689375977, ; 183: System.Drawing.Common => 0xdbe768e9 => 33
	i32 3711244101, ; 184: Microsoft.ML.DataView.dll => 0xdd351745 => 56
	i32 3754567612, ; 185: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 78
	i32 3819541726, ; 186: Accord.Statistics.dll => 0xe3a994de => 45
	i32 3829621856, ; 187: System.Numerics.dll => 0xe4436460 => 8
	i32 3841636137, ; 188: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 52
	i32 3854864648, ; 189: OxyPlot.Xamarin.Forms.Platform.Android.dll => 0xe5c49108 => 68
	i32 3876362041, ; 190: SQLite-net => 0xe70c9739 => 74
	i32 3896760992, ; 191: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 16
	i32 3903721208, ; 192: Microcharts.Forms => 0xe8ae0ef8 => 50
	i32 3920810846, ; 193: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 35
	i32 3955647286, ; 194: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 13
	i32 4105002889, ; 195: Mono.Security.dll => 0xf4ad5f89 => 40
	i32 4151237749, ; 196: System.Core => 0xf76edc75 => 6
	i32 4200399830, ; 197: Microsoft.Bcl.Numerics.dll => 0xfa5d03d6 => 51
	i32 4260525087, ; 198: System.Buffers => 0xfdf2741f => 5
	i32 4274623895 ; 199: CommunityToolkit.Mvvm.dll => 0xfec99597 => 46
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [200 x i32] [
	i32 65, i32 90, i32 64, i32 86, i32 82, i32 92, i32 27, i32 69, ; 0..7
	i32 38, i32 54, i32 83, i32 8, i32 96, i32 22, i32 77, i32 85, ; 8..15
	i32 20, i32 4, i32 7, i32 71, i32 92, i32 97, i32 35, i32 81, ; 16..23
	i32 18, i32 11, i32 94, i32 30, i32 99, i32 93, i32 75, i32 34, ; 24..31
	i32 33, i32 63, i32 56, i32 49, i32 90, i32 58, i32 64, i32 93, ; 32..39
	i32 22, i32 47, i32 84, i32 52, i32 70, i32 13, i32 88, i32 24, ; 40..47
	i32 57, i32 31, i32 7, i32 42, i32 59, i32 46, i32 69, i32 94, ; 48..55
	i32 76, i32 19, i32 36, i32 84, i32 45, i32 15, i32 9, i32 97, ; 56..63
	i32 43, i32 60, i32 89, i32 80, i32 34, i32 12, i32 58, i32 80, ; 64..71
	i32 60, i32 50, i32 96, i32 1, i32 99, i32 25, i32 17, i32 0, ; 72..79
	i32 29, i32 91, i32 77, i32 73, i32 55, i32 14, i32 27, i32 6, ; 80..87
	i32 20, i32 25, i32 31, i32 29, i32 85, i32 89, i32 79, i32 98, ; 88..95
	i32 42, i32 91, i32 5, i32 70, i32 24, i32 23, i32 81, i32 21, ; 96..103
	i32 78, i32 87, i32 79, i32 95, i32 0, i32 62, i32 41, i32 53, ; 104..111
	i32 26, i32 62, i32 67, i32 37, i32 61, i32 75, i32 54, i32 2, ; 112..119
	i32 53, i32 38, i32 68, i32 95, i32 17, i32 55, i32 41, i32 66, ; 120..127
	i32 83, i32 82, i32 12, i32 66, i32 86, i32 30, i32 28, i32 72, ; 128..135
	i32 15, i32 10, i32 28, i32 4, i32 72, i32 73, i32 19, i32 49, ; 136..143
	i32 47, i32 65, i32 44, i32 51, i32 1, i32 39, i32 67, i32 32, ; 144..151
	i32 57, i32 44, i32 40, i32 63, i32 14, i32 39, i32 74, i32 43, ; 152..159
	i32 18, i32 32, i32 71, i32 21, i32 76, i32 16, i32 2, i32 26, ; 160..167
	i32 61, i32 9, i32 36, i32 98, i32 10, i32 48, i32 3, i32 11, ; 168..175
	i32 59, i32 87, i32 88, i32 23, i32 37, i32 48, i32 3, i32 33, ; 176..183
	i32 56, i32 78, i32 45, i32 8, i32 52, i32 68, i32 74, i32 16, ; 184..191
	i32 50, i32 35, i32 13, i32 40, i32 6, i32 51, i32 5, i32 46 ; 200..199
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
