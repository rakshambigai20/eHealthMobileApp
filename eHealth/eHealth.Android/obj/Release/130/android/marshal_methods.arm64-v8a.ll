; ModuleID = 'obj\Release\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Release\130\android\marshal_methods.arm64-v8a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [200 x i64] [
	i64 14005105541811523, ; 0: System.Numerics.Tensors => 0x31c191bcdc8d43 => 81
	i64 83114820244871432, ; 1: Microsoft.ML.TimeSeries => 0x127487d18441908 => 61
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 3
	i64 181099460066822533, ; 3: Microcharts.Droid.dll => 0x28364ffda4c4985 => 49
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 84
	i64 493589431234674244, ; 5: Microsoft.Bcl.Numerics.dll => 0x6d994f8f9a13e44 => 51
	i64 522715349220615607, ; 6: Accord.Math.Core.dll => 0x7410ed734f065b7 => 43
	i64 627200827541438871, ; 7: OxyPlot.Xamarin.Forms.Platform.Android => 0x8b443d460704197 => 68
	i64 702024105029695270, ; 8: System.Drawing.Common => 0x9be17343c0e7726 => 33
	i64 720058930071658100, ; 9: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 21
	i64 870603111519317375, ; 10: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 77
	i64 872800313462103108, ; 11: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 19
	i64 887546508555532406, ; 12: Microcharts.Forms => 0xc5132d8dc173876 => 50
	i64 936521732570528272, ; 13: Microsoft.ML.DataView.dll => 0xcff318dca4cba10 => 56
	i64 996343623809489702, ; 14: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 88
	i64 1000557547492888992, ; 15: Mono.Security.dll => 0xde2b1c9cba651a0 => 40
	i64 1120440138749646132, ; 16: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 29
	i64 1301485588176585670, ; 17: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 76
	i64 1416135423712704079, ; 18: Microcharts => 0x13a71faa343e364f => 48
	i64 1425944114962822056, ; 19: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 1
	i64 1518315023656898250, ; 20: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 78
	i64 1624659445732251991, ; 21: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 12
	i64 1731380447121279447, ; 22: Newtonsoft.Json => 0x18071957e9b889d7 => 64
	i64 1795316252682057001, ; 23: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 13
	i64 1836611346387731153, ; 24: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 84
	i64 1930726298510463061, ; 25: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 46
	i64 1976111867648823449, ; 26: Plugin.Messaging => 0x1b6c8f4613a45099 => 70
	i64 1981742497975770890, ; 27: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 24
	i64 2040001226662520565, ; 28: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 39
	i64 2064708342624596306, ; 29: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 92
	i64 2133195048986300728, ; 30: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 64
	i64 2262844636196693701, ; 31: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 19
	i64 2287887973817120656, ; 32: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 37
	i64 2329709569556905518, ; 33: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 23
	i64 2337758774805907496, ; 34: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 9
	i64 2470498323731680442, ; 35: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 15
	i64 2535279602198559162, ; 36: Accord.MachineLearning => 0x232f1f5d9f56b9ba => 42
	i64 2547086958574651984, ; 37: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 83
	i64 2592350477072141967, ; 38: System.Xml.dll => 0x23f9e10627330e8f => 10
	i64 2624866290265602282, ; 39: mscorlib.dll => 0x246d65fbde2db8ea => 4
	i64 2668049510182046531, ; 40: MvvmHelpers => 0x2506d0e4c18e4b43 => 63
	i64 2777781391761225392, ; 41: Accord.Math.dll => 0x268ca9755f9e36b0 => 44
	i64 2783046991838674048, ; 42: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 9
	i64 2951810402710157670, ; 43: Microsoft.ML => 0x28f6efec01d77966 => 57
	i64 2960931600190307745, ; 44: Xamarin.Forms.Core => 0x2917579a49927da1 => 86
	i64 3017704767998173186, ; 45: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 29
	i64 3040775855878708112, ; 46: eHealth.Android.dll => 0x2a330187bb3c1b90 => 96
	i64 3122911337338800527, ; 47: Microcharts.dll => 0x2b56cf50bf1e898f => 48
	i64 3289520064315143713, ; 48: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 22
	i64 3344514922410554693, ; 49: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 95
	i64 3368876280519495760, ; 50: Microsoft.ML.Core => 0x2ec0a720c89a9050 => 53
	i64 3522470458906976663, ; 51: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 27
	i64 3531994851595924923, ; 52: System.Numerics => 0x31042a9aade235bb => 8
	i64 3692385509564015696, ; 53: Microsoft.ML.DataView => 0x333dfd0ecf5ce450 => 56
	i64 3727469159507183293, ; 54: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 26
	i64 4337444564132831293, ; 55: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 75
	i64 4523676002271688167, ; 56: MvvmHelpers.dll => 0x3ec7535b4a5cf5e7 => 63
	i64 4525561845656915374, ; 57: System.ServiceModel.Internals => 0x3ece06856b710dae => 36
	i64 4794310189461587505, ; 58: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 83
	i64 4795410492532947900, ; 59: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 27
	i64 4848145489223852674, ; 60: Plugin.Messaging.Abstractions => 0x434812a2c899a282 => 69
	i64 5050175356009799755, ; 61: Microsoft.ML.CpuMath.dll => 0x4615d3bab465604b => 54
	i64 5142919913060024034, ; 62: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 87
	i64 5203618020066742981, ; 63: Xamarin.Essentials => 0x4836f704f0e652c5 => 85
	i64 5286637047618374099, ; 64: OxyPlot => 0x495de8628fb689d3 => 65
	i64 5507995362134886206, ; 65: System.Core.dll => 0x4c705499688c873e => 6
	i64 5721888118700618020, ; 66: Accord.Statistics.dll => 0x4f683aed97adb124 => 45
	i64 6085203216496545422, ; 67: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 88
	i64 6086316965293125504, ; 68: FormsViewGroup.dll => 0x5476f10882baef80 => 47
	i64 6183170893902868313, ; 69: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 75
	i64 6401687960814735282, ; 70: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 23
	i64 6493843673550859591, ; 71: eHealth.Android => 0x5a1ec46a4ceaad47 => 96
	i64 6548213210057960872, ; 72: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 18
	i64 6659513131007730089, ; 73: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 21
	i64 6671798237668743565, ; 74: SkiaSharp => 0x5c96fd260152998d => 71
	i64 6769285576658098206, ; 75: Accord.dll => 0x5df1555de3e1981e => 41
	i64 6876862101832370452, ; 76: System.Xml.Linq => 0x5f6f85a57d108914 => 11
	i64 7113145827192496138, ; 77: Accord.Math.Core => 0x62b6f871595c600a => 43
	i64 7394319280655904474, ; 78: Microsoft.ML.KMeansClustering.dll => 0x669de6357f512eda => 58
	i64 7425864932724053426, ; 79: eHealth.Service => 0x670df8cff90c15b2 => 99
	i64 7488575175965059935, ; 80: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 11
	i64 7635363394907363464, ; 81: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 86
	i64 7637365915383206639, ; 82: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 85
	i64 7654504624184590948, ; 83: System.Net.Http => 0x6a3a4366801b8264 => 0
	i64 7661539998969416453, ; 84: Microsoft.ML.Transforms.dll => 0x6a5342095704cb05 => 62
	i64 7713917983711940402, ; 85: Microsoft.ML.Core.dll => 0x6b0d57893da5cf32 => 53
	i64 7724393568250365724, ; 86: Microsoft.ML.PCA => 0x6b328f0654e0071c => 59
	i64 7735176074855944702, ; 87: Microsoft.CSharp => 0x6b58dda848e391fe => 38
	i64 7735352534559001595, ; 88: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 31
	i64 7820441508502274321, ; 89: System.Data => 0x6c87ca1e14ff8111 => 32
	i64 7836164640616011524, ; 90: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 12
	i64 7927939710195668715, ; 91: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 72
	i64 7987364415647033672, ; 92: eHealth.Service.dll => 0x6ed8d19dfe3ca948 => 99
	i64 7996576649711363446, ; 93: Accord.MachineLearning.dll => 0x6ef98c18613aa576 => 42
	i64 8083354569033831015, ; 94: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 22
	i64 8167236081217502503, ; 95: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 2
	i64 8187102936927221770, ; 96: SkiaSharp.Views.Forms => 0x719e6ebe771ab80a => 73
	i64 8187640529827139739, ; 97: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 94
	i64 8318905602908530212, ; 98: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 37
	i64 8377847505162989171, ; 99: OxyPlot.Xamarin.Forms => 0x744417eb0fa1ee73 => 67
	i64 8518412311883997971, ; 100: System.Collections.Immutable => 0x76377add7c28e313 => 80
	i64 8626175481042262068, ; 101: Java.Interop => 0x77b654e585b55834 => 2
	i64 8638972117149407195, ; 102: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 38
	i64 8684531736582871431, ; 103: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 35
	i64 8853378295825400934, ; 104: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 91
	i64 9083778504339266700, ; 105: OxyPlot.Xamarin.Android.dll => 0x7e10106bf9789c8c => 66
	i64 9324707631942237306, ; 106: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 13
	i64 9662334977499516867, ; 107: System.Numerics.dll => 0x8617827802b0cfc3 => 8
	i64 9678050649315576968, ; 108: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 15
	i64 9808709177481450983, ; 109: Mono.Android.dll => 0x881f890734e555e7 => 3
	i64 9959489431142554298, ; 110: System.CodeDom => 0x8a3736deb7825aba => 79
	i64 9998632235833408227, ; 111: Mono.Security => 0x8ac2470b209ebae3 => 40
	i64 10038780035334861115, ; 112: System.Net.Http.dll => 0x8b50e941206af13b => 0
	i64 10041592016144926793, ; 113: Microsoft.ML.KMeansClustering => 0x8b5ae6bc6db78849 => 58
	i64 10226222362177979215, ; 114: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 92
	i64 10229024438826829339, ; 115: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 18
	i64 10321854143672141184, ; 116: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 30
	i64 10406448008575299332, ; 117: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 95
	i64 10430153318873392755, ; 118: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 16
	i64 10879726196636026044, ; 119: eHealth.Data.dll => 0x96fc8d55240084bc => 97
	i64 11023048688141570732, ; 120: System.Core => 0x98f9bc61168392ac => 6
	i64 11037814507248023548, ; 121: System.Xml => 0x992e31d0412bf7fc => 10
	i64 11162124722117608902, ; 122: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 28
	i64 11340910727871153756, ; 123: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 17
	i64 11529969570048099689, ; 124: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 28
	i64 11739066727115742305, ; 125: SQLite-net.dll => 0xa2e98afdf8575c61 => 74
	i64 11806260347154423189, ; 126: SQLite-net => 0xa3d8433bc5eb5d95 => 74
	i64 11873143858965261388, ; 127: Microsoft.ML.Data.dll => 0xa4c5e16ee0bc2c4c => 55
	i64 12090529733743980508, ; 128: Microsoft.ML.StandardTrainers.dll => 0xa7ca30bc061bafdc => 60
	i64 12102847907131387746, ; 129: System.Buffers => 0xa7f5f40c43256f62 => 5
	i64 12269460666702402136, ; 130: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 80
	i64 12279246230491828964, ; 131: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 78
	i64 12451044538927396471, ; 132: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 20
	i64 12466513435562512481, ; 133: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 25
	i64 12538491095302438457, ; 134: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 14
	i64 12550732019250633519, ; 135: System.IO.Compression => 0xae2d28465e8e1b2f => 34
	i64 12691405489416028621, ; 136: Microsoft.ML.Data => 0xb020ee0cf915c1cd => 55
	i64 12746965083068134964, ; 137: Accord.Statistics => 0xb0e65134ec957634 => 45
	i64 12828192437253469131, ; 138: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 93
	i64 12963446364377008305, ; 139: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 33
	i64 13011563728930061243, ; 140: OxyPlot.dll => 0xb4925c45f33bbbbb => 65
	i64 13236143910255865156, ; 141: Accord => 0xb7b03ac21ec02d44 => 41
	i64 13370592475155966277, ; 142: System.Runtime.Serialization => 0xb98de304062ea945 => 1
	i64 13403416310143541304, ; 143: Microcharts.Droid => 0xba02801ea6c86038 => 49
	i64 13454009404024712428, ; 144: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 90
	i64 13465488254036897740, ; 145: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 31
	i64 13492263892638604996, ; 146: SkiaSharp.Views.Forms.dll => 0xbb3e2686788d9ec4 => 73
	i64 13494734007243176328, ; 147: eHealth => 0xbb46ed14d81cf988 => 98
	i64 13572454107664307259, ; 148: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 26
	i64 13647894001087880694, ; 149: System.Data.dll => 0xbd670f48cb071df6 => 32
	i64 13828521679616088467, ; 150: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 91
	i64 13928675530372135778, ; 151: eHealth.Data => 0xc14c9898fb81bb62 => 97
	i64 13959074834287824816, ; 152: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 20
	i64 13967638549803255703, ; 153: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 87
	i64 14113375261243792383, ; 154: System.Numerics.Tensors.dll => 0xc3dcc8063438dbff => 81
	i64 14124974489674258913, ; 155: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 14
	i64 14419890035829146209, ; 156: Microsoft.Bcl.Numerics => 0xc81dbd9675ca8261 => 51
	i64 14763643331770587208, ; 157: OxyPlot.Xamarin.Forms.dll => 0xcce2ff639cc01848 => 67
	i64 14792063746108907174, ; 158: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 90
	i64 14852515768018889994, ; 159: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 17
	i64 14920195631948178008, ; 160: eHealth.dll => 0xcf0f2ee06d9b2258 => 98
	i64 14954917835170835695, ; 161: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 52
	i64 14987728460634540364, ; 162: System.IO.Compression.dll => 0xcfff1ba06622494c => 34
	i64 15255918880244313232, ; 163: Microsoft.ML.dll => 0xd3b7e9646b232c90 => 57
	i64 15267946048836226199, ; 164: Microsoft.ML.TimeSeries.dll => 0xd3e2a409d2b64c97 => 61
	i64 15273235828284483249, ; 165: Microsoft.ML.Transforms => 0xd3f56f1093aa66b1 => 62
	i64 15279429628684179188, ; 166: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 94
	i64 15288853870840668147, ; 167: Plugin.Messaging.Abstractions.dll => 0xd42ceb977a505ff3 => 69
	i64 15370334346939861994, ; 168: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 16
	i64 15391712275433856905, ; 169: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 52
	i64 15609085926864131306, ; 170: System.dll => 0xd89e9cf3334914ea => 7
	i64 15810740023422282496, ; 171: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 89
	i64 15847085070278954535, ; 172: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 82
	i64 15963349826457351533, ; 173: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 39
	i64 16154507427712707110, ; 174: System => 0xe03056ea4e39aa26 => 7
	i64 16324796876805858114, ; 175: SkiaSharp.dll => 0xe28d5444586b6342 => 71
	i64 16423015068819898779, ; 176: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 93
	i64 16540950613692298325, ; 177: Microsoft.ML.StandardTrainers => 0xe58d42f20868b455 => 60
	i64 16555546463085770706, ; 178: Accord.Math => 0xe5c11dcb0ab3b7d2 => 44
	i64 16571160433513028530, ; 179: Microsoft.ML.CpuMath => 0xe5f8969dd38d5bb2 => 54
	i64 16648892297579399389, ; 180: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 46
	i64 16755018182064898362, ; 181: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 76
	i64 16833383113903931215, ; 182: mscorlib => 0xe99c30c1484d7f4f => 4
	i64 17001062948826229159, ; 183: Microcharts.Forms.dll => 0xebefe8ad2cd7a9a7 => 50
	i64 17118171214553292978, ; 184: System.Threading.Channels => 0xed8ff6060fc420b2 => 82
	i64 17211698044874985152, ; 185: OxyPlot.Xamarin.Android => 0xeedc3c2e2a0f0ec0 => 66
	i64 17574451528562143913, ; 186: Microsoft.ML.PCA.dll => 0xf3e4fe8d424472a9 => 59
	i64 17671790519499593115, ; 187: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 72
	i64 17704177640604968747, ; 188: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 25
	i64 17710060891934109755, ; 189: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 24
	i64 17743407583038752114, ; 190: System.CodeDom.dll => 0xf63d3f302bff4572 => 79
	i64 17838668724098252521, ; 191: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 5
	i64 17882897186074144999, ; 192: FormsViewGroup => 0xf82cd03e3ac830e7 => 47
	i64 17891337867145587222, ; 193: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 30
	i64 17892495832318972303, ; 194: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 89
	i64 17928294245072900555, ; 195: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 35
	i64 17956840076609788800, ; 196: OxyPlot.Xamarin.Forms.Platform.Android.dll => 0xf93382e906d31b80 => 68
	i64 18129453464017766560, ; 197: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 36
	i64 18370042311372477656, ; 198: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 77
	i64 18405404908905297253 ; 199: Plugin.Messaging.dll => 0xff6d223fa687f565 => 70
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [200 x i32] [
	i32 81, i32 61, i32 3, i32 49, i32 84, i32 51, i32 43, i32 68, ; 0..7
	i32 33, i32 21, i32 77, i32 19, i32 50, i32 56, i32 88, i32 40, ; 8..15
	i32 29, i32 76, i32 48, i32 1, i32 78, i32 12, i32 64, i32 13, ; 16..23
	i32 84, i32 46, i32 70, i32 24, i32 39, i32 92, i32 64, i32 19, ; 24..31
	i32 37, i32 23, i32 9, i32 15, i32 42, i32 83, i32 10, i32 4, ; 32..39
	i32 63, i32 44, i32 9, i32 57, i32 86, i32 29, i32 96, i32 48, ; 40..47
	i32 22, i32 95, i32 53, i32 27, i32 8, i32 56, i32 26, i32 75, ; 48..55
	i32 63, i32 36, i32 83, i32 27, i32 69, i32 54, i32 87, i32 85, ; 56..63
	i32 65, i32 6, i32 45, i32 88, i32 47, i32 75, i32 23, i32 96, ; 64..71
	i32 18, i32 21, i32 71, i32 41, i32 11, i32 43, i32 58, i32 99, ; 72..79
	i32 11, i32 86, i32 85, i32 0, i32 62, i32 53, i32 59, i32 38, ; 80..87
	i32 31, i32 32, i32 12, i32 72, i32 99, i32 42, i32 22, i32 2, ; 88..95
	i32 73, i32 94, i32 37, i32 67, i32 80, i32 2, i32 38, i32 35, ; 96..103
	i32 91, i32 66, i32 13, i32 8, i32 15, i32 3, i32 79, i32 40, ; 104..111
	i32 0, i32 58, i32 92, i32 18, i32 30, i32 95, i32 16, i32 97, ; 112..119
	i32 6, i32 10, i32 28, i32 17, i32 28, i32 74, i32 74, i32 55, ; 120..127
	i32 60, i32 5, i32 80, i32 78, i32 20, i32 25, i32 14, i32 34, ; 128..135
	i32 55, i32 45, i32 93, i32 33, i32 65, i32 41, i32 1, i32 49, ; 136..143
	i32 90, i32 31, i32 73, i32 98, i32 26, i32 32, i32 91, i32 97, ; 144..151
	i32 20, i32 87, i32 81, i32 14, i32 51, i32 67, i32 90, i32 17, ; 152..159
	i32 98, i32 52, i32 34, i32 57, i32 61, i32 62, i32 94, i32 69, ; 160..167
	i32 16, i32 52, i32 7, i32 89, i32 82, i32 39, i32 7, i32 71, ; 168..175
	i32 93, i32 60, i32 44, i32 54, i32 46, i32 76, i32 4, i32 50, ; 176..183
	i32 82, i32 66, i32 59, i32 72, i32 25, i32 24, i32 79, i32 5, ; 184..191
	i32 47, i32 30, i32 89, i32 35, i32 68, i32 36, i32 77, i32 70 ; 200..199
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
