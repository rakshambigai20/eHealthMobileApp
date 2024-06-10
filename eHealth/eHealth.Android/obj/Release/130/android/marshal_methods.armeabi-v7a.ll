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
@assembly_image_cache_hashes = local_unnamed_addr constant [142 x i32] [
	i32 11257817, ; 0: OxyPlot.dll => 0xabc7d9 => 67
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 57
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 42
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 53
	i32 134690465, ; 4: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 59
	i32 160529393, ; 5: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 12
	i32 182336117, ; 6: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 28
	i32 194720069, ; 7: Plugin.Messaging.Abstractions => 0xb9b3145 => 43
	i32 318968648, ; 8: Xamarin.AndroidX.Activity.dll => 0x13031348 => 50
	i32 321597661, ; 9: System.Numerics => 0x132b30dd => 8
	i32 326667749, ; 10: eHealth.Android => 0x13788de5 => 63
	i32 342366114, ; 11: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 23
	i32 347068432, ; 12: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 48
	i32 442521989, ; 13: Xamarin.Essentials => 0x1a605985 => 52
	i32 450948140, ; 14: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 21
	i32 465846621, ; 15: mscorlib => 0x1bc4415d => 4
	i32 469710990, ; 16: System.dll => 0x1bff388e => 7
	i32 527452488, ; 17: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 59
	i32 551862371, ; 18: eHealth.Data => 0x20e4c063 => 64
	i32 627609679, ; 19: Xamarin.AndroidX.CustomView => 0x2568904f => 19
	i32 690569205, ; 20: System.Xml.Linq.dll => 0x29293ff5 => 11
	i32 691348768, ; 21: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 61
	i32 700284507, ; 22: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 31
	i32 705820857, ; 23: eHealth.Service => 0x2a11f8b9 => 66
	i32 720511267, ; 24: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 60
	i32 748832960, ; 25: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 46
	i32 809851609, ; 26: System.Drawing.Common.dll => 0x30455ad9 => 34
	i32 835661280, ; 27: MvvmHelpers.dll => 0x31cf2de0 => 41
	i32 928116545, ; 28: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 57
	i32 955402788, ; 29: Newtonsoft.Json => 0x38f24a24 => 42
	i32 956575887, ; 30: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 60
	i32 967690846, ; 31: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 23
	i32 974778368, ; 32: FormsViewGroup.dll => 0x3a19f000 => 39
	i32 1012816738, ; 33: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 51
	i32 1028951442, ; 34: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 40
	i32 1032266309, ; 35: Plugin.Messaging.dll => 0x3d872245 => 44
	i32 1035644815, ; 36: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 14
	i32 1042160112, ; 37: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 55
	i32 1052210849, ; 38: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 25
	i32 1084122840, ; 39: Xamarin.Kotlin.StdLib => 0x409e66d8 => 32
	i32 1098259244, ; 40: System => 0x41761b2c => 7
	i32 1214827643, ; 41: CommunityToolkit.Mvvm => 0x4868cc7b => 38
	i32 1257494309, ; 42: Plugin.Messaging.Abstractions.dll => 0x4af3d725 => 43
	i32 1275534314, ; 43: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 61
	i32 1292207520, ; 44: SQLitePCLRaw.core.dll => 0x4d0585a0 => 47
	i32 1293217323, ; 45: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 20
	i32 1365406463, ; 46: System.ServiceModel.Internals.dll => 0x516272ff => 35
	i32 1376866003, ; 47: Xamarin.AndroidX.SavedState => 0x52114ed3 => 51
	i32 1406073936, ; 48: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 16
	i32 1411638395, ; 49: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 9
	i32 1419208175, ; 50: eHealth.Data.dll => 0x549765ef => 64
	i32 1460219004, ; 51: Xamarin.Forms.Xaml => 0x57092c7c => 56
	i32 1469204771, ; 52: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 13
	i32 1587447679, ; 53: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 12
	i32 1588351947, ; 54: eHealth.Android.dll => 0x5eac53cb => 63
	i32 1592978981, ; 55: System.Runtime.Serialization.dll => 0x5ef2ee25 => 1
	i32 1615491967, ; 56: eHealth.Service.dll => 0x604a737f => 66
	i32 1622152042, ; 57: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 26
	i32 1636350590, ; 58: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 18
	i32 1639515021, ; 59: System.Net.Http.dll => 0x61b9038d => 0
	i32 1658251792, ; 60: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 30
	i32 1698840827, ; 61: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 58
	i32 1711441057, ; 62: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 48
	i32 1729485958, ; 63: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 15
	i32 1766324549, ; 64: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 28
	i32 1776026572, ; 65: System.Core.dll => 0x69dc03cc => 6
	i32 1788241197, ; 66: Xamarin.AndroidX.Fragment => 0x6a96652d => 21
	i32 1808609942, ; 67: Xamarin.AndroidX.Loader => 0x6bcd3296 => 26
	i32 1813058853, ; 68: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 32
	i32 1813201214, ; 69: Xamarin.Google.Android.Material => 0x6c13413e => 30
	i32 1867746548, ; 70: Xamarin.Essentials.dll => 0x6f538cf4 => 52
	i32 1878053835, ; 71: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 56
	i32 1950899813, ; 72: eHealth => 0x74485e65 => 65
	i32 1983156543, ; 73: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 58
	i32 2011961780, ; 74: System.Buffers.dll => 0x77ec19b4 => 5
	i32 2012836262, ; 75: Plugin.Messaging => 0x77f971a6 => 44
	i32 2019465201, ; 76: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 25
	i32 2055257422, ; 77: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 24
	i32 2097448633, ; 78: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 22
	i32 2103459038, ; 79: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 49
	i32 2126786730, ; 80: Xamarin.Forms.Platform.Android => 0x7ec430aa => 54
	i32 2201107256, ; 81: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 62
	i32 2201231467, ; 82: System.Net.Http => 0x8334206b => 0
	i32 2279755925, ; 83: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 27
	i32 2306217607, ; 84: OxyPlot.Xamarin.Forms => 0x89761687 => 69
	i32 2435904999, ; 85: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 36
	i32 2465273461, ; 86: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 46
	i32 2475788418, ; 87: Java.Interop.dll => 0x93918882 => 2
	i32 2568748418, ; 88: OxyPlot.Xamarin.Forms.Platform.Android => 0x991bfd82 => 70
	i32 2605712449, ; 89: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 62
	i32 2620871830, ; 90: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 18
	i32 2689529426, ; 91: OxyPlot.Xamarin.Android => 0xa04ef652 => 68
	i32 2732626843, ; 92: Xamarin.AndroidX.Activity => 0xa2e0939b => 50
	i32 2737747696, ; 93: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 13
	i32 2747619038, ; 94: OxyPlot.Xamarin.Android.dll => 0xa3c556de => 68
	i32 2766581644, ; 95: Xamarin.Forms.Core => 0xa4e6af8c => 53
	i32 2770495804, ; 96: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 31
	i32 2778768386, ; 97: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 29
	i32 2810250172, ; 98: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 16
	i32 2819470561, ; 99: System.Xml.dll => 0xa80db4e1 => 10
	i32 2853208004, ; 100: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 29
	i32 2905242038, ; 101: mscorlib.dll => 0xad2a79b6 => 4
	i32 2978675010, ; 102: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 20
	i32 3044182254, ; 103: FormsViewGroup => 0xb57288ee => 39
	i32 3085392760, ; 104: OxyPlot => 0xb7e75b78 => 67
	i32 3111772706, ; 105: System.Runtime.Serialization => 0xb979e222 => 1
	i32 3147431871, ; 106: OxyPlot.Xamarin.Forms.dll => 0xbb99ffbf => 69
	i32 3204380047, ; 107: System.Data.dll => 0xbefef58f => 33
	i32 3247949154, ; 108: Mono.Security => 0xc197c562 => 37
	i32 3257332390, ; 109: MvvmHelpers => 0xc226f2a6 => 41
	i32 3258312781, ; 110: Xamarin.AndroidX.CardView => 0xc235e84d => 15
	i32 3286872994, ; 111: SQLite-net.dll => 0xc3e9b3a2 => 45
	i32 3317135071, ; 112: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 19
	i32 3317144872, ; 113: System.Data => 0xc5b79d28 => 33
	i32 3353484488, ; 114: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 22
	i32 3360279109, ; 115: SQLitePCLRaw.core => 0xc849ca45 => 47
	i32 3362522851, ; 116: Xamarin.AndroidX.Core => 0xc86c06e3 => 17
	i32 3366347497, ; 117: Java.Interop => 0xc8a662e9 => 2
	i32 3374999561, ; 118: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 27
	i32 3395150330, ; 119: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 9
	i32 3404865022, ; 120: System.ServiceModel.Internals => 0xcaf21dfe => 35
	i32 3417342253, ; 121: eHealth.dll => 0xcbb0812d => 65
	i32 3429136800, ; 122: System.Xml => 0xcc6479a0 => 10
	i32 3476120550, ; 123: Mono.Android => 0xcf3163e6 => 3
	i32 3509114376, ; 124: System.Xml.Linq => 0xd128d608 => 11
	i32 3536029504, ; 125: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 54
	i32 3632359727, ; 126: Xamarin.Forms.Platform => 0xd881692f => 55
	i32 3641597786, ; 127: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 24
	i32 3645089577, ; 128: System.ComponentModel.DataAnnotations => 0xd943a729 => 36
	i32 3672681054, ; 129: Mono.Android.dll => 0xdae8aa5e => 3
	i32 3689375977, ; 130: System.Drawing.Common => 0xdbe768e9 => 34
	i32 3754567612, ; 131: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 49
	i32 3829621856, ; 132: System.Numerics.dll => 0xe4436460 => 8
	i32 3841636137, ; 133: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 40
	i32 3854864648, ; 134: OxyPlot.Xamarin.Forms.Platform.Android.dll => 0xe5c49108 => 70
	i32 3876362041, ; 135: SQLite-net => 0xe70c9739 => 45
	i32 3896760992, ; 136: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 17
	i32 3955647286, ; 137: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 14
	i32 4105002889, ; 138: Mono.Security.dll => 0xf4ad5f89 => 37
	i32 4151237749, ; 139: System.Core => 0xf76edc75 => 6
	i32 4260525087, ; 140: System.Buffers => 0xfdf2741f => 5
	i32 4274623895 ; 141: CommunityToolkit.Mvvm.dll => 0xfec99597 => 38
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [142 x i32] [
	i32 67, i32 57, i32 42, i32 53, i32 59, i32 12, i32 28, i32 43, ; 0..7
	i32 50, i32 8, i32 63, i32 23, i32 48, i32 52, i32 21, i32 4, ; 8..15
	i32 7, i32 59, i32 64, i32 19, i32 11, i32 61, i32 31, i32 66, ; 16..23
	i32 60, i32 46, i32 34, i32 41, i32 57, i32 42, i32 60, i32 23, ; 24..31
	i32 39, i32 51, i32 40, i32 44, i32 14, i32 55, i32 25, i32 32, ; 32..39
	i32 7, i32 38, i32 43, i32 61, i32 47, i32 20, i32 35, i32 51, ; 40..47
	i32 16, i32 9, i32 64, i32 56, i32 13, i32 12, i32 63, i32 1, ; 48..55
	i32 66, i32 26, i32 18, i32 0, i32 30, i32 58, i32 48, i32 15, ; 56..63
	i32 28, i32 6, i32 21, i32 26, i32 32, i32 30, i32 52, i32 56, ; 64..71
	i32 65, i32 58, i32 5, i32 44, i32 25, i32 24, i32 22, i32 49, ; 72..79
	i32 54, i32 62, i32 0, i32 27, i32 69, i32 36, i32 46, i32 2, ; 80..87
	i32 70, i32 62, i32 18, i32 68, i32 50, i32 13, i32 68, i32 53, ; 88..95
	i32 31, i32 29, i32 16, i32 10, i32 29, i32 4, i32 20, i32 39, ; 96..103
	i32 67, i32 1, i32 69, i32 33, i32 37, i32 41, i32 15, i32 45, ; 104..111
	i32 19, i32 33, i32 22, i32 47, i32 17, i32 2, i32 27, i32 9, ; 112..119
	i32 35, i32 65, i32 10, i32 3, i32 11, i32 54, i32 55, i32 24, ; 120..127
	i32 36, i32 3, i32 34, i32 49, i32 8, i32 40, i32 70, i32 45, ; 128..135
	i32 17, i32 14, i32 37, i32 6, i32 5, i32 38 ; 136..141
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
