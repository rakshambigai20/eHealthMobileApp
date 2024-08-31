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
@assembly_image_cache_hashes = local_unnamed_addr constant [342 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 98
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 14
	i64 181099460066822533, ; 2: Microcharts.Droid.dll => 0x28364ffda4c4985 => 11
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 87
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 128
	i64 295915112840604065, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 129
	i64 316157742385208084, ; 6: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 92
	i64 590536689428908136, ; 7: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x83201fd803ec868 => 49
	i64 627200827541438871, ; 8: OxyPlot.Xamarin.Forms.Platform.Android => 0x8b443d460704197 => 21
	i64 634308326490598313, ; 9: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 110
	i64 702024105029695270, ; 10: System.Drawing.Common => 0x9be17343c0e7726 => 159
	i64 720058930071658100, ; 11: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 103
	i64 816102801403336439, ; 12: Xamarin.Android.Support.Collections => 0xb53612c89d8d6f7 => 53
	i64 846634227898301275, ; 13: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0xbbfd9583890bb5b => 46
	i64 870603111519317375, ; 14: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 30
	i64 872800313462103108, ; 15: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 97
	i64 887546508555532406, ; 16: Microcharts.Forms => 0xc5132d8dc173876 => 12
	i64 940822596282819491, ; 17: System.Transactions => 0xd0e792aa81923a3 => 157
	i64 996343623809489702, ; 18: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 145
	i64 1000557547492888992, ; 19: Mono.Security.dll => 0xde2b1c9cba651a0 => 168
	i64 1120440138749646132, ; 20: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 147
	i64 1301485588176585670, ; 21: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 29
	i64 1315114680217950157, ; 22: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 82
	i64 1342439039765371018, ; 23: Xamarin.Android.Support.Fragment => 0x12a14d31b1d4d88a => 63
	i64 1416135423712704079, ; 24: Microcharts => 0x13a71faa343e364f => 10
	i64 1425944114962822056, ; 25: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 3
	i64 1490981186906623721, ; 26: Xamarin.Android.Support.VersionedParcelable => 0x14b1077d6c5c0ee9 => 75
	i64 1518315023656898250, ; 27: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 31
	i64 1624659445732251991, ; 28: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 80
	i64 1628611045998245443, ; 29: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 113
	i64 1636321030536304333, ; 30: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 104
	i64 1731380447121279447, ; 31: Newtonsoft.Json => 0x18071957e9b889d7 => 17
	i64 1743969030606105336, ; 32: System.Memory.dll => 0x1833d297e88f2af8 => 35
	i64 1744702963312407042, ; 33: Xamarin.Android.Support.v7.AppCompat => 0x18366e19eeceb202 => 71
	i64 1795316252682057001, ; 34: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 81
	i64 1836611346387731153, ; 35: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 128
	i64 1860886102525309849, ; 36: Xamarin.Android.Support.v7.RecyclerView.dll => 0x19d3320d047b7399 => 73
	i64 1875917498431009007, ; 37: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 78
	i64 1930726298510463061, ; 38: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 4
	i64 1976111867648823449, ; 39: Plugin.Messaging => 0x1b6c8f4613a45099 => 23
	i64 1981742497975770890, ; 40: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 112
	i64 2064708342624596306, ; 41: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 152
	i64 2133195048986300728, ; 42: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 17
	i64 2136356949452311481, ; 43: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 117
	i64 2165725771938924357, ; 44: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 85
	i64 2262844636196693701, ; 45: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 97
	i64 2284400282711631002, ; 46: System.Web.Services => 0x1fb3d1f42fd4249a => 163
	i64 2287887973817120656, ; 47: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 166
	i64 2304837677853103545, ; 48: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 125
	i64 2329709569556905518, ; 49: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 107
	i64 2337758774805907496, ; 50: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 38
	i64 2470498323731680442, ; 51: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 91
	i64 2479423007379663237, ; 52: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 136
	i64 2497223385847772520, ; 53: System.Runtime => 0x22a7eb7046413568 => 39
	i64 2547086958574651984, ; 54: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 77
	i64 2592350477072141967, ; 55: System.Xml.dll => 0x23f9e10627330e8f => 41
	i64 2624866290265602282, ; 56: mscorlib.dll => 0x246d65fbde2db8ea => 15
	i64 2668049510182046531, ; 57: MvvmHelpers => 0x2506d0e4c18e4b43 => 16
	i64 2694427813909235223, ; 58: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 121
	i64 2783046991838674048, ; 59: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 38
	i64 2787234703088983483, ; 60: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 132
	i64 2949706848458024531, ; 61: Xamarin.Android.Support.SlidingPaneLayout => 0x28ef76c01de0a653 => 68
	i64 2960931600190307745, ; 62: Xamarin.Forms.Core => 0x2917579a49927da1 => 143
	i64 2977248461349026546, ; 63: Xamarin.Android.Support.DrawerLayout => 0x29514fb392c97af2 => 62
	i64 3017704767998173186, ; 64: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 147
	i64 3040775855878708112, ; 65: eHealth.Android.dll => 0x2a330187bb3c1b90 => 0
	i64 3122911337338800527, ; 66: Microcharts.dll => 0x2b56cf50bf1e898f => 10
	i64 3289520064315143713, ; 67: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 106
	i64 3303437397778967116, ; 68: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 79
	i64 3311221304742556517, ; 69: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 37
	i64 3339480741387858005, ; 70: Xamarin.AndroidX.Work.Runtime => 0x2e58380a7cae7055 => 141
	i64 3344514922410554693, ; 71: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 155
	i64 3493805808809882663, ; 72: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 134
	i64 3522470458906976663, ; 73: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 133
	i64 3531994851595924923, ; 74: System.Numerics => 0x31042a9aade235bb => 36
	i64 3571415421602489686, ; 75: System.Runtime.dll => 0x319037675df7e556 => 39
	i64 3716579019761409177, ; 76: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 77: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 124
	i64 3772598417116884899, ; 78: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 98
	i64 3966267475168208030, ; 79: System.Memory => 0x370b03412596249e => 35
	i64 4201423742386704971, ; 80: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 92
	i64 4248804899347366872, ; 81: Xamarin.AndroidX.Room.Common.dll => 0x3af6c98b798a03d8 => 126
	i64 4252163538099460320, ; 82: Xamarin.Android.Support.ViewPager.dll => 0x3b02b8357f4958e0 => 76
	i64 4264996749430196783, ; 83: Xamarin.Android.Support.Transition.dll => 0x3b304ff259fb8a2f => 70
	i64 4337444564132831293, ; 84: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 28
	i64 4349341163892612332, ; 85: Xamarin.Android.Support.DocumentFile => 0x3c5bf6bea8cd9cec => 61
	i64 4416987920449902723, ; 86: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0x3d4c4b1c879b9883 => 52
	i64 4523676002271688167, ; 87: MvvmHelpers.dll => 0x3ec7535b4a5cf5e7 => 16
	i64 4525561845656915374, ; 88: System.ServiceModel.Internals => 0x3ece06856b710dae => 164
	i64 4636684751163556186, ; 89: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 138
	i64 4743821336939966868, ; 90: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 165
	i64 4759461199762736555, ; 91: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 109
	i64 4782108999019072045, ; 92: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 84
	i64 4794310189461587505, ; 93: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 77
	i64 4795410492532947900, ; 94: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 133
	i64 4841234827713643511, ; 95: Xamarin.Android.Support.CoordinaterLayout => 0x432f856d041f03f7 => 55
	i64 4848145489223852674, ; 96: Plugin.Messaging.Abstractions => 0x434812a2c899a282 => 22
	i64 4853321196694829351, ; 97: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 40
	i64 4963205065368577818, ; 98: Xamarin.Android.Support.LocalBroadcastManager.dll => 0x44e0d8b5f4b6a71a => 66
	i64 5142919913060024034, ; 99: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 144
	i64 5178572682164047940, ; 100: Xamarin.Android.Support.Print.dll => 0x47ddfc6acbee1044 => 67
	i64 5203618020066742981, ; 101: Xamarin.Essentials => 0x4836f704f0e652c5 => 142
	i64 5205316157927637098, ; 102: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 115
	i64 5286637047618374099, ; 103: OxyPlot => 0x495de8628fb689d3 => 18
	i64 5288341611614403055, ; 104: Xamarin.Android.Support.Interpolator.dll => 0x4963f6ad4b3179ef => 64
	i64 5290786973231294105, ; 105: System.Runtime.Loader => 0x496ca6b869b72699 => 40
	i64 5348796042099802469, ; 106: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 116
	i64 5376510917114486089, ; 107: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 136
	i64 5408338804355907810, ; 108: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 135
	i64 5439315836349573567, ; 109: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0x4b7c54ef36c5e9bf => 50
	i64 5451019430259338467, ; 110: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 90
	i64 5507995362134886206, ; 111: System.Core.dll => 0x4c705499688c873e => 33
	i64 5514426807633697079, ; 112: Xamarin.AndroidX.Sqlite => 0x4c872df700e5d937 => 130
	i64 5692067934154308417, ; 113: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 140
	i64 5757522595884336624, ; 114: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 88
	i64 5759039185982771185, ; 115: Xamarin.AndroidX.Lifecycle.Service => 0x4fec37a0800ecff1 => 111
	i64 5767696078500135884, ; 116: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 51
	i64 5814345312393086621, ; 117: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 121
	i64 5896680224035167651, ; 118: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 108
	i64 6044705416426755068, ; 119: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0x53e31b8ccdff13fc => 69
	i64 6085203216496545422, ; 120: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 145
	i64 6086316965293125504, ; 121: FormsViewGroup.dll => 0x5476f10882baef80 => 8
	i64 6183170893902868313, ; 122: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 28
	i64 6311200438583329442, ; 123: Xamarin.Android.Support.LocalBroadcastManager => 0x5795e35c580c82a2 => 66
	i64 6319713645133255417, ; 124: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 110
	i64 6401687960814735282, ; 125: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 107
	i64 6405879832841858445, ; 126: Xamarin.Android.Support.Vector.Drawable.dll => 0x58e641c4a660ad8d => 74
	i64 6493843673550859591, ; 127: eHealth.Android => 0x5a1ec46a4ceaad47 => 0
	i64 6504860066809920875, ; 128: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 85
	i64 6548213210057960872, ; 129: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 95
	i64 6591024623626361694, ; 130: System.Web.Services.dll => 0x5b7805f9751a1b5e => 163
	i64 6659513131007730089, ; 131: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 103
	i64 6671798237668743565, ; 132: SkiaSharp => 0x5c96fd260152998d => 24
	i64 6876862101832370452, ; 133: System.Xml.Linq => 0x5f6f85a57d108914 => 42
	i64 6894844156784520562, ; 134: System.Numerics.Vectors => 0x5faf683aead1ad72 => 37
	i64 7036436454368433159, ; 135: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 105
	i64 7103753931438454322, ; 136: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 102
	i64 7194160955514091247, ; 137: Xamarin.Android.Support.CursorAdapter.dll => 0x63d6cb45d266f6ef => 58
	i64 7338192458477945005, ; 138: System.Reflection => 0x65d67f295d0740ad => 169
	i64 7363614467969488359, ; 139: Xamarin.AndroidX.Sqlite.Framework.dll => 0x6630d058323f95e7 => 131
	i64 7425864932724053426, ; 140: eHealth.Service => 0x670df8cff90c15b2 => 7
	i64 7488575175965059935, ; 141: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 42
	i64 7635363394907363464, ; 142: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 143
	i64 7637365915383206639, ; 143: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 142
	i64 7654504624184590948, ; 144: System.Net.Http => 0x6a3a4366801b8264 => 2
	i64 7735352534559001595, ; 145: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 151
	i64 7820441508502274321, ; 146: System.Data => 0x6c87ca1e14ff8111 => 156
	i64 7821246742157274664, ; 147: Xamarin.Android.Support.AsyncLayoutInflater => 0x6c8aa67926f72e28 => 52
	i64 7836164640616011524, ; 148: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 80
	i64 7842383726582361265, ; 149: Xamarin.AndroidX.Sqlite.dll => 0x6cd5be72d73eecb1 => 130
	i64 7879037620440914030, ; 150: Xamarin.Android.Support.v7.AppCompat.dll => 0x6d57f6f88a51d86e => 71
	i64 7927939710195668715, ; 151: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 25
	i64 7987364415647033672, ; 152: eHealth.Service.dll => 0x6ed8d19dfe3ca948 => 7
	i64 8044118961405839122, ; 153: System.ComponentModel.Composition => 0x6fa2739369944712 => 162
	i64 8064050204834738623, ; 154: System.Collections.dll => 0x6fe942efa61731bf => 167
	i64 8083354569033831015, ; 155: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 106
	i64 8101777744205214367, ; 156: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 51
	i64 8103644804370223335, ; 157: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 158
	i64 8167236081217502503, ; 158: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 9
	i64 8185542183669246576, ; 159: System.Collections => 0x7198e33f4794aa70 => 167
	i64 8187102936927221770, ; 160: SkiaSharp.Views.Forms => 0x719e6ebe771ab80a => 26
	i64 8187640529827139739, ; 161: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 154
	i64 8196541262927413903, ; 162: Xamarin.Android.Support.Interpolator => 0x71bff6d9fb9ec28f => 64
	i64 8318905602908530212, ; 163: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 166
	i64 8377847505162989171, ; 164: OxyPlot.Xamarin.Forms => 0x744417eb0fa1ee73 => 20
	i64 8385935383968044654, ; 165: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0x7460d3cd16cb566e => 48
	i64 8398329775253868912, ; 166: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 89
	i64 8400357532724379117, ; 167: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 120
	i64 8426919725312979251, ; 168: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 109
	i64 8598790081731763592, ; 169: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 100
	i64 8601935802264776013, ; 170: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 135
	i64 8626175481042262068, ; 171: Java.Interop => 0x77b654e585b55834 => 9
	i64 8639588376636138208, ; 172: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 119
	i64 8684531736582871431, ; 173: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 161
	i64 8808820144457481518, ; 174: Xamarin.Android.Support.Loader.dll => 0x7a3f374010b17d2e => 65
	i64 8853378295825400934, ; 175: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 150
	i64 8917102979740339192, ; 176: Xamarin.Android.Support.DocumentFile.dll => 0x7bbfe9ea4d000bf8 => 61
	i64 8951477988056063522, ; 177: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 123
	i64 9083778504339266700, ; 178: OxyPlot.Xamarin.Android.dll => 0x7e10106bf9789c8c => 19
	i64 9238909584418939062, ; 179: Xamarin.AndroidX.Sqlite.Framework => 0x80373351333e20b6 => 131
	i64 9312692141327339315, ; 180: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 140
	i64 9324707631942237306, ; 181: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 81
	i64 9475595603812259686, ; 182: Xamarin.Android.Support.Design => 0x838013ff707b9766 => 60
	i64 9584643793929893533, ; 183: System.IO.dll => 0x85037ebfbbd7f69d => 170
	i64 9662334977499516867, ; 184: System.Numerics.dll => 0x8617827802b0cfc3 => 36
	i64 9678050649315576968, ; 185: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 91
	i64 9711637524876806384, ; 186: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 116
	i64 9808709177481450983, ; 187: Mono.Android.dll => 0x881f890734e555e7 => 14
	i64 9825649861376906464, ; 188: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 88
	i64 9834056768316610435, ; 189: System.Transactions.dll => 0x8879968718899783 => 157
	i64 9866412715007501892, ; 190: Xamarin.Android.Arch.Lifecycle.Common.dll => 0x88ec8a16fd6b6644 => 45
	i64 9907349773706910547, ; 191: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 100
	i64 9998632235833408227, ; 192: Mono.Security => 0x8ac2470b209ebae3 => 168
	i64 10038780035334861115, ; 193: System.Net.Http.dll => 0x8b50e941206af13b => 2
	i64 10226222362177979215, ; 194: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 152
	i64 10229024438826829339, ; 195: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 95
	i64 10303855825347935641, ; 196: Xamarin.Android.Support.Loader => 0x8efea647eeb3fd99 => 65
	i64 10321854143672141184, ; 197: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 149
	i64 10363495123250631811, ; 198: Xamarin.Android.Support.Collections.dll => 0x8fd287e80cd8d483 => 53
	i64 10376576884623852283, ; 199: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 134
	i64 10406448008575299332, ; 200: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 155
	i64 10421511051509811956, ; 201: Xamarin.AndroidX.Room.Runtime.dll => 0x90a0a515f80ccaf4 => 127
	i64 10430153318873392755, ; 202: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 93
	i64 10635644668885628703, ; 203: Xamarin.Android.Support.DrawerLayout.dll => 0x93996679ee34771f => 62
	i64 10679925812255520825, ; 204: Xamarin.AndroidX.Work.Runtime.dll => 0x9436b7f10b03f839 => 141
	i64 10847732767863316357, ; 205: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 82
	i64 10849603794298325860, ; 206: Xamarin.AndroidX.Room.Common => 0x9691892ad0e1cb64 => 126
	i64 10850923258212604222, ; 207: Xamarin.Android.Arch.Lifecycle.Runtime => 0x9696393672c9593e => 48
	i64 10879726196636026044, ; 208: eHealth.Data.dll => 0x96fc8d55240084bc => 5
	i64 11023048688141570732, ; 209: System.Core => 0x98f9bc61168392ac => 33
	i64 11037814507248023548, ; 210: System.Xml => 0x992e31d0412bf7fc => 41
	i64 11162124722117608902, ; 211: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 139
	i64 11340910727871153756, ; 212: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 94
	i64 11376461258732682436, ; 213: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 54
	i64 11392833485892708388, ; 214: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 122
	i64 11395105072750394936, ; 215: Xamarin.Android.Support.v7.CardView => 0x9e238bb09789fe38 => 72
	i64 11529969570048099689, ; 216: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 139
	i64 11578238080964724296, ; 217: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 105
	i64 11580057168383206117, ; 218: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 78
	i64 11591352189662810718, ; 219: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 132
	i64 11597940890313164233, ; 220: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 221: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 102
	i64 11739066727115742305, ; 222: SQLite-net.dll => 0xa2e98afdf8575c61 => 27
	i64 11806260347154423189, ; 223: SQLite-net => 0xa3d8433bc5eb5d95 => 27
	i64 11834399401546345650, ; 224: Xamarin.Android.Support.SlidingPaneLayout.dll => 0xa43c3b8deb43ecb2 => 68
	i64 11865714326292153359, ; 225: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa4ab7c5000e8440f => 47
	i64 12102847907131387746, ; 226: System.Buffers => 0xa7f5f40c43256f62 => 32
	i64 12137774235383566651, ; 227: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 137
	i64 12279246230491828964, ; 228: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 31
	i64 12388767885335911387, ; 229: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0xabedbec0d236dbdb => 47
	i64 12414299427252656003, ; 230: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 54
	i64 12451044538927396471, ; 231: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 101
	i64 12466513435562512481, ; 232: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 114
	i64 12487638416075308985, ; 233: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 96
	i64 12538491095302438457, ; 234: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 86
	i64 12550732019250633519, ; 235: System.IO.Compression => 0xae2d28465e8e1b2f => 160
	i64 12559163541709922900, ; 236: Xamarin.Android.Support.v7.CardView.dll => 0xae4b1cb32ba82254 => 72
	i64 12700543734426720211, ; 237: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 87
	i64 12708238894395270091, ; 238: System.IO => 0xb05cbbf17d3ba3cb => 170
	i64 12828192437253469131, ; 239: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 153
	i64 12952608645614506925, ; 240: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 57
	i64 12963446364377008305, ; 241: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 159
	i64 13011563728930061243, ; 242: OxyPlot.dll => 0xb4925c45f33bbbbb => 18
	i64 13129914918964716986, ; 243: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 99
	i64 13358059602087096138, ; 244: Xamarin.Android.Support.Fragment.dll => 0xb9615c6f1ee5af4a => 63
	i64 13370592475155966277, ; 245: System.Runtime.Serialization => 0xb98de304062ea945 => 3
	i64 13401370062847626945, ; 246: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 137
	i64 13403416310143541304, ; 247: Microcharts.Droid => 0xba02801ea6c86038 => 11
	i64 13404347523447273790, ; 248: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 89
	i64 13454009404024712428, ; 249: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 148
	i64 13465488254036897740, ; 250: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 151
	i64 13491513212026656886, ; 251: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 83
	i64 13492263892638604996, ; 252: SkiaSharp.Views.Forms.dll => 0xbb3e2686788d9ec4 => 26
	i64 13494734007243176328, ; 253: eHealth => 0xbb46ed14d81cf988 => 6
	i64 13572454107664307259, ; 254: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 124
	i64 13647894001087880694, ; 255: System.Data.dll => 0xbd670f48cb071df6 => 156
	i64 13828521679616088467, ; 256: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 150
	i64 13928675530372135778, ; 257: eHealth.Data => 0xc14c9898fb81bb62 => 5
	i64 13959074834287824816, ; 258: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 101
	i64 13967638549803255703, ; 259: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 144
	i64 13987974187833695008, ; 260: Xamarin.AndroidX.Lifecycle.Service.dll => 0xc21f446991291b20 => 111
	i64 14124974489674258913, ; 261: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 86
	i64 14172845254133543601, ; 262: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 117
	i64 14261073672896646636, ; 263: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 122
	i64 14327695147300244862, ; 264: System.Reflection.dll => 0xc6d632d338eb4d7e => 169
	i64 14369828458497533121, ; 265: Xamarin.Android.Support.Vector.Drawable => 0xc76be2d9300b64c1 => 74
	i64 14400856865250966808, ; 266: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 56
	i64 14486659737292545672, ; 267: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 108
	i64 14495724990987328804, ; 268: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 125
	i64 14644440854989303794, ; 269: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 115
	i64 14661790646341542033, ; 270: Xamarin.Android.Support.SwipeRefreshLayout => 0xcb7924e94e552091 => 69
	i64 14763643331770587208, ; 271: OxyPlot.Xamarin.Forms.dll => 0xcce2ff639cc01848 => 20
	i64 14792063746108907174, ; 272: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 148
	i64 14852515768018889994, ; 273: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 94
	i64 14920195631948178008, ; 274: eHealth.dll => 0xcf0f2ee06d9b2258 => 6
	i64 14954917835170835695, ; 275: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 13
	i64 14987728460634540364, ; 276: System.IO.Compression.dll => 0xcfff1ba06622494c => 160
	i64 14988210264188246988, ; 277: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 96
	i64 15150743910298169673, ; 278: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 123
	i64 15188640517174936311, ; 279: Xamarin.Android.Arch.Core.Common => 0xd2c8e413d75142f7 => 43
	i64 15246441518555807158, ; 280: Xamarin.Android.Arch.Core.Common.dll => 0xd3963dc832493db6 => 43
	i64 15279429628684179188, ; 281: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 154
	i64 15288853870840668147, ; 282: Plugin.Messaging.Abstractions.dll => 0xd42ceb977a505ff3 => 22
	i64 15326820765897713587, ; 283: Xamarin.Android.Arch.Core.Runtime.dll => 0xd4b3ce481769e7b3 => 44
	i64 15370334346939861994, ; 284: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 93
	i64 15391712275433856905, ; 285: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 13
	i64 15418891414777631748, ; 286: Xamarin.Android.Support.Transition => 0xd5fae80c88241404 => 70
	i64 15568534730848034786, ; 287: Xamarin.Android.Support.VersionedParcelable.dll => 0xd80e8bda21875fe2 => 75
	i64 15582737692548360875, ; 288: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 113
	i64 15609085926864131306, ; 289: System.dll => 0xd89e9cf3334914ea => 34
	i64 15777549416145007739, ; 290: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 129
	i64 15810740023422282496, ; 291: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 146
	i64 16154507427712707110, ; 292: System => 0xe03056ea4e39aa26 => 34
	i64 16242842420508142678, ; 293: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe16a2b1f8908ac56 => 55
	i64 16324796876805858114, ; 294: SkiaSharp.dll => 0xe28d5444586b6342 => 24
	i64 16423015068819898779, ; 295: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 153
	i64 16565028646146589191, ; 296: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 162
	i64 16621146507174665210, ; 297: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 90
	i64 16648892297579399389, ; 298: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 4
	i64 16677317093839702854, ; 299: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 120
	i64 16755018182064898362, ; 300: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 29
	i64 16767985610513713374, ; 301: Xamarin.Android.Arch.Core.Runtime => 0xe8b3da12798808de => 44
	i64 16822611501064131242, ; 302: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 158
	i64 16833383113903931215, ; 303: mscorlib => 0xe99c30c1484d7f4f => 15
	i64 16932527889823454152, ; 304: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 57
	i64 17001062948826229159, ; 305: Microcharts.Forms.dll => 0xebefe8ad2cd7a9a7 => 12
	i64 17009591894298689098, ; 306: Xamarin.Android.Support.Animated.Vector.Drawable => 0xec0e35b50a097e4a => 50
	i64 17024911836938395553, ; 307: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 79
	i64 17031351772568316411, ; 308: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 118
	i64 17037200463775726619, ; 309: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 104
	i64 17187273293601214786, ; 310: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 165
	i64 17211698044874985152, ; 311: OxyPlot.Xamarin.Android => 0xeedc3c2e2a0f0ec0 => 19
	i64 17383232329670771222, ; 312: Xamarin.Android.Support.CustomView.dll => 0xf13da5b41a1cc216 => 59
	i64 17428701562824544279, ; 313: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 56
	i64 17483646997724851973, ; 314: Xamarin.Android.Support.ViewPager => 0xf2a2644fe5b6ef05 => 76
	i64 17524135665394030571, ; 315: Xamarin.Android.Support.Print => 0xf3323c8a739097eb => 67
	i64 17544493274320527064, ; 316: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 84
	i64 17666959971718154066, ; 317: Xamarin.Android.Support.CustomView => 0xf52da67d9f4e4752 => 59
	i64 17671790519499593115, ; 318: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 25
	i64 17704177640604968747, ; 319: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 114
	i64 17710060891934109755, ; 320: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 112
	i64 17760961058993581169, ; 321: Xamarin.Android.Arch.Lifecycle.Common => 0xf67b9bfb46dbac71 => 45
	i64 17838668724098252521, ; 322: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 32
	i64 17841643939744178149, ; 323: Xamarin.Android.Arch.Lifecycle.ViewModel => 0xf79a40a25573dfe5 => 49
	i64 17865949717230441556, ; 324: Xamarin.AndroidX.Room.Runtime => 0xf7f09a9c2682d454 => 127
	i64 17882897186074144999, ; 325: FormsViewGroup => 0xf82cd03e3ac830e7 => 8
	i64 17891337867145587222, ; 326: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 149
	i64 17892495832318972303, ; 327: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 146
	i64 17928294245072900555, ; 328: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 161
	i64 17936749993673010118, ; 329: Xamarin.Android.Support.Design.dll => 0xf8ec231615deabc6 => 60
	i64 17956840076609788800, ; 330: OxyPlot.Xamarin.Forms.Platform.Android.dll => 0xf93382e906d31b80 => 21
	i64 17958105683855786126, ; 331: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xf93801f92d25c08e => 46
	i64 18090425465832348288, ; 332: Xamarin.Android.Support.v7.RecyclerView => 0xfb0e1a1d2e9e1a80 => 73
	i64 18116111925905154859, ; 333: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 83
	i64 18121036031235206392, ; 334: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 118
	i64 18129453464017766560, ; 335: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 164
	i64 18260797123374478311, ; 336: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 99
	i64 18301997741680159453, ; 337: Xamarin.Android.Support.CursorAdapter => 0xfdfdc1fa58d8eadd => 58
	i64 18305135509493619199, ; 338: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 119
	i64 18370042311372477656, ; 339: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 30
	i64 18380184030268848184, ; 340: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 138
	i64 18405404908905297253 ; 341: Plugin.Messaging.dll => 0xff6d223fa687f565 => 23
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [342 x i32] [
	i32 98, i32 14, i32 11, i32 87, i32 128, i32 129, i32 92, i32 49, ; 0..7
	i32 21, i32 110, i32 159, i32 103, i32 53, i32 46, i32 30, i32 97, ; 8..15
	i32 12, i32 157, i32 145, i32 168, i32 147, i32 29, i32 82, i32 63, ; 16..23
	i32 10, i32 3, i32 75, i32 31, i32 80, i32 113, i32 104, i32 17, ; 24..31
	i32 35, i32 71, i32 81, i32 128, i32 73, i32 78, i32 4, i32 23, ; 32..39
	i32 112, i32 152, i32 17, i32 117, i32 85, i32 97, i32 163, i32 166, ; 40..47
	i32 125, i32 107, i32 38, i32 91, i32 136, i32 39, i32 77, i32 41, ; 48..55
	i32 15, i32 16, i32 121, i32 38, i32 132, i32 68, i32 143, i32 62, ; 56..63
	i32 147, i32 0, i32 10, i32 106, i32 79, i32 37, i32 141, i32 155, ; 64..71
	i32 134, i32 133, i32 36, i32 39, i32 1, i32 124, i32 98, i32 35, ; 72..79
	i32 92, i32 126, i32 76, i32 70, i32 28, i32 61, i32 52, i32 16, ; 80..87
	i32 164, i32 138, i32 165, i32 109, i32 84, i32 77, i32 133, i32 55, ; 88..95
	i32 22, i32 40, i32 66, i32 144, i32 67, i32 142, i32 115, i32 18, ; 96..103
	i32 64, i32 40, i32 116, i32 136, i32 135, i32 50, i32 90, i32 33, ; 104..111
	i32 130, i32 140, i32 88, i32 111, i32 51, i32 121, i32 108, i32 69, ; 112..119
	i32 145, i32 8, i32 28, i32 66, i32 110, i32 107, i32 74, i32 0, ; 120..127
	i32 85, i32 95, i32 163, i32 103, i32 24, i32 42, i32 37, i32 105, ; 128..135
	i32 102, i32 58, i32 169, i32 131, i32 7, i32 42, i32 143, i32 142, ; 136..143
	i32 2, i32 151, i32 156, i32 52, i32 80, i32 130, i32 71, i32 25, ; 144..151
	i32 7, i32 162, i32 167, i32 106, i32 51, i32 158, i32 9, i32 167, ; 152..159
	i32 26, i32 154, i32 64, i32 166, i32 20, i32 48, i32 89, i32 120, ; 160..167
	i32 109, i32 100, i32 135, i32 9, i32 119, i32 161, i32 65, i32 150, ; 168..175
	i32 61, i32 123, i32 19, i32 131, i32 140, i32 81, i32 60, i32 170, ; 176..183
	i32 36, i32 91, i32 116, i32 14, i32 88, i32 157, i32 45, i32 100, ; 184..191
	i32 168, i32 2, i32 152, i32 95, i32 65, i32 149, i32 53, i32 134, ; 192..199
	i32 155, i32 127, i32 93, i32 62, i32 141, i32 82, i32 126, i32 48, ; 200..207
	i32 5, i32 33, i32 41, i32 139, i32 94, i32 54, i32 122, i32 72, ; 208..215
	i32 139, i32 105, i32 78, i32 132, i32 1, i32 102, i32 27, i32 27, ; 216..223
	i32 68, i32 47, i32 32, i32 137, i32 31, i32 47, i32 54, i32 101, ; 224..231
	i32 114, i32 96, i32 86, i32 160, i32 72, i32 87, i32 170, i32 153, ; 232..239
	i32 57, i32 159, i32 18, i32 99, i32 63, i32 3, i32 137, i32 11, ; 240..247
	i32 89, i32 148, i32 151, i32 83, i32 26, i32 6, i32 124, i32 156, ; 248..255
	i32 150, i32 5, i32 101, i32 144, i32 111, i32 86, i32 117, i32 122, ; 256..263
	i32 169, i32 74, i32 56, i32 108, i32 125, i32 115, i32 69, i32 20, ; 264..271
	i32 148, i32 94, i32 6, i32 13, i32 160, i32 96, i32 123, i32 43, ; 272..279
	i32 43, i32 154, i32 22, i32 44, i32 93, i32 13, i32 70, i32 75, ; 280..287
	i32 113, i32 34, i32 129, i32 146, i32 34, i32 55, i32 24, i32 153, ; 288..295
	i32 162, i32 90, i32 4, i32 120, i32 29, i32 44, i32 158, i32 15, ; 296..303
	i32 57, i32 12, i32 50, i32 79, i32 118, i32 104, i32 165, i32 19, ; 304..311
	i32 59, i32 56, i32 76, i32 67, i32 84, i32 59, i32 25, i32 114, ; 312..319
	i32 112, i32 45, i32 32, i32 49, i32 127, i32 8, i32 149, i32 146, ; 320..327
	i32 161, i32 60, i32 21, i32 46, i32 73, i32 83, i32 118, i32 164, ; 328..335
	i32 99, i32 58, i32 119, i32 30, i32 138, i32 23 ; 336..341
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
