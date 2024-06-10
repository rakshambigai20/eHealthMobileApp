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
@assembly_image_cache_hashes = local_unnamed_addr constant [142 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 3
	i64 232391251801502327, ; 1: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 51
	i64 627200827541438871, ; 2: OxyPlot.Xamarin.Forms.Platform.Android => 0x8b443d460704197 => 70
	i64 702024105029695270, ; 3: System.Drawing.Common => 0x9be17343c0e7726 => 34
	i64 720058930071658100, ; 4: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 22
	i64 870603111519317375, ; 5: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 48
	i64 872800313462103108, ; 6: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 20
	i64 996343623809489702, ; 7: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 55
	i64 1000557547492888992, ; 8: Mono.Security.dll => 0xde2b1c9cba651a0 => 37
	i64 1120440138749646132, ; 9: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 30
	i64 1301485588176585670, ; 10: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 47
	i64 1425944114962822056, ; 11: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 1
	i64 1518315023656898250, ; 12: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 49
	i64 1624659445732251991, ; 13: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 13
	i64 1731380447121279447, ; 14: Newtonsoft.Json => 0x18071957e9b889d7 => 42
	i64 1795316252682057001, ; 15: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 14
	i64 1836611346387731153, ; 16: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 51
	i64 1930726298510463061, ; 17: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 38
	i64 1976111867648823449, ; 18: Plugin.Messaging => 0x1b6c8f4613a45099 => 44
	i64 1981742497975770890, ; 19: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 25
	i64 2064708342624596306, ; 20: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 59
	i64 2133195048986300728, ; 21: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 42
	i64 2262844636196693701, ; 22: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 20
	i64 2287887973817120656, ; 23: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 36
	i64 2329709569556905518, ; 24: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 24
	i64 2337758774805907496, ; 25: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 9
	i64 2470498323731680442, ; 26: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 16
	i64 2547086958574651984, ; 27: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 50
	i64 2592350477072141967, ; 28: System.Xml.dll => 0x23f9e10627330e8f => 10
	i64 2624866290265602282, ; 29: mscorlib.dll => 0x246d65fbde2db8ea => 4
	i64 2668049510182046531, ; 30: MvvmHelpers => 0x2506d0e4c18e4b43 => 41
	i64 2783046991838674048, ; 31: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 9
	i64 2960931600190307745, ; 32: Xamarin.Forms.Core => 0x2917579a49927da1 => 53
	i64 3017704767998173186, ; 33: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 30
	i64 3040775855878708112, ; 34: eHealth.Android.dll => 0x2a330187bb3c1b90 => 63
	i64 3289520064315143713, ; 35: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 23
	i64 3344514922410554693, ; 36: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 62
	i64 3522470458906976663, ; 37: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 28
	i64 3531994851595924923, ; 38: System.Numerics => 0x31042a9aade235bb => 8
	i64 3727469159507183293, ; 39: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 27
	i64 4337444564132831293, ; 40: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 46
	i64 4523676002271688167, ; 41: MvvmHelpers.dll => 0x3ec7535b4a5cf5e7 => 41
	i64 4525561845656915374, ; 42: System.ServiceModel.Internals => 0x3ece06856b710dae => 35
	i64 4794310189461587505, ; 43: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 50
	i64 4795410492532947900, ; 44: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 28
	i64 4848145489223852674, ; 45: Plugin.Messaging.Abstractions => 0x434812a2c899a282 => 43
	i64 5142919913060024034, ; 46: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 54
	i64 5203618020066742981, ; 47: Xamarin.Essentials => 0x4836f704f0e652c5 => 52
	i64 5286637047618374099, ; 48: OxyPlot => 0x495de8628fb689d3 => 67
	i64 5507995362134886206, ; 49: System.Core.dll => 0x4c705499688c873e => 6
	i64 6085203216496545422, ; 50: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 55
	i64 6086316965293125504, ; 51: FormsViewGroup.dll => 0x5476f10882baef80 => 39
	i64 6183170893902868313, ; 52: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 46
	i64 6401687960814735282, ; 53: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 24
	i64 6493843673550859591, ; 54: eHealth.Android => 0x5a1ec46a4ceaad47 => 63
	i64 6548213210057960872, ; 55: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 19
	i64 6659513131007730089, ; 56: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 22
	i64 6876862101832370452, ; 57: System.Xml.Linq => 0x5f6f85a57d108914 => 11
	i64 7425864932724053426, ; 58: eHealth.Service => 0x670df8cff90c15b2 => 66
	i64 7488575175965059935, ; 59: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 11
	i64 7635363394907363464, ; 60: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 53
	i64 7637365915383206639, ; 61: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 52
	i64 7654504624184590948, ; 62: System.Net.Http => 0x6a3a4366801b8264 => 0
	i64 7735352534559001595, ; 63: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 32
	i64 7820441508502274321, ; 64: System.Data => 0x6c87ca1e14ff8111 => 33
	i64 7836164640616011524, ; 65: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 13
	i64 7987364415647033672, ; 66: eHealth.Service.dll => 0x6ed8d19dfe3ca948 => 66
	i64 8083354569033831015, ; 67: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 23
	i64 8167236081217502503, ; 68: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 2
	i64 8187640529827139739, ; 69: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 61
	i64 8318905602908530212, ; 70: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 36
	i64 8377847505162989171, ; 71: OxyPlot.Xamarin.Forms => 0x744417eb0fa1ee73 => 69
	i64 8626175481042262068, ; 72: Java.Interop => 0x77b654e585b55834 => 2
	i64 8853378295825400934, ; 73: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 58
	i64 9083778504339266700, ; 74: OxyPlot.Xamarin.Android.dll => 0x7e10106bf9789c8c => 68
	i64 9324707631942237306, ; 75: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 14
	i64 9662334977499516867, ; 76: System.Numerics.dll => 0x8617827802b0cfc3 => 8
	i64 9678050649315576968, ; 77: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 16
	i64 9808709177481450983, ; 78: Mono.Android.dll => 0x881f890734e555e7 => 3
	i64 9998632235833408227, ; 79: Mono.Security => 0x8ac2470b209ebae3 => 37
	i64 10038780035334861115, ; 80: System.Net.Http.dll => 0x8b50e941206af13b => 0
	i64 10226222362177979215, ; 81: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 59
	i64 10229024438826829339, ; 82: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 19
	i64 10321854143672141184, ; 83: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 31
	i64 10406448008575299332, ; 84: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 62
	i64 10430153318873392755, ; 85: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 17
	i64 10879726196636026044, ; 86: eHealth.Data.dll => 0x96fc8d55240084bc => 64
	i64 11023048688141570732, ; 87: System.Core => 0x98f9bc61168392ac => 6
	i64 11037814507248023548, ; 88: System.Xml => 0x992e31d0412bf7fc => 10
	i64 11162124722117608902, ; 89: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 29
	i64 11340910727871153756, ; 90: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 18
	i64 11529969570048099689, ; 91: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 29
	i64 11739066727115742305, ; 92: SQLite-net.dll => 0xa2e98afdf8575c61 => 45
	i64 11806260347154423189, ; 93: SQLite-net => 0xa3d8433bc5eb5d95 => 45
	i64 12102847907131387746, ; 94: System.Buffers => 0xa7f5f40c43256f62 => 5
	i64 12279246230491828964, ; 95: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 49
	i64 12451044538927396471, ; 96: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 21
	i64 12466513435562512481, ; 97: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 26
	i64 12538491095302438457, ; 98: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 15
	i64 12828192437253469131, ; 99: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 60
	i64 12963446364377008305, ; 100: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 34
	i64 13011563728930061243, ; 101: OxyPlot.dll => 0xb4925c45f33bbbbb => 67
	i64 13370592475155966277, ; 102: System.Runtime.Serialization => 0xb98de304062ea945 => 1
	i64 13454009404024712428, ; 103: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 57
	i64 13465488254036897740, ; 104: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 32
	i64 13494734007243176328, ; 105: eHealth => 0xbb46ed14d81cf988 => 65
	i64 13572454107664307259, ; 106: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 27
	i64 13647894001087880694, ; 107: System.Data.dll => 0xbd670f48cb071df6 => 33
	i64 13828521679616088467, ; 108: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 58
	i64 13928675530372135778, ; 109: eHealth.Data => 0xc14c9898fb81bb62 => 64
	i64 13959074834287824816, ; 110: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 21
	i64 13967638549803255703, ; 111: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 54
	i64 14124974489674258913, ; 112: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 15
	i64 14763643331770587208, ; 113: OxyPlot.Xamarin.Forms.dll => 0xcce2ff639cc01848 => 69
	i64 14792063746108907174, ; 114: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 57
	i64 14852515768018889994, ; 115: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 18
	i64 14920195631948178008, ; 116: eHealth.dll => 0xcf0f2ee06d9b2258 => 65
	i64 14954917835170835695, ; 117: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 40
	i64 15188640517174936311, ; 118: Xamarin.Android.Arch.Core.Common => 0xd2c8e413d75142f7 => 12
	i64 15246441518555807158, ; 119: Xamarin.Android.Arch.Core.Common.dll => 0xd3963dc832493db6 => 12
	i64 15279429628684179188, ; 120: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 61
	i64 15288853870840668147, ; 121: Plugin.Messaging.Abstractions.dll => 0xd42ceb977a505ff3 => 43
	i64 15370334346939861994, ; 122: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 17
	i64 15391712275433856905, ; 123: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 40
	i64 15609085926864131306, ; 124: System.dll => 0xd89e9cf3334914ea => 7
	i64 15810740023422282496, ; 125: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 56
	i64 16154507427712707110, ; 126: System => 0xe03056ea4e39aa26 => 7
	i64 16423015068819898779, ; 127: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 60
	i64 16648892297579399389, ; 128: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 38
	i64 16755018182064898362, ; 129: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 47
	i64 16833383113903931215, ; 130: mscorlib => 0xe99c30c1484d7f4f => 4
	i64 17211698044874985152, ; 131: OxyPlot.Xamarin.Android => 0xeedc3c2e2a0f0ec0 => 68
	i64 17704177640604968747, ; 132: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 26
	i64 17710060891934109755, ; 133: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 25
	i64 17838668724098252521, ; 134: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 5
	i64 17882897186074144999, ; 135: FormsViewGroup => 0xf82cd03e3ac830e7 => 39
	i64 17891337867145587222, ; 136: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 31
	i64 17892495832318972303, ; 137: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 56
	i64 17956840076609788800, ; 138: OxyPlot.Xamarin.Forms.Platform.Android.dll => 0xf93382e906d31b80 => 70
	i64 18129453464017766560, ; 139: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 35
	i64 18370042311372477656, ; 140: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 48
	i64 18405404908905297253 ; 141: Plugin.Messaging.dll => 0xff6d223fa687f565 => 44
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [142 x i32] [
	i32 3, i32 51, i32 70, i32 34, i32 22, i32 48, i32 20, i32 55, ; 0..7
	i32 37, i32 30, i32 47, i32 1, i32 49, i32 13, i32 42, i32 14, ; 8..15
	i32 51, i32 38, i32 44, i32 25, i32 59, i32 42, i32 20, i32 36, ; 16..23
	i32 24, i32 9, i32 16, i32 50, i32 10, i32 4, i32 41, i32 9, ; 24..31
	i32 53, i32 30, i32 63, i32 23, i32 62, i32 28, i32 8, i32 27, ; 32..39
	i32 46, i32 41, i32 35, i32 50, i32 28, i32 43, i32 54, i32 52, ; 40..47
	i32 67, i32 6, i32 55, i32 39, i32 46, i32 24, i32 63, i32 19, ; 48..55
	i32 22, i32 11, i32 66, i32 11, i32 53, i32 52, i32 0, i32 32, ; 56..63
	i32 33, i32 13, i32 66, i32 23, i32 2, i32 61, i32 36, i32 69, ; 64..71
	i32 2, i32 58, i32 68, i32 14, i32 8, i32 16, i32 3, i32 37, ; 72..79
	i32 0, i32 59, i32 19, i32 31, i32 62, i32 17, i32 64, i32 6, ; 80..87
	i32 10, i32 29, i32 18, i32 29, i32 45, i32 45, i32 5, i32 49, ; 88..95
	i32 21, i32 26, i32 15, i32 60, i32 34, i32 67, i32 1, i32 57, ; 96..103
	i32 32, i32 65, i32 27, i32 33, i32 58, i32 64, i32 21, i32 54, ; 104..111
	i32 15, i32 69, i32 57, i32 18, i32 65, i32 40, i32 12, i32 12, ; 112..119
	i32 61, i32 43, i32 17, i32 40, i32 7, i32 56, i32 7, i32 60, ; 120..127
	i32 38, i32 47, i32 4, i32 68, i32 26, i32 25, i32 5, i32 39, ; 128..135
	i32 31, i32 56, i32 70, i32 35, i32 48, i32 44 ; 136..141
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
