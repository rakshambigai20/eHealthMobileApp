; ModuleID = 'obj\Debug\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.arm64-v8a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [386 x i64] [
	i64 14005105541811523, ; 0: System.Numerics.Tensors => 0x31c191bcdc8d43 => 56
	i64 24362543149721218, ; 1: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 118
	i64 83114820244871432, ; 2: Microsoft.ML.TimeSeries => 0x127487d18441908 => 29
	i64 120698629574877762, ; 3: Mono.Android => 0x1accec39cafe242 => 31
	i64 181099460066822533, ; 4: Microcharts.Droid.dll => 0x28364ffda4c4985 => 16
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 107
	i64 232391251801502327, ; 6: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 148
	i64 295915112840604065, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 149
	i64 316157742385208084, ; 8: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 112
	i64 493589431234674244, ; 9: Microsoft.Bcl.Numerics.dll => 0x6d994f8f9a13e44 => 18
	i64 522715349220615607, ; 10: Accord.Math.Core.dll => 0x7410ed734f065b7 => 6
	i64 590536689428908136, ; 11: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x83201fd803ec868 => 69
	i64 627200827541438871, ; 12: OxyPlot.Xamarin.Forms.Platform.Android => 0x8b443d460704197 => 38
	i64 634308326490598313, ; 13: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 130
	i64 702024105029695270, ; 14: System.Drawing.Common => 0x9be17343c0e7726 => 179
	i64 720058930071658100, ; 15: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 123
	i64 816102801403336439, ; 16: Xamarin.Android.Support.Collections => 0xb53612c89d8d6f7 => 73
	i64 846634227898301275, ; 17: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0xbbfd9583890bb5b => 66
	i64 870603111519317375, ; 18: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 47
	i64 872800313462103108, ; 19: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 117
	i64 887546508555532406, ; 20: Microcharts.Forms => 0xc5132d8dc173876 => 17
	i64 936521732570528272, ; 21: Microsoft.ML.DataView.dll => 0xcff318dca4cba10 => 23
	i64 940822596282819491, ; 22: System.Transactions => 0xd0e792aa81923a3 => 177
	i64 996343623809489702, ; 23: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 165
	i64 1000557547492888992, ; 24: Mono.Security.dll => 0xde2b1c9cba651a0 => 192
	i64 1120440138749646132, ; 25: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 167
	i64 1301485588176585670, ; 26: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 46
	i64 1315114680217950157, ; 27: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 102
	i64 1342439039765371018, ; 28: Xamarin.Android.Support.Fragment => 0x12a14d31b1d4d88a => 83
	i64 1416135423712704079, ; 29: Microcharts => 0x13a71faa343e364f => 15
	i64 1425944114962822056, ; 30: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 3
	i64 1490981186906623721, ; 31: Xamarin.Android.Support.VersionedParcelable => 0x14b1077d6c5c0ee9 => 95
	i64 1518315023656898250, ; 32: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 48
	i64 1624659445732251991, ; 33: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 100
	i64 1628611045998245443, ; 34: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 133
	i64 1636321030536304333, ; 35: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 124
	i64 1731380447121279447, ; 36: Newtonsoft.Json => 0x18071957e9b889d7 => 34
	i64 1743969030606105336, ; 37: System.Memory.dll => 0x1833d297e88f2af8 => 54
	i64 1744702963312407042, ; 38: Xamarin.Android.Support.v7.AppCompat => 0x18366e19eeceb202 => 91
	i64 1795316252682057001, ; 39: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 101
	i64 1836611346387731153, ; 40: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 148
	i64 1860886102525309849, ; 41: Xamarin.Android.Support.v7.RecyclerView.dll => 0x19d3320d047b7399 => 93
	i64 1875917498431009007, ; 42: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 98
	i64 1930726298510463061, ; 43: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 9
	i64 1976111867648823449, ; 44: Plugin.Messaging => 0x1b6c8f4613a45099 => 40
	i64 1981742497975770890, ; 45: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 132
	i64 2040001226662520565, ; 46: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 190
	i64 2064708342624596306, ; 47: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 172
	i64 2133195048986300728, ; 48: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 34
	i64 2136356949452311481, ; 49: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 137
	i64 2165725771938924357, ; 50: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 105
	i64 2262844636196693701, ; 51: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 117
	i64 2284400282711631002, ; 52: System.Web.Services => 0x1fb3d1f42fd4249a => 183
	i64 2287887973817120656, ; 53: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 186
	i64 2304837677853103545, ; 54: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 145
	i64 2329709569556905518, ; 55: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 127
	i64 2337758774805907496, ; 56: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 58
	i64 2470498323731680442, ; 57: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 111
	i64 2479423007379663237, ; 58: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 156
	i64 2497223385847772520, ; 59: System.Runtime => 0x22a7eb7046413568 => 59
	i64 2535279602198559162, ; 60: Accord.MachineLearning => 0x232f1f5d9f56b9ba => 5
	i64 2547086958574651984, ; 61: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 97
	i64 2592350477072141967, ; 62: System.Xml.dll => 0x23f9e10627330e8f => 61
	i64 2624866290265602282, ; 63: mscorlib.dll => 0x246d65fbde2db8ea => 32
	i64 2668049510182046531, ; 64: MvvmHelpers => 0x2506d0e4c18e4b43 => 33
	i64 2694427813909235223, ; 65: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 141
	i64 2777781391761225392, ; 66: Accord.Math.dll => 0x268ca9755f9e36b0 => 7
	i64 2783046991838674048, ; 67: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 58
	i64 2787234703088983483, ; 68: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 152
	i64 2949706848458024531, ; 69: Xamarin.Android.Support.SlidingPaneLayout => 0x28ef76c01de0a653 => 88
	i64 2951810402710157670, ; 70: Microsoft.ML => 0x28f6efec01d77966 => 24
	i64 2960931600190307745, ; 71: Xamarin.Forms.Core => 0x2917579a49927da1 => 163
	i64 2977248461349026546, ; 72: Xamarin.Android.Support.DrawerLayout => 0x29514fb392c97af2 => 82
	i64 3017704767998173186, ; 73: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 167
	i64 3040775855878708112, ; 74: eHealth.Android.dll => 0x2a330187bb3c1b90 => 0
	i64 3122911337338800527, ; 75: Microcharts.dll => 0x2b56cf50bf1e898f => 15
	i64 3289520064315143713, ; 76: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 126
	i64 3303437397778967116, ; 77: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 99
	i64 3311221304742556517, ; 78: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 57
	i64 3339480741387858005, ; 79: Xamarin.AndroidX.Work.Runtime => 0x2e58380a7cae7055 => 161
	i64 3344514922410554693, ; 80: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 175
	i64 3368876280519495760, ; 81: Microsoft.ML.Core => 0x2ec0a720c89a9050 => 20
	i64 3493805808809882663, ; 82: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 154
	i64 3522470458906976663, ; 83: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 153
	i64 3531994851595924923, ; 84: System.Numerics => 0x31042a9aade235bb => 55
	i64 3571415421602489686, ; 85: System.Runtime.dll => 0x319037675df7e556 => 59
	i64 3692385509564015696, ; 86: Microsoft.ML.DataView => 0x333dfd0ecf5ce450 => 23
	i64 3716579019761409177, ; 87: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 88: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 144
	i64 3772598417116884899, ; 89: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 118
	i64 3966267475168208030, ; 90: System.Memory => 0x370b03412596249e => 54
	i64 4201423742386704971, ; 91: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 112
	i64 4248804899347366872, ; 92: Xamarin.AndroidX.Room.Common.dll => 0x3af6c98b798a03d8 => 146
	i64 4252163538099460320, ; 93: Xamarin.Android.Support.ViewPager.dll => 0x3b02b8357f4958e0 => 96
	i64 4264996749430196783, ; 94: Xamarin.Android.Support.Transition.dll => 0x3b304ff259fb8a2f => 90
	i64 4337444564132831293, ; 95: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 45
	i64 4349341163892612332, ; 96: Xamarin.Android.Support.DocumentFile => 0x3c5bf6bea8cd9cec => 81
	i64 4416987920449902723, ; 97: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0x3d4c4b1c879b9883 => 72
	i64 4523676002271688167, ; 98: MvvmHelpers.dll => 0x3ec7535b4a5cf5e7 => 33
	i64 4525561845656915374, ; 99: System.ServiceModel.Internals => 0x3ece06856b710dae => 184
	i64 4636684751163556186, ; 100: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 158
	i64 4743821336939966868, ; 101: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 185
	i64 4759461199762736555, ; 102: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 129
	i64 4782108999019072045, ; 103: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 104
	i64 4794310189461587505, ; 104: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 97
	i64 4795410492532947900, ; 105: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 153
	i64 4841234827713643511, ; 106: Xamarin.Android.Support.CoordinaterLayout => 0x432f856d041f03f7 => 75
	i64 4848145489223852674, ; 107: Plugin.Messaging.Abstractions => 0x434812a2c899a282 => 39
	i64 4963205065368577818, ; 108: Xamarin.Android.Support.LocalBroadcastManager.dll => 0x44e0d8b5f4b6a71a => 86
	i64 5050175356009799755, ; 109: Microsoft.ML.CpuMath.dll => 0x4615d3bab465604b => 21
	i64 5142919913060024034, ; 110: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 164
	i64 5178572682164047940, ; 111: Xamarin.Android.Support.Print.dll => 0x47ddfc6acbee1044 => 87
	i64 5203618020066742981, ; 112: Xamarin.Essentials => 0x4836f704f0e652c5 => 162
	i64 5205316157927637098, ; 113: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 135
	i64 5286637047618374099, ; 114: OxyPlot => 0x495de8628fb689d3 => 35
	i64 5288341611614403055, ; 115: Xamarin.Android.Support.Interpolator.dll => 0x4963f6ad4b3179ef => 84
	i64 5348796042099802469, ; 116: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 136
	i64 5376510917114486089, ; 117: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 156
	i64 5408338804355907810, ; 118: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 155
	i64 5439315836349573567, ; 119: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0x4b7c54ef36c5e9bf => 70
	i64 5451019430259338467, ; 120: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 110
	i64 5507995362134886206, ; 121: System.Core.dll => 0x4c705499688c873e => 52
	i64 5514426807633697079, ; 122: Xamarin.AndroidX.Sqlite => 0x4c872df700e5d937 => 150
	i64 5692067934154308417, ; 123: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 160
	i64 5721888118700618020, ; 124: Accord.Statistics.dll => 0x4f683aed97adb124 => 8
	i64 5757522595884336624, ; 125: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 108
	i64 5759039185982771185, ; 126: Xamarin.AndroidX.Lifecycle.Service => 0x4fec37a0800ecff1 => 131
	i64 5767696078500135884, ; 127: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 71
	i64 5814345312393086621, ; 128: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 141
	i64 5896680224035167651, ; 129: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 128
	i64 6044705416426755068, ; 130: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0x53e31b8ccdff13fc => 89
	i64 6085203216496545422, ; 131: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 165
	i64 6086316965293125504, ; 132: FormsViewGroup.dll => 0x5476f10882baef80 => 13
	i64 6183170893902868313, ; 133: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 45
	i64 6284145129771520194, ; 134: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 189
	i64 6311200438583329442, ; 135: Xamarin.Android.Support.LocalBroadcastManager => 0x5795e35c580c82a2 => 86
	i64 6319713645133255417, ; 136: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 130
	i64 6401687960814735282, ; 137: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 127
	i64 6405879832841858445, ; 138: Xamarin.Android.Support.Vector.Drawable.dll => 0x58e641c4a660ad8d => 94
	i64 6493843673550859591, ; 139: eHealth.Android => 0x5a1ec46a4ceaad47 => 0
	i64 6504860066809920875, ; 140: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 105
	i64 6548213210057960872, ; 141: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 115
	i64 6591024623626361694, ; 142: System.Web.Services.dll => 0x5b7805f9751a1b5e => 183
	i64 6659513131007730089, ; 143: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 123
	i64 6671798237668743565, ; 144: SkiaSharp => 0x5c96fd260152998d => 41
	i64 6769285576658098206, ; 145: Accord.dll => 0x5df1555de3e1981e => 4
	i64 6876862101832370452, ; 146: System.Xml.Linq => 0x5f6f85a57d108914 => 62
	i64 6894844156784520562, ; 147: System.Numerics.Vectors => 0x5faf683aead1ad72 => 57
	i64 7036436454368433159, ; 148: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 125
	i64 7103753931438454322, ; 149: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 122
	i64 7113145827192496138, ; 150: Accord.Math.Core => 0x62b6f871595c600a => 6
	i64 7194160955514091247, ; 151: Xamarin.Android.Support.CursorAdapter.dll => 0x63d6cb45d266f6ef => 78
	i64 7363614467969488359, ; 152: Xamarin.AndroidX.Sqlite.Framework.dll => 0x6630d058323f95e7 => 151
	i64 7394319280655904474, ; 153: Microsoft.ML.KMeansClustering.dll => 0x669de6357f512eda => 25
	i64 7425864932724053426, ; 154: eHealth.Service => 0x670df8cff90c15b2 => 12
	i64 7488575175965059935, ; 155: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 62
	i64 7635363394907363464, ; 156: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 163
	i64 7637365915383206639, ; 157: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 162
	i64 7654504624184590948, ; 158: System.Net.Http => 0x6a3a4366801b8264 => 2
	i64 7661539998969416453, ; 159: Microsoft.ML.Transforms.dll => 0x6a5342095704cb05 => 30
	i64 7713917983711940402, ; 160: Microsoft.ML.Core.dll => 0x6b0d57893da5cf32 => 20
	i64 7724393568250365724, ; 161: Microsoft.ML.PCA => 0x6b328f0654e0071c => 27
	i64 7735176074855944702, ; 162: Microsoft.CSharp => 0x6b58dda848e391fe => 187
	i64 7735352534559001595, ; 163: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 171
	i64 7820441508502274321, ; 164: System.Data => 0x6c87ca1e14ff8111 => 176
	i64 7821246742157274664, ; 165: Xamarin.Android.Support.AsyncLayoutInflater => 0x6c8aa67926f72e28 => 72
	i64 7836164640616011524, ; 166: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 100
	i64 7842383726582361265, ; 167: Xamarin.AndroidX.Sqlite.dll => 0x6cd5be72d73eecb1 => 150
	i64 7879037620440914030, ; 168: Xamarin.Android.Support.v7.AppCompat.dll => 0x6d57f6f88a51d86e => 91
	i64 7927939710195668715, ; 169: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 42
	i64 7987364415647033672, ; 170: eHealth.Service.dll => 0x6ed8d19dfe3ca948 => 12
	i64 7996576649711363446, ; 171: Accord.MachineLearning.dll => 0x6ef98c18613aa576 => 5
	i64 8044118961405839122, ; 172: System.ComponentModel.Composition => 0x6fa2739369944712 => 182
	i64 8064050204834738623, ; 173: System.Collections.dll => 0x6fe942efa61731bf => 191
	i64 8083354569033831015, ; 174: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 126
	i64 8101777744205214367, ; 175: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 71
	i64 8103644804370223335, ; 176: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 178
	i64 8167236081217502503, ; 177: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 14
	i64 8185542183669246576, ; 178: System.Collections => 0x7198e33f4794aa70 => 191
	i64 8187102936927221770, ; 179: SkiaSharp.Views.Forms => 0x719e6ebe771ab80a => 43
	i64 8187640529827139739, ; 180: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 174
	i64 8196541262927413903, ; 181: Xamarin.Android.Support.Interpolator => 0x71bff6d9fb9ec28f => 84
	i64 8318905602908530212, ; 182: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 186
	i64 8377847505162989171, ; 183: OxyPlot.Xamarin.Forms => 0x744417eb0fa1ee73 => 37
	i64 8385935383968044654, ; 184: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0x7460d3cd16cb566e => 68
	i64 8398329775253868912, ; 185: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 109
	i64 8400357532724379117, ; 186: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 140
	i64 8410671156615598628, ; 187: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 188
	i64 8426919725312979251, ; 188: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 129
	i64 8518412311883997971, ; 189: System.Collections.Immutable => 0x76377add7c28e313 => 51
	i64 8598790081731763592, ; 190: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 120
	i64 8601935802264776013, ; 191: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 155
	i64 8626175481042262068, ; 192: Java.Interop => 0x77b654e585b55834 => 14
	i64 8638972117149407195, ; 193: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 187
	i64 8639588376636138208, ; 194: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 139
	i64 8684531736582871431, ; 195: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 181
	i64 8771373629875524235, ; 196: Microsoft.ML.OnnxRuntime.dll => 0x79ba2dd7f8f5928b => 26
	i64 8808820144457481518, ; 197: Xamarin.Android.Support.Loader.dll => 0x7a3f374010b17d2e => 85
	i64 8853378295825400934, ; 198: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 170
	i64 8917102979740339192, ; 199: Xamarin.Android.Support.DocumentFile.dll => 0x7bbfe9ea4d000bf8 => 81
	i64 8951477988056063522, ; 200: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 143
	i64 9083778504339266700, ; 201: OxyPlot.Xamarin.Android.dll => 0x7e10106bf9789c8c => 36
	i64 9238909584418939062, ; 202: Xamarin.AndroidX.Sqlite.Framework => 0x80373351333e20b6 => 151
	i64 9312692141327339315, ; 203: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 160
	i64 9324707631942237306, ; 204: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 101
	i64 9475595603812259686, ; 205: Xamarin.Android.Support.Design => 0x838013ff707b9766 => 80
	i64 9662334977499516867, ; 206: System.Numerics.dll => 0x8617827802b0cfc3 => 55
	i64 9678050649315576968, ; 207: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 111
	i64 9711637524876806384, ; 208: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 136
	i64 9808709177481450983, ; 209: Mono.Android.dll => 0x881f890734e555e7 => 31
	i64 9825649861376906464, ; 210: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 108
	i64 9834056768316610435, ; 211: System.Transactions.dll => 0x8879968718899783 => 177
	i64 9866412715007501892, ; 212: Xamarin.Android.Arch.Lifecycle.Common.dll => 0x88ec8a16fd6b6644 => 65
	i64 9907349773706910547, ; 213: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 120
	i64 9959489431142554298, ; 214: System.CodeDom => 0x8a3736deb7825aba => 50
	i64 9998632235833408227, ; 215: Mono.Security => 0x8ac2470b209ebae3 => 192
	i64 10038780035334861115, ; 216: System.Net.Http.dll => 0x8b50e941206af13b => 2
	i64 10041592016144926793, ; 217: Microsoft.ML.KMeansClustering => 0x8b5ae6bc6db78849 => 25
	i64 10226222362177979215, ; 218: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 172
	i64 10229024438826829339, ; 219: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 115
	i64 10245369515835430794, ; 220: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 188
	i64 10303855825347935641, ; 221: Xamarin.Android.Support.Loader => 0x8efea647eeb3fd99 => 85
	i64 10321854143672141184, ; 222: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 169
	i64 10363495123250631811, ; 223: Xamarin.Android.Support.Collections.dll => 0x8fd287e80cd8d483 => 73
	i64 10364469296367737616, ; 224: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 189
	i64 10376576884623852283, ; 225: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 154
	i64 10406448008575299332, ; 226: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 175
	i64 10421511051509811956, ; 227: Xamarin.AndroidX.Room.Runtime.dll => 0x90a0a515f80ccaf4 => 147
	i64 10430153318873392755, ; 228: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 113
	i64 10540451825959151825, ; 229: Microsoft.ML.OnnxRuntime => 0x924735170a69a8d1 => 26
	i64 10635644668885628703, ; 230: Xamarin.Android.Support.DrawerLayout.dll => 0x93996679ee34771f => 82
	i64 10679925812255520825, ; 231: Xamarin.AndroidX.Work.Runtime.dll => 0x9436b7f10b03f839 => 161
	i64 10847732767863316357, ; 232: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 102
	i64 10849603794298325860, ; 233: Xamarin.AndroidX.Room.Common => 0x9691892ad0e1cb64 => 146
	i64 10850923258212604222, ; 234: Xamarin.Android.Arch.Lifecycle.Runtime => 0x9696393672c9593e => 68
	i64 10879726196636026044, ; 235: eHealth.Data.dll => 0x96fc8d55240084bc => 10
	i64 11023048688141570732, ; 236: System.Core => 0x98f9bc61168392ac => 52
	i64 11037814507248023548, ; 237: System.Xml => 0x992e31d0412bf7fc => 61
	i64 11162124722117608902, ; 238: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 159
	i64 11340910727871153756, ; 239: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 114
	i64 11376461258732682436, ; 240: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 74
	i64 11392833485892708388, ; 241: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 142
	i64 11395105072750394936, ; 242: Xamarin.Android.Support.v7.CardView => 0x9e238bb09789fe38 => 92
	i64 11529969570048099689, ; 243: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 159
	i64 11578238080964724296, ; 244: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 125
	i64 11580057168383206117, ; 245: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 98
	i64 11591352189662810718, ; 246: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 152
	i64 11597940890313164233, ; 247: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 248: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 122
	i64 11739066727115742305, ; 249: SQLite-net.dll => 0xa2e98afdf8575c61 => 44
	i64 11806260347154423189, ; 250: SQLite-net => 0xa3d8433bc5eb5d95 => 44
	i64 11834399401546345650, ; 251: Xamarin.Android.Support.SlidingPaneLayout.dll => 0xa43c3b8deb43ecb2 => 88
	i64 11865714326292153359, ; 252: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa4ab7c5000e8440f => 67
	i64 11873143858965261388, ; 253: Microsoft.ML.Data.dll => 0xa4c5e16ee0bc2c4c => 22
	i64 12090529733743980508, ; 254: Microsoft.ML.StandardTrainers.dll => 0xa7ca30bc061bafdc => 28
	i64 12102847907131387746, ; 255: System.Buffers => 0xa7f5f40c43256f62 => 49
	i64 12137774235383566651, ; 256: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 157
	i64 12269460666702402136, ; 257: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 51
	i64 12279246230491828964, ; 258: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 48
	i64 12388767885335911387, ; 259: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0xabedbec0d236dbdb => 67
	i64 12414299427252656003, ; 260: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 74
	i64 12451044538927396471, ; 261: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 121
	i64 12466513435562512481, ; 262: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 134
	i64 12487638416075308985, ; 263: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 116
	i64 12538491095302438457, ; 264: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 106
	i64 12550732019250633519, ; 265: System.IO.Compression => 0xae2d28465e8e1b2f => 180
	i64 12559163541709922900, ; 266: Xamarin.Android.Support.v7.CardView.dll => 0xae4b1cb32ba82254 => 92
	i64 12691405489416028621, ; 267: Microsoft.ML.Data => 0xb020ee0cf915c1cd => 22
	i64 12700543734426720211, ; 268: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 107
	i64 12746965083068134964, ; 269: Accord.Statistics => 0xb0e65134ec957634 => 8
	i64 12828192437253469131, ; 270: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 173
	i64 12952608645614506925, ; 271: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 77
	i64 12963446364377008305, ; 272: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 179
	i64 13011563728930061243, ; 273: OxyPlot.dll => 0xb4925c45f33bbbbb => 35
	i64 13129914918964716986, ; 274: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 119
	i64 13236143910255865156, ; 275: Accord => 0xb7b03ac21ec02d44 => 4
	i64 13358059602087096138, ; 276: Xamarin.Android.Support.Fragment.dll => 0xb9615c6f1ee5af4a => 83
	i64 13370592475155966277, ; 277: System.Runtime.Serialization => 0xb98de304062ea945 => 3
	i64 13401370062847626945, ; 278: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 157
	i64 13403416310143541304, ; 279: Microcharts.Droid => 0xba02801ea6c86038 => 16
	i64 13404347523447273790, ; 280: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 109
	i64 13454009404024712428, ; 281: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 168
	i64 13465488254036897740, ; 282: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 171
	i64 13491513212026656886, ; 283: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 103
	i64 13492263892638604996, ; 284: SkiaSharp.Views.Forms.dll => 0xbb3e2686788d9ec4 => 43
	i64 13494734007243176328, ; 285: eHealth => 0xbb46ed14d81cf988 => 11
	i64 13572454107664307259, ; 286: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 144
	i64 13647894001087880694, ; 287: System.Data.dll => 0xbd670f48cb071df6 => 176
	i64 13828521679616088467, ; 288: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 170
	i64 13928675530372135778, ; 289: eHealth.Data => 0xc14c9898fb81bb62 => 10
	i64 13959074834287824816, ; 290: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 121
	i64 13967638549803255703, ; 291: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 164
	i64 13987974187833695008, ; 292: Xamarin.AndroidX.Lifecycle.Service.dll => 0xc21f446991291b20 => 131
	i64 14113375261243792383, ; 293: System.Numerics.Tensors.dll => 0xc3dcc8063438dbff => 56
	i64 14124974489674258913, ; 294: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 106
	i64 14172845254133543601, ; 295: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 137
	i64 14261073672896646636, ; 296: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 142
	i64 14369828458497533121, ; 297: Xamarin.Android.Support.Vector.Drawable => 0xc76be2d9300b64c1 => 94
	i64 14400856865250966808, ; 298: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 76
	i64 14419890035829146209, ; 299: Microsoft.Bcl.Numerics => 0xc81dbd9675ca8261 => 18
	i64 14486659737292545672, ; 300: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 128
	i64 14495724990987328804, ; 301: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 145
	i64 14644440854989303794, ; 302: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 135
	i64 14661790646341542033, ; 303: Xamarin.Android.Support.SwipeRefreshLayout => 0xcb7924e94e552091 => 89
	i64 14763643331770587208, ; 304: OxyPlot.Xamarin.Forms.dll => 0xcce2ff639cc01848 => 37
	i64 14792063746108907174, ; 305: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 168
	i64 14852515768018889994, ; 306: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 114
	i64 14920195631948178008, ; 307: eHealth.dll => 0xcf0f2ee06d9b2258 => 11
	i64 14954917835170835695, ; 308: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 19
	i64 14987728460634540364, ; 309: System.IO.Compression.dll => 0xcfff1ba06622494c => 180
	i64 14988210264188246988, ; 310: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 116
	i64 15150743910298169673, ; 311: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 143
	i64 15188640517174936311, ; 312: Xamarin.Android.Arch.Core.Common => 0xd2c8e413d75142f7 => 63
	i64 15246441518555807158, ; 313: Xamarin.Android.Arch.Core.Common.dll => 0xd3963dc832493db6 => 63
	i64 15255918880244313232, ; 314: Microsoft.ML.dll => 0xd3b7e9646b232c90 => 24
	i64 15267946048836226199, ; 315: Microsoft.ML.TimeSeries.dll => 0xd3e2a409d2b64c97 => 29
	i64 15273235828284483249, ; 316: Microsoft.ML.Transforms => 0xd3f56f1093aa66b1 => 30
	i64 15279429628684179188, ; 317: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 174
	i64 15288853870840668147, ; 318: Plugin.Messaging.Abstractions.dll => 0xd42ceb977a505ff3 => 39
	i64 15326820765897713587, ; 319: Xamarin.Android.Arch.Core.Runtime.dll => 0xd4b3ce481769e7b3 => 64
	i64 15370334346939861994, ; 320: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 113
	i64 15391712275433856905, ; 321: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 19
	i64 15418891414777631748, ; 322: Xamarin.Android.Support.Transition => 0xd5fae80c88241404 => 90
	i64 15568534730848034786, ; 323: Xamarin.Android.Support.VersionedParcelable.dll => 0xd80e8bda21875fe2 => 95
	i64 15582737692548360875, ; 324: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 133
	i64 15609085926864131306, ; 325: System.dll => 0xd89e9cf3334914ea => 53
	i64 15777549416145007739, ; 326: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 149
	i64 15810740023422282496, ; 327: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 166
	i64 15847085070278954535, ; 328: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 60
	i64 15963349826457351533, ; 329: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 190
	i64 16154507427712707110, ; 330: System => 0xe03056ea4e39aa26 => 53
	i64 16242842420508142678, ; 331: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe16a2b1f8908ac56 => 75
	i64 16324796876805858114, ; 332: SkiaSharp.dll => 0xe28d5444586b6342 => 41
	i64 16423015068819898779, ; 333: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 173
	i64 16540950613692298325, ; 334: Microsoft.ML.StandardTrainers => 0xe58d42f20868b455 => 28
	i64 16555546463085770706, ; 335: Accord.Math => 0xe5c11dcb0ab3b7d2 => 7
	i64 16565028646146589191, ; 336: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 182
	i64 16571160433513028530, ; 337: Microsoft.ML.CpuMath => 0xe5f8969dd38d5bb2 => 21
	i64 16621146507174665210, ; 338: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 110
	i64 16648892297579399389, ; 339: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 9
	i64 16677317093839702854, ; 340: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 140
	i64 16755018182064898362, ; 341: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 46
	i64 16767985610513713374, ; 342: Xamarin.Android.Arch.Core.Runtime => 0xe8b3da12798808de => 64
	i64 16822611501064131242, ; 343: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 178
	i64 16833383113903931215, ; 344: mscorlib => 0xe99c30c1484d7f4f => 32
	i64 16932527889823454152, ; 345: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 77
	i64 17001062948826229159, ; 346: Microcharts.Forms.dll => 0xebefe8ad2cd7a9a7 => 17
	i64 17009591894298689098, ; 347: Xamarin.Android.Support.Animated.Vector.Drawable => 0xec0e35b50a097e4a => 70
	i64 17024911836938395553, ; 348: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 99
	i64 17031351772568316411, ; 349: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 138
	i64 17037200463775726619, ; 350: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 124
	i64 17118171214553292978, ; 351: System.Threading.Channels => 0xed8ff6060fc420b2 => 60
	i64 17187273293601214786, ; 352: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 185
	i64 17211698044874985152, ; 353: OxyPlot.Xamarin.Android => 0xeedc3c2e2a0f0ec0 => 36
	i64 17383232329670771222, ; 354: Xamarin.Android.Support.CustomView.dll => 0xf13da5b41a1cc216 => 79
	i64 17428701562824544279, ; 355: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 76
	i64 17483646997724851973, ; 356: Xamarin.Android.Support.ViewPager => 0xf2a2644fe5b6ef05 => 96
	i64 17524135665394030571, ; 357: Xamarin.Android.Support.Print => 0xf3323c8a739097eb => 87
	i64 17544493274320527064, ; 358: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 104
	i64 17574451528562143913, ; 359: Microsoft.ML.PCA.dll => 0xf3e4fe8d424472a9 => 27
	i64 17666959971718154066, ; 360: Xamarin.Android.Support.CustomView => 0xf52da67d9f4e4752 => 79
	i64 17671790519499593115, ; 361: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 42
	i64 17704177640604968747, ; 362: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 134
	i64 17710060891934109755, ; 363: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 132
	i64 17743407583038752114, ; 364: System.CodeDom.dll => 0xf63d3f302bff4572 => 50
	i64 17760961058993581169, ; 365: Xamarin.Android.Arch.Lifecycle.Common => 0xf67b9bfb46dbac71 => 65
	i64 17838668724098252521, ; 366: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 49
	i64 17841643939744178149, ; 367: Xamarin.Android.Arch.Lifecycle.ViewModel => 0xf79a40a25573dfe5 => 69
	i64 17865949717230441556, ; 368: Xamarin.AndroidX.Room.Runtime => 0xf7f09a9c2682d454 => 147
	i64 17882897186074144999, ; 369: FormsViewGroup => 0xf82cd03e3ac830e7 => 13
	i64 17891337867145587222, ; 370: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 169
	i64 17892495832318972303, ; 371: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 166
	i64 17928294245072900555, ; 372: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 181
	i64 17936749993673010118, ; 373: Xamarin.Android.Support.Design.dll => 0xf8ec231615deabc6 => 80
	i64 17956840076609788800, ; 374: OxyPlot.Xamarin.Forms.Platform.Android.dll => 0xf93382e906d31b80 => 38
	i64 17958105683855786126, ; 375: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xf93801f92d25c08e => 66
	i64 18090425465832348288, ; 376: Xamarin.Android.Support.v7.RecyclerView => 0xfb0e1a1d2e9e1a80 => 93
	i64 18116111925905154859, ; 377: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 103
	i64 18121036031235206392, ; 378: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 138
	i64 18129453464017766560, ; 379: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 184
	i64 18260797123374478311, ; 380: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 119
	i64 18301997741680159453, ; 381: Xamarin.Android.Support.CursorAdapter => 0xfdfdc1fa58d8eadd => 78
	i64 18305135509493619199, ; 382: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 139
	i64 18370042311372477656, ; 383: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 47
	i64 18380184030268848184, ; 384: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 158
	i64 18405404908905297253 ; 385: Plugin.Messaging.dll => 0xff6d223fa687f565 => 40
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [386 x i32] [
	i32 56, i32 118, i32 29, i32 31, i32 16, i32 107, i32 148, i32 149, ; 0..7
	i32 112, i32 18, i32 6, i32 69, i32 38, i32 130, i32 179, i32 123, ; 8..15
	i32 73, i32 66, i32 47, i32 117, i32 17, i32 23, i32 177, i32 165, ; 16..23
	i32 192, i32 167, i32 46, i32 102, i32 83, i32 15, i32 3, i32 95, ; 24..31
	i32 48, i32 100, i32 133, i32 124, i32 34, i32 54, i32 91, i32 101, ; 32..39
	i32 148, i32 93, i32 98, i32 9, i32 40, i32 132, i32 190, i32 172, ; 40..47
	i32 34, i32 137, i32 105, i32 117, i32 183, i32 186, i32 145, i32 127, ; 48..55
	i32 58, i32 111, i32 156, i32 59, i32 5, i32 97, i32 61, i32 32, ; 56..63
	i32 33, i32 141, i32 7, i32 58, i32 152, i32 88, i32 24, i32 163, ; 64..71
	i32 82, i32 167, i32 0, i32 15, i32 126, i32 99, i32 57, i32 161, ; 72..79
	i32 175, i32 20, i32 154, i32 153, i32 55, i32 59, i32 23, i32 1, ; 80..87
	i32 144, i32 118, i32 54, i32 112, i32 146, i32 96, i32 90, i32 45, ; 88..95
	i32 81, i32 72, i32 33, i32 184, i32 158, i32 185, i32 129, i32 104, ; 96..103
	i32 97, i32 153, i32 75, i32 39, i32 86, i32 21, i32 164, i32 87, ; 104..111
	i32 162, i32 135, i32 35, i32 84, i32 136, i32 156, i32 155, i32 70, ; 112..119
	i32 110, i32 52, i32 150, i32 160, i32 8, i32 108, i32 131, i32 71, ; 120..127
	i32 141, i32 128, i32 89, i32 165, i32 13, i32 45, i32 189, i32 86, ; 128..135
	i32 130, i32 127, i32 94, i32 0, i32 105, i32 115, i32 183, i32 123, ; 136..143
	i32 41, i32 4, i32 62, i32 57, i32 125, i32 122, i32 6, i32 78, ; 144..151
	i32 151, i32 25, i32 12, i32 62, i32 163, i32 162, i32 2, i32 30, ; 152..159
	i32 20, i32 27, i32 187, i32 171, i32 176, i32 72, i32 100, i32 150, ; 160..167
	i32 91, i32 42, i32 12, i32 5, i32 182, i32 191, i32 126, i32 71, ; 168..175
	i32 178, i32 14, i32 191, i32 43, i32 174, i32 84, i32 186, i32 37, ; 176..183
	i32 68, i32 109, i32 140, i32 188, i32 129, i32 51, i32 120, i32 155, ; 184..191
	i32 14, i32 187, i32 139, i32 181, i32 26, i32 85, i32 170, i32 81, ; 192..199
	i32 143, i32 36, i32 151, i32 160, i32 101, i32 80, i32 55, i32 111, ; 200..207
	i32 136, i32 31, i32 108, i32 177, i32 65, i32 120, i32 50, i32 192, ; 208..215
	i32 2, i32 25, i32 172, i32 115, i32 188, i32 85, i32 169, i32 73, ; 216..223
	i32 189, i32 154, i32 175, i32 147, i32 113, i32 26, i32 82, i32 161, ; 224..231
	i32 102, i32 146, i32 68, i32 10, i32 52, i32 61, i32 159, i32 114, ; 232..239
	i32 74, i32 142, i32 92, i32 159, i32 125, i32 98, i32 152, i32 1, ; 240..247
	i32 122, i32 44, i32 44, i32 88, i32 67, i32 22, i32 28, i32 49, ; 248..255
	i32 157, i32 51, i32 48, i32 67, i32 74, i32 121, i32 134, i32 116, ; 256..263
	i32 106, i32 180, i32 92, i32 22, i32 107, i32 8, i32 173, i32 77, ; 264..271
	i32 179, i32 35, i32 119, i32 4, i32 83, i32 3, i32 157, i32 16, ; 272..279
	i32 109, i32 168, i32 171, i32 103, i32 43, i32 11, i32 144, i32 176, ; 280..287
	i32 170, i32 10, i32 121, i32 164, i32 131, i32 56, i32 106, i32 137, ; 288..295
	i32 142, i32 94, i32 76, i32 18, i32 128, i32 145, i32 135, i32 89, ; 296..303
	i32 37, i32 168, i32 114, i32 11, i32 19, i32 180, i32 116, i32 143, ; 304..311
	i32 63, i32 63, i32 24, i32 29, i32 30, i32 174, i32 39, i32 64, ; 312..319
	i32 113, i32 19, i32 90, i32 95, i32 133, i32 53, i32 149, i32 166, ; 320..327
	i32 60, i32 190, i32 53, i32 75, i32 41, i32 173, i32 28, i32 7, ; 328..335
	i32 182, i32 21, i32 110, i32 9, i32 140, i32 46, i32 64, i32 178, ; 336..343
	i32 32, i32 77, i32 17, i32 70, i32 99, i32 138, i32 124, i32 60, ; 344..351
	i32 185, i32 36, i32 79, i32 76, i32 96, i32 87, i32 104, i32 27, ; 352..359
	i32 79, i32 42, i32 134, i32 132, i32 50, i32 65, i32 49, i32 69, ; 360..367
	i32 147, i32 13, i32 169, i32 166, i32 181, i32 80, i32 38, i32 66, ; 368..375
	i32 93, i32 103, i32 138, i32 184, i32 119, i32 78, i32 139, i32 47, ; 376..383
	i32 158, i32 40 ; 384..385
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
