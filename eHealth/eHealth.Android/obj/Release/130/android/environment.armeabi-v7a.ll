; ModuleID = 'obj\Release\130\android\environment.armeabi-v7a.ll'
source_filename = "obj\Release\130\android\environment.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.ApplicationConfig = type {
	i8,; bool uses_mono_llvm
	i8,; bool uses_mono_aot
	i8,; bool aot_lazy_load
	i8,; bool uses_assembly_preload
	i8,; bool is_a_bundled_app
	i8,; bool broken_exception_transitions
	i8,; bool instant_run_enabled
	i8,; bool jni_add_native_method_registration_attribute_present
	i8,; bool have_runtime_config_blob
	i8,; bool have_assemblies_blob
	i8,; bool marshal_methods_enabled
	i8,; uint8_t bound_stream_io_exception_type
	i32,; uint32_t package_naming_policy
	i32,; uint32_t environment_variable_count
	i32,; uint32_t system_property_count
	i32,; uint32_t number_of_assemblies_in_apk
	i32,; uint32_t bundled_assembly_name_width
	i32,; uint32_t number_of_assembly_store_files
	i32,; uint32_t number_of_dso_cache_entries
	i32,; uint32_t android_runtime_jnienv_class_token
	i32,; uint32_t jnienv_initialize_method_token
	i32,; uint32_t jnienv_registerjninatives_method_token
	i32,; uint32_t jni_remapping_replacement_type_count
	i32,; uint32_t jni_remapping_replacement_method_index_entry_count
	i32,; uint32_t mono_components_mask
	i8*; char* android_package_name
}

%struct.AssemblyStoreAssemblyDescriptor = type {
	i32,; uint32_t data_offset
	i32,; uint32_t data_size
	i32,; uint32_t debug_data_offset
	i32,; uint32_t debug_data_size
	i32,; uint32_t config_data_offset
	i32; uint32_t config_data_size
}

%struct.AssemblyStoreSingleAssemblyRuntimeData = type {
	i8*,; uint8_t* image_data
	i8*,; uint8_t* debug_info_data
	i8*,; uint8_t* config_data
	%struct.AssemblyStoreAssemblyDescriptor*; AssemblyStoreAssemblyDescriptor* descriptor
}

%struct.AssemblyStoreRuntimeData = type {
	i8*,; uint8_t* data_start
	i32,; uint32_t assembly_count
	%struct.AssemblyStoreAssemblyDescriptor*; AssemblyStoreAssemblyDescriptor* assemblies
}

%struct.XamarinAndroidBundledAssembly = type {
	i32,; int32_t apk_fd
	i32,; uint32_t data_offset
	i32,; uint32_t data_size
	i8*,; uint8_t* data
	i32,; uint32_t name_length
	i8*; char* name
}

%struct.DSOCacheEntry = type {
	i64,; uint64_t hash
	i8,; bool ignore
	i8*,; char* name
	i8*; void* handle
}

@format_tag = local_unnamed_addr constant i64 385281960275288, align 8
@__mono_aot_mode_name = internal constant [7 x i8] c"normal\00", align 1
@mono_aot_mode_name = local_unnamed_addr constant i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__mono_aot_mode_name, i32 0, i32 0), align 4

; app_environment_variables
@__app_environment_variables_n_0.0 = internal constant [15 x i8] c"MONO_GC_PARAMS\00", align 1
@__app_environment_variables_v_0.1 = internal constant [21 x i8] c"major=marksweep-conc\00", align 1
@__app_environment_variables_n_1.2 = internal constant [17 x i8] c"XAMARIN_BUILD_ID\00", align 1
@__app_environment_variables_v_1.3 = internal constant [37 x i8] c"f6dd8a2c-aefa-47b9-bfc1-7d26aae704c5\00", align 1
@__app_environment_variables_n_2.4 = internal constant [28 x i8] c"XA_HTTP_CLIENT_HANDLER_TYPE\00", align 1
@__app_environment_variables_v_2.5 = internal constant [41 x i8] c"Xamarin.Android.Net.AndroidClientHandler\00", align 1
@__app_environment_variables_n_3.6 = internal constant [16 x i8] c"XA_TLS_PROVIDER\00", align 1
@__app_environment_variables_v_3.7 = internal constant [5 x i8] c"btls\00", align 1
@__app_environment_variables_n_4.8 = internal constant [29 x i8] c"__XA_PACKAGE_NAMING_POLICY__\00", align 1
@__app_environment_variables_v_4.9 = internal constant [15 x i8] c"LowercaseCrc64\00", align 1

@app_environment_variables = local_unnamed_addr constant [10 x i8*] [
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__app_environment_variables_n_0.0, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__app_environment_variables_v_0.1, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__app_environment_variables_n_1.2, i32 0, i32 0),
	i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__app_environment_variables_v_1.3, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__app_environment_variables_n_2.4, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__app_environment_variables_v_2.5, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__app_environment_variables_n_3.6, i32 0, i32 0),
	i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__app_environment_variables_v_3.7, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__app_environment_variables_n_4.8, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__app_environment_variables_v_4.9, i32 0, i32 0)
], align 4

; app_system_properties
@app_system_properties = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__ApplicationConfig_android_package_name.0 = internal constant [24 x i8] c"com.companyname.ehealth\00", align 1

; application_config
@application_config = local_unnamed_addr constant %struct.ApplicationConfig {
	i8 0, ; uses_mono_llvm
	i8 1, ; uses_mono_aot
	i8 1, ; aot_lazy_load
	i8 1, ; uses_assembly_preload
	i8 0, ; is_a_bundled_app
	i8 0, ; broken_exception_transitions
	i8 0, ; instant_run_enabled
	i8 0, ; jni_add_native_method_registration_attribute_present
	i8 0, ; have_runtime_config_blob
	i8 1, ; have_assemblies_blob
	i8 0, ; marshal_methods_enabled
	i8 1, ; bound_stream_io_exception_type
	i32 3, ; package_naming_policy
	i32 10, ; environment_variable_count
	i32 0, ; system_property_count
	i32 70, ; number_of_assemblies_in_apk
	i32 0, ; bundled_assembly_name_width
	i32 2, ; number_of_assembly_store_files
	i32 450, ; number_of_dso_cache_entries
	i32 33555398, ; android_runtime_jnienv_class_token
	i32 100674763, ; jnienv_initialize_method_token
	i32 100674762, ; jnienv_registerjninatives_method_token
	i32 0, ; jni_remapping_replacement_type_count
	i32 0, ; jni_remapping_replacement_method_index_entry_count
	i32 0, ; mono_components_mask
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__ApplicationConfig_android_package_name.0, i32 0, i32 0); android_package_name
}, align 4

@__DSOCacheEntry_name.1 = internal constant [30 x i8] c"libaot-Newtonsoft.Json.dll.so\00", align 1
@__DSOCacheEntry_name.2 = internal constant [50 x i8] c"libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so\00", align 1
@__DSOCacheEntry_name.3 = internal constant [36 x i8] c"libaot-Xamarin.AndroidX.Core.dll.so\00", align 1
@__DSOCacheEntry_name.4 = internal constant [46 x i8] c"libaot-SQLitePCLRaw.provider.e_sqlite3.dll.so\00", align 1
@__DSOCacheEntry_name.5 = internal constant [43 x i8] c"libaot-System.Runtime.Serialization.dll.so\00", align 1
@__DSOCacheEntry_name.6 = internal constant [22 x i8] c"libaot-eHealth.dll.so\00", align 1
@__DSOCacheEntry_name.7 = internal constant [27 x i8] c"libaot-eHealth.Data.dll.so\00", align 1
@__DSOCacheEntry_name.8 = internal constant [53 x i8] c"libaot-OxyPlot.Xamarin.Forms.Platform.Android.dll.so\00", align 1
@__DSOCacheEntry_name.9 = internal constant [33 x i8] c"libaot-Xamarin.Essentials.dll.so\00", align 1
@__DSOCacheEntry_name.10 = internal constant [53 x i8] c"libaot-System.Runtime.CompilerServices.Unsafe.dll.so\00", align 1
@__DSOCacheEntry_name.11 = internal constant [31 x i8] c"libaot-Plugin.Messaging.dll.so\00", align 1
@__DSOCacheEntry_name.12 = internal constant [55 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so\00", align 1
@__DSOCacheEntry_name.13 = internal constant [52 x i8] c"libaot-System.ComponentModel.DataAnnotations.dll.so\00", align 1
@__DSOCacheEntry_name.14 = internal constant [23 x i8] c"libaot-mscorlib.dll.so\00", align 1
@__DSOCacheEntry_name.15 = internal constant [26 x i8] c"libaot-System.Core.dll.so\00", align 1
@__DSOCacheEntry_name.16 = internal constant [47 x i8] c"libaot-Xamarin.Android.Arch.Core.Common.dll.so\00", align 1
@__DSOCacheEntry_name.17 = internal constant [40 x i8] c"libaot-Xamarin.AndroidX.Activity.dll.so\00", align 1
@__DSOCacheEntry_name.18 = internal constant [49 x i8] c"libaot-Xamarin.KotlinX.Coroutines.Android.dll.so\00", align 1
@__DSOCacheEntry_name.19 = internal constant [48 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so\00", align 1
@__DSOCacheEntry_name.20 = internal constant [36 x i8] c"libaot-OxyPlot.Xamarin.Forms.dll.so\00", align 1
@__DSOCacheEntry_name.21 = internal constant [44 x i8] c"libaot-Plugin.Messaging.Abstractions.dll.so\00", align 1
@__DSOCacheEntry_name.22 = internal constant [42 x i8] c"libaot-Xamarin.AndroidX.CustomView.dll.so\00", align 1
@__DSOCacheEntry_name.23 = internal constant [42 x i8] c"libaot-Xamarin.AndroidX.SavedState.dll.so\00", align 1
@__DSOCacheEntry_name.24 = internal constant [33 x i8] c"libaot-Xamarin.Forms.Core.dll.so\00", align 1
@__DSOCacheEntry_name.25 = internal constant [16 x i8] c"libmonodroid.so\00", align 1
@__DSOCacheEntry_name.26 = internal constant [36 x i8] c"libaot-Xamarin.Kotlin.StdLib.dll.so\00", align 1
@__DSOCacheEntry_name.27 = internal constant [38 x i8] c"libaot-OxyPlot.Xamarin.Android.dll.so\00", align 1
@__DSOCacheEntry_name.28 = internal constant [49 x i8] c"libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so\00", align 1
@__DSOCacheEntry_name.29 = internal constant [54 x i8] c"libaot-Xamarin.AndroidX.Legacy.Support.Core.UI.dll.so\00", align 1
@__DSOCacheEntry_name.30 = internal constant [27 x i8] c"libaot-Mono.Android.dll.so\00", align 1
@__DSOCacheEntry_name.31 = internal constant [45 x i8] c"libaot-Xamarin.Forms.Platform.Android.dll.so\00", align 1
@__DSOCacheEntry_name.32 = internal constant [30 x i8] c"libaot-System.Numerics.dll.so\00", align 1
@__DSOCacheEntry_name.33 = internal constant [30 x i8] c"libaot-eHealth.Android.dll.so\00", align 1
@__DSOCacheEntry_name.34 = internal constant [22 x i8] c"libxa-internal-api.so\00", align 1
@__DSOCacheEntry_name.35 = internal constant [41 x i8] c"libaot-Xamarin.AndroidX.AppCompat.dll.so\00", align 1
@__DSOCacheEntry_name.36 = internal constant [68 x i8] c"libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so\00", align 1
@__DSOCacheEntry_name.37 = internal constant [26 x i8] c"libaot-System.Data.dll.so\00", align 1
@__DSOCacheEntry_name.38 = internal constant [36 x i8] c"libaot-System.Drawing.Common.dll.so\00", align 1
@__DSOCacheEntry_name.39 = internal constant [60 x i8] c"libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so\00", align 1
@__DSOCacheEntry_name.40 = internal constant [38 x i8] c"libaot-Xamarin.AndroidX.Loader.dll.so\00", align 1
@__DSOCacheEntry_name.41 = internal constant [40 x i8] c"libaot-Xamarin.AndroidX.Fragment.dll.so\00", align 1
@__DSOCacheEntry_name.42 = internal constant [41 x i8] c"libaot-Xamarin.Kotlin.StdLib.Jdk8.dll.so\00", align 1
@__DSOCacheEntry_name.43 = internal constant [32 x i8] c"libaot-SQLitePCLRaw.core.dll.so\00", align 1
@__DSOCacheEntry_name.44 = internal constant [41 x i8] c"libaot-Xamarin.Kotlin.StdLib.Jdk7.dll.so\00", align 1
@__DSOCacheEntry_name.45 = internal constant [33 x i8] c"libaot-Xamarin.Forms.Xaml.dll.so\00", align 1
@__DSOCacheEntry_name.46 = internal constant [36 x i8] c"libaot-CommunityToolkit.Mvvm.dll.so\00", align 1
@__DSOCacheEntry_name.47 = internal constant [40 x i8] c"libaot-SQLitePCLRaw.batteries_v2.dll.so\00", align 1
@__DSOCacheEntry_name.48 = internal constant [29 x i8] c"libaot-System.Buffers.dll.so\00", align 1
@__DSOCacheEntry_name.49 = internal constant [28 x i8] c"libaot-Mono.Security.dll.so\00", align 1
@__DSOCacheEntry_name.50 = internal constant [40 x i8] c"libaot-Xamarin.AndroidX.CardView.dll.so\00", align 1
@__DSOCacheEntry_name.51 = internal constant [46 x i8] c"libaot-Xamarin.Google.Android.Material.dll.so\00", align 1
@__DSOCacheEntry_name.52 = internal constant [44 x i8] c"libaot-Xamarin.Jetbrains.Annotations.dll.so\00", align 1
@__DSOCacheEntry_name.53 = internal constant [30 x i8] c"libaot-eHealth.Service.dll.so\00", align 1
@__DSOCacheEntry_name.54 = internal constant [29 x i8] c"libaot-FormsViewGroup.dll.so\00", align 1
@__DSOCacheEntry_name.55 = internal constant [44 x i8] c"libaot-System.ServiceModel.Internals.dll.so\00", align 1
@__DSOCacheEntry_name.56 = internal constant [37 x i8] c"libaot-Xamarin.Forms.Platform.dll.so\00", align 1
@__DSOCacheEntry_name.57 = internal constant [44 x i8] c"libaot-Xamarin.AndroidX.DrawerLayout.dll.so\00", align 1
@__DSOCacheEntry_name.58 = internal constant [26 x i8] c"libaot-MvvmHelpers.dll.so\00", align 1
@__DSOCacheEntry_name.59 = internal constant [52 x i8] c"libaot-Xamarin.Google.Guava.ListenableFuture.dll.so\00", align 1
@__DSOCacheEntry_name.60 = internal constant [25 x i8] c"libaot-System.Xml.dll.so\00", align 1
@__DSOCacheEntry_name.61 = internal constant [21 x i8] c"libaot-System.dll.so\00", align 1
@__DSOCacheEntry_name.62 = internal constant [51 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so\00", align 1
@__DSOCacheEntry_name.63 = internal constant [50 x i8] c"libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so\00", align 1
@__DSOCacheEntry_name.64 = internal constant [30 x i8] c"libaot-System.Net.Http.dll.so\00", align 1
@__DSOCacheEntry_name.65 = internal constant [45 x i8] c"libaot-Xamarin.AndroidX.CursorAdapter.dll.so\00", align 1
@__DSOCacheEntry_name.66 = internal constant [43 x i8] c"libaot-Xamarin.Kotlin.StdLib.Common.dll.so\00", align 1
@__DSOCacheEntry_name.67 = internal constant [23 x i8] c"libmono-btls-shared.so\00", align 1
@__DSOCacheEntry_name.68 = internal constant [18 x i8] c"libmono-native.so\00", align 1
@__DSOCacheEntry_name.69 = internal constant [44 x i8] c"libaot-Xamarin.AndroidX.RecyclerView.dll.so\00", align 1
@__DSOCacheEntry_name.70 = internal constant [30 x i8] c"libaot-System.Xml.Linq.dll.so\00", align 1
@__DSOCacheEntry_name.71 = internal constant [22 x i8] c"libaot-OxyPlot.dll.so\00", align 1
@__DSOCacheEntry_name.72 = internal constant [16 x i8] c"libe_sqlite3.so\00", align 1
@__DSOCacheEntry_name.73 = internal constant [49 x i8] c"libaot-SQLitePCLRaw.lib.e_sqlite3.android.dll.so\00", align 1
@__DSOCacheEntry_name.74 = internal constant [41 x i8] c"libaot-Xamarin.AndroidX.ViewPager.dll.so\00", align 1
@__DSOCacheEntry_name.75 = internal constant [25 x i8] c"libaot-SQLite-net.dll.so\00", align 1
@__DSOCacheEntry_name.76 = internal constant [27 x i8] c"libaot-Java.Interop.dll.so\00", align 1
@__DSOCacheEntry_name.77 = internal constant [19 x i8] c"libmonosgen-2.0.so\00", align 1

; dso_cache
@dso_cache = local_unnamed_addr global [450 x %struct.DSOCacheEntry] [
	; 0
	%struct.DSOCacheEntry {
		i64 1541521, ; hash 0x178591, from name: libaot-Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1
	%struct.DSOCacheEntry {
		i64 36746888, ; hash 0x230b688, from name: aot-Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 2
	%struct.DSOCacheEntry {
		i64 62384850, ; hash 0x3b7ead2, from name: libaot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 3
	%struct.DSOCacheEntry {
		i64 65135507, ; hash 0x3e1e393, from name: aot-SQLitePCLRaw.provider.e_sqlite3.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 4
	%struct.DSOCacheEntry {
		i64 68635670, ; hash 0x4174c16, from name: aot-System.Runtime.Serialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 5
	%struct.DSOCacheEntry {
		i64 69496913, ; hash 0x4247051, from name: aot-eHealth
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 6
	%struct.DSOCacheEntry {
		i64 95249486, ; hash 0x5ad644e, from name: eHealth.Data.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 7
	%struct.DSOCacheEntry {
		i64 97543391, ; hash 0x5d064df, from name: aot-OxyPlot.Xamarin.Forms.Platform.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 8
	%struct.DSOCacheEntry {
		i64 106024512, ; hash 0x651ce40, from name: libaot-Xamarin.Essentials.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 9
	%struct.DSOCacheEntry {
		i64 112931486, ; hash 0x6bb329e, from name: System.Runtime.CompilerServices.Unsafe.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 10
	%struct.DSOCacheEntry {
		i64 132354028, ; hash 0x7e38fec, from name: libaot-Plugin.Messaging.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 11
	%struct.DSOCacheEntry {
		i64 132747680, ; hash 0x7e991a0, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 12
	%struct.DSOCacheEntry {
		i64 133558474, ; hash 0x7f5f0ca, from name: libaot-System.ComponentModel.DataAnnotations
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 13
	%struct.DSOCacheEntry {
		i64 135821890, ; hash 0x8187a42, from name: aot-mscorlib
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 14
	%struct.DSOCacheEntry {
		i64 153552311, ; hash 0x92705b7, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 15
	%struct.DSOCacheEntry {
		i64 155189489, ; hash 0x94000f1, from name: aot-System.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 16
	%struct.DSOCacheEntry {
		i64 160529393, ; hash 0x9917bf1, from name: Xamarin.Android.Arch.Core.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 17
	%struct.DSOCacheEntry {
		i64 160724438, ; hash 0x99475d6, from name: libaot-Xamarin.AndroidX.Activity
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 18
	%struct.DSOCacheEntry {
		i64 163879434, ; hash 0x9c49a0a, from name: libaot-Xamarin.KotlinX.Coroutines.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 19
	%struct.DSOCacheEntry {
		i64 165120050, ; hash 0x9d78832, from name: libaot-Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 20
	%struct.DSOCacheEntry {
		i64 172894955, ; hash 0xa4e2aeb, from name: libaot-OxyPlot.Xamarin.Forms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 21
	%struct.DSOCacheEntry {
		i64 176815410, ; hash 0xa89fd32, from name: Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 22
	%struct.DSOCacheEntry {
		i64 194720069, ; hash 0xb9b3145, from name: Plugin.Messaging.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 23
	%struct.DSOCacheEntry {
		i64 195166226, ; hash 0xba20012, from name: libaot-Xamarin.AndroidX.CustomView
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 24
	%struct.DSOCacheEntry {
		i64 200694997, ; hash 0xbf65cd5, from name: libaot-Xamarin.AndroidX.SavedState.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 25
	%struct.DSOCacheEntry {
		i64 214632834, ; hash 0xccb0982, from name: libaot-Xamarin.Forms.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 26
	%struct.DSOCacheEntry {
		i64 214688819, ; hash 0xccbe433, from name: Xamarin.Essentials.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 27
	%struct.DSOCacheEntry {
		i64 229294244, ; hash 0xdaac0a4, from name: monodroid.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 28
	%struct.DSOCacheEntry {
		i64 234893954, ; hash 0xe003282, from name: libaot-Xamarin.Kotlin.StdLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 29
	%struct.DSOCacheEntry {
		i64 247499072, ; hash 0xec08940, from name: aot-Xamarin.Android.Arch.Core.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 30
	%struct.DSOCacheEntry {
		i64 251297688, ; hash 0xefa7f98, from name: libaot-OxyPlot.Xamarin.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 31
	%struct.DSOCacheEntry {
		i64 257906758, ; hash 0xf5f5846, from name: libaot-Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 32
	%struct.DSOCacheEntry {
		i64 258230989, ; hash 0xf644acd, from name: Xamarin.Kotlin.StdLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 33
	%struct.DSOCacheEntry {
		i64 265488833, ; hash 0xfd309c1, from name: libaot-Xamarin.AndroidX.Legacy.Support.Core.UI.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 34
	%struct.DSOCacheEntry {
		i64 292529153, ; hash 0x116fa401, from name: libaot-Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 35
	%struct.DSOCacheEntry {
		i64 300626474, ; hash 0x11eb322a, from name: libaot-Xamarin.Forms.Platform.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 36
	%struct.DSOCacheEntry {
		i64 321597661, ; hash 0x132b30dd, from name: System.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 37
	%struct.DSOCacheEntry {
		i64 322645766, ; hash 0x133b2f06, from name: System.Runtime.Serialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 38
	%struct.DSOCacheEntry {
		i64 326667749, ; hash 0x13788de5, from name: eHealth.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 39
	%struct.DSOCacheEntry {
		i64 331988322, ; hash 0x13c9bd62, from name: xa-internal-api
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 40
	%struct.DSOCacheEntry {
		i64 342366114, ; hash 0x146817a2, from name: Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 41
	%struct.DSOCacheEntry {
		i64 349605155, ; hash 0x14d68d23, from name: Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 42
	%struct.DSOCacheEntry {
		i64 367117185, ; hash 0x15e1c381, from name: aot-Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 43
	%struct.DSOCacheEntry {
		i64 393385678, ; hash 0x177296ce, from name: aot-OxyPlot.Xamarin.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 44
	%struct.DSOCacheEntry {
		i64 410311426, ; hash 0x1874db02, from name: Xamarin.Forms.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 45
	%struct.DSOCacheEntry {
		i64 438393095, ; hash 0x1a215907, from name: aot-System.Data
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 46
	%struct.DSOCacheEntry {
		i64 440852758, ; hash 0x1a46e116, from name: libaot-System.Drawing.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 47
	%struct.DSOCacheEntry {
		i64 442521989, ; hash 0x1a605985, from name: Xamarin.Essentials
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 48
	%struct.DSOCacheEntry {
		i64 459786305, ; hash 0x1b67c841, from name: Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 49
	%struct.DSOCacheEntry {
		i64 465846621, ; hash 0x1bc4415d, from name: mscorlib
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 50
	%struct.DSOCacheEntry {
		i64 467362390, ; hash 0x1bdb6256, from name: aot-Xamarin.Kotlin.StdLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 51
	%struct.DSOCacheEntry {
		i64 467725327, ; hash 0x1be0ec0f, from name: aot-Xamarin.AndroidX.Loader
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 52
	%struct.DSOCacheEntry {
		i64 468077253, ; hash 0x1be64ac5, from name: aot-Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 53
	%struct.DSOCacheEntry {
		i64 495949708, ; hash 0x1d8f978c, from name: aot-Xamarin.Kotlin.StdLib.Jdk8.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 54
	%struct.DSOCacheEntry {
		i64 512411698, ; hash 0x1e8ac832, from name: SQLitePCLRaw.core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 55
	%struct.DSOCacheEntry {
		i64 527452488, ; hash 0x1f704948, from name: Xamarin.Kotlin.StdLib.Jdk7
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 56
	%struct.DSOCacheEntry {
		i64 550368715, ; hash 0x20cdf5cb, from name: System.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 57
	%struct.DSOCacheEntry {
		i64 551862371, ; hash 0x20e4c063, from name: eHealth.Data
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 58
	%struct.DSOCacheEntry {
		i64 553320055, ; hash 0x20fafe77, from name: aot-Xamarin.Forms.Xaml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 59
	%struct.DSOCacheEntry {
		i64 563700166, ; hash 0x219961c6, from name: libaot-Xamarin.AndroidX.AppCompat
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 60
	%struct.DSOCacheEntry {
		i64 578054144, ; hash 0x22746800, from name: aot-CommunityToolkit.Mvvm.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 61
	%struct.DSOCacheEntry {
		i64 585084685, ; hash 0x22dfaf0d, from name: aot-SQLitePCLRaw.batteries_v2
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 62
	%struct.DSOCacheEntry {
		i64 592143061, ; hash 0x234b62d5, from name: aot-Xamarin.Essentials.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 63
	%struct.DSOCacheEntry {
		i64 599423409, ; hash 0x23ba79b1, from name: aot-System.Buffers
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 64
	%struct.DSOCacheEntry {
		i64 605070680, ; hash 0x2410a558, from name: aot-Mono.Security.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 65
	%struct.DSOCacheEntry {
		i64 627609679, ; hash 0x2568904f, from name: Xamarin.AndroidX.CustomView
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 66
	%struct.DSOCacheEntry {
		i64 635990061, ; hash 0x25e8702d, from name: aot-System.Runtime.Serialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 67
	%struct.DSOCacheEntry {
		i64 642056996, ; hash 0x26450324, from name: libaot-OxyPlot.Xamarin.Forms
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 68
	%struct.DSOCacheEntry {
		i64 645288582, ; hash 0x26765286, from name: libaot-Xamarin.AndroidX.CardView
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 69
	%struct.DSOCacheEntry {
		i64 646048577, ; hash 0x2681eb41, from name: libaot-eHealth.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 70
	%struct.DSOCacheEntry {
		i64 646790475, ; hash 0x268d3d4b, from name: libaot-Mono.Security.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 71
	%struct.DSOCacheEntry {
		i64 660366738, ; hash 0x275c6592, from name: aot-Xamarin.Google.Android.Material.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 72
	%struct.DSOCacheEntry {
		i64 664190568, ; hash 0x2796be68, from name: aot-System.Data.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 73
	%struct.DSOCacheEntry {
		i64 676732119, ; hash 0x28561cd7, from name: libaot-CommunityToolkit.Mvvm
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 74
	%struct.DSOCacheEntry {
		i64 700284507, ; hash 0x29bd7e5b, from name: Xamarin.Jetbrains.Annotations
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 75
	%struct.DSOCacheEntry {
		i64 705820857, ; hash 0x2a11f8b9, from name: eHealth.Service
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 76
	%struct.DSOCacheEntry {
		i64 720511267, ; hash 0x2af22123, from name: Xamarin.Kotlin.StdLib.Jdk8
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 77
	%struct.DSOCacheEntry {
		i64 731452914, ; hash 0x2b9915f2, from name: libaot-FormsViewGroup.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 78
	%struct.DSOCacheEntry {
		i64 739913497, ; hash 0x2c1a2f19, from name: libaot-Xamarin.Kotlin.StdLib.Jdk7
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 79
	%struct.DSOCacheEntry {
		i64 748366034, ; hash 0x2c9b28d2, from name: monodroid
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 80
	%struct.DSOCacheEntry {
		i64 748832960, ; hash 0x2ca248c0, from name: SQLitePCLRaw.batteries_v2
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 81
	%struct.DSOCacheEntry {
		i64 752785591, ; hash 0x2cde98b7, from name: libaot-System.ServiceModel.Internals
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 82
	%struct.DSOCacheEntry {
		i64 758174468, ; hash 0x2d30d304, from name: Xamarin.Forms.Platform.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 83
	%struct.DSOCacheEntry {
		i64 762760608, ; hash 0x2d76cda0, from name: aot-eHealth.Data.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 84
	%struct.DSOCacheEntry {
		i64 802286629, ; hash 0x2fd1ec25, from name: aot-Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 85
	%struct.DSOCacheEntry {
		i64 826478269, ; hash 0x31430ebd, from name: MvvmHelpers.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 86
	%struct.DSOCacheEntry {
		i64 829537894, ; hash 0x3171be66, from name: aot-System.Drawing.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 87
	%struct.DSOCacheEntry {
		i64 833411635, ; hash 0x31acda33, from name: libaot-OxyPlot.Xamarin.Forms.Platform.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 88
	%struct.DSOCacheEntry {
		i64 835979558, ; hash 0x31d40926, from name: aot-Xamarin.Forms.Platform.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 89
	%struct.DSOCacheEntry {
		i64 838232158, ; hash 0x31f6685e, from name: aot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 90
	%struct.DSOCacheEntry {
		i64 839323146, ; hash 0x32070e0a, from name: libaot-Xamarin.AndroidX.Legacy.Support.Core.UI
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 91
	%struct.DSOCacheEntry {
		i64 849109382, ; hash 0x329c6186, from name: Xamarin.AndroidX.Legacy.Support.Core.UI.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 92
	%struct.DSOCacheEntry {
		i64 850113928, ; hash 0x32abb588, from name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 93
	%struct.DSOCacheEntry {
		i64 862126818, ; hash 0x336302e2, from name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 94
	%struct.DSOCacheEntry {
		i64 862752302, ; hash 0x336c8e2e, from name: xa-internal-api.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 95
	%struct.DSOCacheEntry {
		i64 872661821, ; hash 0x3403c33d, from name: aot-Xamarin.Jetbrains.Annotations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 96
	%struct.DSOCacheEntry {
		i64 880254817, ; hash 0x34779f61, from name: Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 97
	%struct.DSOCacheEntry {
		i64 905680937, ; hash 0x35fb9829, from name: aot-mscorlib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 98
	%struct.DSOCacheEntry {
		i64 913227312, ; hash 0x366ebe30, from name: Mono.Security.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 99
	%struct.DSOCacheEntry {
		i64 919525363, ; hash 0x36ced7f3, from name: aot-Xamarin.Forms.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 100
	%struct.DSOCacheEntry {
		i64 927285447, ; hash 0x374540c7, from name: libaot-Plugin.Messaging.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 101
	%struct.DSOCacheEntry {
		i64 928116545, ; hash 0x3751ef41, from name: Xamarin.Google.Guava.ListenableFuture
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 102
	%struct.DSOCacheEntry {
		i64 948077769, ; hash 0x388284c9, from name: aot-System.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 103
	%struct.DSOCacheEntry {
		i64 955402788, ; hash 0x38f24a24, from name: Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 104
	%struct.DSOCacheEntry {
		i64 957139896, ; hash 0x390ccbb8, from name: aot-eHealth.Service.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 105
	%struct.DSOCacheEntry {
		i64 965570903, ; hash 0x398d7157, from name: libaot-System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 106
	%struct.DSOCacheEntry {
		i64 970896636, ; hash 0x39deb4fc, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 107
	%struct.DSOCacheEntry {
		i64 991370235, ; hash 0x3b171bfb, from name: libaot-Xamarin.AndroidX.Loader.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 108
	%struct.DSOCacheEntry {
		i64 992239438, ; hash 0x3b245f4e, from name: aot-Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 109
	%struct.DSOCacheEntry {
		i64 999798238, ; hash 0x3b97b5de, from name: libaot-Xamarin.Google.Guava.ListenableFuture
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 110
	%struct.DSOCacheEntry {
		i64 999807200, ; hash 0x3b97d8e0, from name: Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 111
	%struct.DSOCacheEntry {
		i64 1000318620, ; hash 0x3b9fa69c, from name: libaot-System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 112
	%struct.DSOCacheEntry {
		i64 1027261693, ; hash 0x3d3ac4fd, from name: aot-Xamarin.AndroidX.DrawerLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 113
	%struct.DSOCacheEntry {
		i64 1028951442, ; hash 0x3d548d92, from name: Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 114
	%struct.DSOCacheEntry {
		i64 1035644815, ; hash 0x3dbaaf8f, from name: Xamarin.AndroidX.AppCompat
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 115
	%struct.DSOCacheEntry {
		i64 1054437010, ; hash 0x3ed96e92, from name: libaot-System.Runtime.Serialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 116
	%struct.DSOCacheEntry {
		i64 1064597976, ; hash 0x3f7479d8, from name: Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 117
	%struct.DSOCacheEntry {
		i64 1079503280, ; hash 0x4057e9b0, from name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 118
	%struct.DSOCacheEntry {
		i64 1084122840, ; hash 0x409e66d8, from name: Xamarin.Kotlin.StdLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 119
	%struct.DSOCacheEntry {
		i64 1090089631, ; hash 0x40f9729f, from name: aot-OxyPlot.Xamarin.Forms.Platform.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 120
	%struct.DSOCacheEntry {
		i64 1098259244, ; hash 0x41761b2c, from name: System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 121
	%struct.DSOCacheEntry {
		i64 1113288180, ; hash 0x425b6df4, from name: aot-Xamarin.Forms.Platform.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 122
	%struct.DSOCacheEntry {
		i64 1133254329, ; hash 0x438c16b9, from name: aot-eHealth.Data
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 123
	%struct.DSOCacheEntry {
		i64 1141279138, ; hash 0x440689a2, from name: libaot-System.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 124
	%struct.DSOCacheEntry {
		i64 1145756484, ; hash 0x444adb44, from name: libaot-OxyPlot.Xamarin.Forms.Platform.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 125
	%struct.DSOCacheEntry {
		i64 1153812247, ; hash 0x44c5c717, from name: Plugin.Messaging.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 126
	%struct.DSOCacheEntry {
		i64 1162145747, ; hash 0x4544efd3, from name: aot-Xamarin.AndroidX.Activity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 127
	%struct.DSOCacheEntry {
		i64 1172542776, ; hash 0x45e39538, from name: libaot-System.ServiceModel.Internals.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 128
	%struct.DSOCacheEntry {
		i64 1180449965, ; hash 0x465c3cad, from name: aot-System.ComponentModel.DataAnnotations
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 129
	%struct.DSOCacheEntry {
		i64 1191093733, ; hash 0x46fea5e5, from name: libaot-Xamarin.Kotlin.StdLib.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 130
	%struct.DSOCacheEntry {
		i64 1198481334, ; hash 0x476f5fb6, from name: aot-Xamarin.Google.Guava.ListenableFuture.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 131
	%struct.DSOCacheEntry {
		i64 1204477115, ; hash 0x47cadcbb, from name: aot-Xamarin.Google.Guava.ListenableFuture
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 132
	%struct.DSOCacheEntry {
		i64 1214827643, ; hash 0x4868cc7b, from name: CommunityToolkit.Mvvm
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 133
	%struct.DSOCacheEntry {
		i64 1215177351, ; hash 0x486e2287, from name: aot-System.Runtime.CompilerServices.Unsafe.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 134
	%struct.DSOCacheEntry {
		i64 1216888235, ; hash 0x48883dab, from name: aot-System.Buffers.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 135
	%struct.DSOCacheEntry {
		i64 1221610541, ; hash 0x48d04c2d, from name: libaot-Xamarin.Forms.Platform.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 136
	%struct.DSOCacheEntry {
		i64 1249626734, ; hash 0x4a7bca6e, from name: Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 137
	%struct.DSOCacheEntry {
		i64 1264007745, ; hash 0x4b573a41, from name: aot-Xamarin.AndroidX.CustomView
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 138
	%struct.DSOCacheEntry {
		i64 1275534314, ; hash 0x4c071bea, from name: Xamarin.KotlinX.Coroutines.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 139
	%struct.DSOCacheEntry {
		i64 1277412854, ; hash 0x4c23c5f6, from name: libaot-System.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 140
	%struct.DSOCacheEntry {
		i64 1285465351, ; hash 0x4c9ea507, from name: aot-System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 141
	%struct.DSOCacheEntry {
		i64 1293582060, ; hash 0x4d1a7eec, from name: libaot-Xamarin.Kotlin.StdLib.Jdk8.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 142
	%struct.DSOCacheEntry {
		i64 1295752231, ; hash 0x4d3b9c27, from name: mono-btls-shared
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 143
	%struct.DSOCacheEntry {
		i64 1342113219, ; hash 0x4fff05c3, from name: mono-native
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 144
	%struct.DSOCacheEntry {
		i64 1360868007, ; hash 0x511d32a7, from name: libaot-Xamarin.Google.Android.Material
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 145
	%struct.DSOCacheEntry {
		i64 1368331863, ; hash 0x518f1657, from name: libaot-SQLitePCLRaw.core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 146
	%struct.DSOCacheEntry {
		i64 1376866003, ; hash 0x52114ed3, from name: Xamarin.AndroidX.SavedState
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 147
	%struct.DSOCacheEntry {
		i64 1383009688, ; hash 0x526f0d98, from name: aot-System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 148
	%struct.DSOCacheEntry {
		i64 1395095540, ; hash 0x532777f4, from name: libaot-eHealth.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 149
	%struct.DSOCacheEntry {
		i64 1396668899, ; hash 0x533f79e3, from name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 150
	%struct.DSOCacheEntry {
		i64 1404838337, ; hash 0x53bc21c1, from name: aot-Xamarin.KotlinX.Coroutines.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 151
	%struct.DSOCacheEntry {
		i64 1406073936, ; hash 0x53cefc50, from name: Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 152
	%struct.DSOCacheEntry {
		i64 1408867004, ; hash 0x53f99abc, from name: aot-Mono.Security
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 153
	%struct.DSOCacheEntry {
		i64 1409736290, ; hash 0x5406de62, from name: aot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 154
	%struct.DSOCacheEntry {
		i64 1411638395, ; hash 0x5423e47b, from name: System.Runtime.CompilerServices.Unsafe
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 155
	%struct.DSOCacheEntry {
		i64 1452208284, ; hash 0x568ef09c, from name: libaot-Xamarin.AndroidX.Loader
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 156
	%struct.DSOCacheEntry {
		i64 1460219004, ; hash 0x57092c7c, from name: Xamarin.Forms.Xaml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 157
	%struct.DSOCacheEntry {
		i64 1469204771, ; hash 0x57924923, from name: Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 158
	%struct.DSOCacheEntry {
		i64 1480146353, ; hash 0x58393db1, from name: libaot-Xamarin.AndroidX.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 159
	%struct.DSOCacheEntry {
		i64 1488589746, ; hash 0x58ba13b2, from name: aot-Xamarin.AndroidX.AppCompat
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 160
	%struct.DSOCacheEntry {
		i64 1505467903, ; hash 0x59bb9dff, from name: aot-System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 161
	%struct.DSOCacheEntry {
		i64 1535450622, ; hash 0x5b851dfe, from name: libaot-FormsViewGroup
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 162
	%struct.DSOCacheEntry {
		i64 1557407134, ; hash 0x5cd4259e, from name: libaot-Xamarin.Android.Arch.Core.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 163
	%struct.DSOCacheEntry {
		i64 1602059692, ; hash 0x5f7d7dac, from name: libaot-OxyPlot
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 164
	%struct.DSOCacheEntry {
		i64 1604140973, ; hash 0x5f9d3fad, from name: aot-eHealth.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 165
	%struct.DSOCacheEntry {
		i64 1604248443, ; hash 0x5f9ee37b, from name: libaot-System.ComponentModel.DataAnnotations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 166
	%struct.DSOCacheEntry {
		i64 1616752929, ; hash 0x605db121, from name: OxyPlot.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 167
	%struct.DSOCacheEntry {
		i64 1619930123, ; hash 0x608e2c0b, from name: Xamarin.Kotlin.StdLib.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 168
	%struct.DSOCacheEntry {
		i64 1631970680, ; hash 0x6145e578, from name: aot-OxyPlot.Xamarin.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 169
	%struct.DSOCacheEntry {
		i64 1636350590, ; hash 0x6188ba7e, from name: Xamarin.AndroidX.CursorAdapter
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 170
	%struct.DSOCacheEntry {
		i64 1639295300, ; hash 0x61b5a944, from name: aot-System.Drawing.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 171
	%struct.DSOCacheEntry {
		i64 1651622786, ; hash 0x6271c382, from name: aot-Xamarin.AndroidX.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 172
	%struct.DSOCacheEntry {
		i64 1663686167, ; hash 0x6329d617, from name: aot-MvvmHelpers.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 173
	%struct.DSOCacheEntry {
		i64 1675361581, ; hash 0x63dbfd2d, from name: e_sqlite3
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 174
	%struct.DSOCacheEntry {
		i64 1676014415, ; hash 0x63e5f34f, from name: Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 175
	%struct.DSOCacheEntry {
		i64 1690297309, ; hash 0x64bfe3dd, from name: libaot-eHealth.Data.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 176
	%struct.DSOCacheEntry {
		i64 1698840827, ; hash 0x654240fb, from name: Xamarin.Kotlin.StdLib.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 177
	%struct.DSOCacheEntry {
		i64 1701847939, ; hash 0x65702383, from name: libaot-Xamarin.AndroidX.DrawerLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 178
	%struct.DSOCacheEntry {
		i64 1704500184, ; hash 0x65989bd8, from name: libaot-Xamarin.Forms.Xaml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 179
	%struct.DSOCacheEntry {
		i64 1711441057, ; hash 0x660284a1, from name: SQLitePCLRaw.lib.e_sqlite3.android
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 180
	%struct.DSOCacheEntry {
		i64 1723608128, ; hash 0x66bc2c40, from name: aot-Xamarin.AndroidX.Activity
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 181
	%struct.DSOCacheEntry {
		i64 1724842858, ; hash 0x66cf036a, from name: libaot-Xamarin.Google.Guava.ListenableFuture.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 182
	%struct.DSOCacheEntry {
		i64 1740020094, ; hash 0x67b6997e, from name: System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 183
	%struct.DSOCacheEntry {
		i64 1743439659, ; hash 0x67eac72b, from name: aot-Xamarin.AndroidX.ViewPager.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 184
	%struct.DSOCacheEntry {
		i64 1757787625, ; hash 0x68c5b5e9, from name: Xamarin.Google.Android.Material.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 185
	%struct.DSOCacheEntry {
		i64 1766324549, ; hash 0x6947f945, from name: Xamarin.AndroidX.SwipeRefreshLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 186
	%struct.DSOCacheEntry {
		i64 1773040089, ; hash 0x69ae71d9, from name: aot-Xamarin.Forms.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 187
	%struct.DSOCacheEntry {
		i64 1788241197, ; hash 0x6a96652d, from name: Xamarin.AndroidX.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 188
	%struct.DSOCacheEntry {
		i64 1808609942, ; hash 0x6bcd3296, from name: Xamarin.AndroidX.Loader
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 189
	%struct.DSOCacheEntry {
		i64 1813201214, ; hash 0x6c13413e, from name: Xamarin.Google.Android.Material
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 190
	%struct.DSOCacheEntry {
		i64 1818598803, ; hash 0x6c659d93, from name: libaot-Mono.Security
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 191
	%struct.DSOCacheEntry {
		i64 1838737787, ; hash 0x6d98e97b, from name: aot-Xamarin.AndroidX.SavedState.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 192
	%struct.DSOCacheEntry {
		i64 1840445796, ; hash 0x6db2f964, from name: libaot-System.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 193
	%struct.DSOCacheEntry {
		i64 1852082002, ; hash 0x6e648752, from name: libaot-eHealth
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 194
	%struct.DSOCacheEntry {
		i64 1854569882, ; hash 0x6e8a7d9a, from name: libaot-Xamarin.Kotlin.StdLib.Jdk8
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 195
	%struct.DSOCacheEntry {
		i64 1868438852, ; hash 0x6f5e1d44, from name: aot-Xamarin.AndroidX.CustomView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 196
	%struct.DSOCacheEntry {
		i64 1869146883, ; hash 0x6f68eb03, from name: Xamarin.Kotlin.StdLib.Jdk8.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 197
	%struct.DSOCacheEntry {
		i64 1875524570, ; hash 0x6fca3bda, from name: Xamarin.Forms.Xaml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 198
	%struct.DSOCacheEntry {
		i64 1889411128, ; hash 0x709e2038, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 199
	%struct.DSOCacheEntry {
		i64 1895423854, ; hash 0x70f9df6e, from name: aot-System.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 200
	%struct.DSOCacheEntry {
		i64 1897282770, ; hash 0x71163cd2, from name: SQLite-net.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 201
	%struct.DSOCacheEntry {
		i64 1900739026, ; hash 0x714af9d2, from name: libaot-System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 202
	%struct.DSOCacheEntry {
		i64 1914833484, ; hash 0x72220a4c, from name: libaot-SQLitePCLRaw.lib.e_sqlite3.android
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 203
	%struct.DSOCacheEntry {
		i64 1932973986, ; hash 0x7336d7a2, from name: SQLitePCLRaw.batteries_v2.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 204
	%struct.DSOCacheEntry {
		i64 1947440624, ; hash 0x741395f0, from name: Xamarin.AndroidX.CursorAdapter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 205
	%struct.DSOCacheEntry {
		i64 1950899813, ; hash 0x74485e65, from name: eHealth
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 206
	%struct.DSOCacheEntry {
		i64 1971892256, ; hash 0x7588b020, from name: libaot-MvvmHelpers
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 207
	%struct.DSOCacheEntry {
		i64 1975492760, ; hash 0x75bfa098, from name: libaot-Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 208
	%struct.DSOCacheEntry {
		i64 1995848636, ; hash 0x76f63bbc, from name: aot-Xamarin.Kotlin.StdLib.Jdk7
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 209
	%struct.DSOCacheEntry {
		i64 2003249542, ; hash 0x77672986, from name: libaot-eHealth.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 210
	%struct.DSOCacheEntry {
		i64 2003530324, ; hash 0x776b7254, from name: libaot-SQLitePCLRaw.provider.e_sqlite3.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 211
	%struct.DSOCacheEntry {
		i64 2012836262, ; hash 0x77f971a6, from name: Plugin.Messaging
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 212
	%struct.DSOCacheEntry {
		i64 2019465201, ; hash 0x785e97f1, from name: Xamarin.AndroidX.Lifecycle.ViewModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 213
	%struct.DSOCacheEntry {
		i64 2029908657, ; hash 0x78fdf2b1, from name: libaot-System.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 214
	%struct.DSOCacheEntry {
		i64 2032767654, ; hash 0x792992a6, from name: libaot-SQLitePCLRaw.batteries_v2.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 215
	%struct.DSOCacheEntry {
		i64 2040762877, ; hash 0x79a391fd, from name: aot-SQLitePCLRaw.lib.e_sqlite3.android
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 216
	%struct.DSOCacheEntry {
		i64 2049385536, ; hash 0x7a272440, from name: libaot-SQLitePCLRaw.provider.e_sqlite3
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 217
	%struct.DSOCacheEntry {
		i64 2059038171, ; hash 0x7aba6ddb, from name: aot-FormsViewGroup.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 218
	%struct.DSOCacheEntry {
		i64 2072997827, ; hash 0x7b8f6fc3, from name: mono-native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 219
	%struct.DSOCacheEntry {
		i64 2093801196, ; hash 0x7cccdeec, from name: libaot-System.Buffers
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 220
	%struct.DSOCacheEntry {
		i64 2097448633, ; hash 0x7d0486b9, from name: Xamarin.AndroidX.Legacy.Support.Core.UI
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 221
	%struct.DSOCacheEntry {
		i64 2119570579, ; hash 0x7e561493, from name: libaot-Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 222
	%struct.DSOCacheEntry {
		i64 2126786730, ; hash 0x7ec430aa, from name: Xamarin.Forms.Platform.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 223
	%struct.DSOCacheEntry {
		i64 2133959981, ; hash 0x7f31a52d, from name: aot-Xamarin.Forms.Xaml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 224
	%struct.DSOCacheEntry {
		i64 2136697686, ; hash 0x7f5b6b56, from name: System.Drawing.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 225
	%struct.DSOCacheEntry {
		i64 2137647171, ; hash 0x7f69e843, from name: aot-Xamarin.Kotlin.StdLib.Jdk7.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 226
	%struct.DSOCacheEntry {
		i64 2146991513, ; hash 0x7ff87d99, from name: aot-eHealth.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 227
	%struct.DSOCacheEntry {
		i64 2162156863, ; hash 0x80dfe53f, from name: libaot-Xamarin.AndroidX.CustomView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 228
	%struct.DSOCacheEntry {
		i64 2191765904, ; hash 0x82a3b190, from name: aot-Plugin.Messaging.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 229
	%struct.DSOCacheEntry {
		i64 2201231467, ; hash 0x8334206b, from name: System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 230
	%struct.DSOCacheEntry {
		i64 2202703254, ; hash 0x834a9596, from name: libaot-SQLitePCLRaw.batteries_v2
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 231
	%struct.DSOCacheEntry {
		i64 2206653028, ; hash 0x8386da64, from name: Xamarin.Jetbrains.Annotations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 232
	%struct.DSOCacheEntry {
		i64 2207812213, ; hash 0x83988a75, from name: aot-Xamarin.Android.Arch.Core.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 233
	%struct.DSOCacheEntry {
		i64 2211380618, ; hash 0x83cefd8a, from name: aot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 234
	%struct.DSOCacheEntry {
		i64 2212031953, ; hash 0x83d8edd1, from name: libaot-System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 235
	%struct.DSOCacheEntry {
		i64 2225927200, ; hash 0x84acf420, from name: libaot-Xamarin.Forms.Platform.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 236
	%struct.DSOCacheEntry {
		i64 2241953027, ; hash 0x85a17d03, from name: libaot-Xamarin.AndroidX.RecyclerView
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 237
	%struct.DSOCacheEntry {
		i64 2254027380, ; hash 0x8659ba74, from name: libaot-System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 238
	%struct.DSOCacheEntry {
		i64 2265178066, ; hash 0x8703dfd2, from name: aot-Xamarin.AndroidX.RecyclerView
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 239
	%struct.DSOCacheEntry {
		i64 2273815310, ; hash 0x8787ab0e, from name: Xamarin.Android.Arch.Core.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 240
	%struct.DSOCacheEntry {
		i64 2282650294, ; hash 0x880e7ab6, from name: aot-Xamarin.AndroidX.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 241
	%struct.DSOCacheEntry {
		i64 2283539775, ; hash 0x881c0d3f, from name: aot-Xamarin.Kotlin.StdLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 242
	%struct.DSOCacheEntry {
		i64 2284562302, ; hash 0x882ba77e, from name: aot-Xamarin.AndroidX.CursorAdapter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 243
	%struct.DSOCacheEntry {
		i64 2300115772, ; hash 0x8918fb3c, from name: aot-Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 244
	%struct.DSOCacheEntry {
		i64 2306217607, ; hash 0x89761687, from name: OxyPlot.Xamarin.Forms
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 245
	%struct.DSOCacheEntry {
		i64 2320123404, ; hash 0x8a4a460c, from name: libaot-OxyPlot.Xamarin.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 246
	%struct.DSOCacheEntry {
		i64 2331676825, ; hash 0x8afa9099, from name: aot-Xamarin.Forms.Platform.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 247
	%struct.DSOCacheEntry {
		i64 2335177614, ; hash 0x8b2ffb8e, from name: aot-OxyPlot.Xamarin.Forms
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 248
	%struct.DSOCacheEntry {
		i64 2350046653, ; hash 0x8c12ddbd, from name: Xamarin.AndroidX.SavedState.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 249
	%struct.DSOCacheEntry {
		i64 2398397622, ; hash 0x8ef4a4b6, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 250
	%struct.DSOCacheEntry {
		i64 2430242750, ; hash 0x90da8fbe, from name: aot-Xamarin.AndroidX.CursorAdapter
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 251
	%struct.DSOCacheEntry {
		i64 2430764428, ; hash 0x90e2858c, from name: libaot-Xamarin.Forms.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 252
	%struct.DSOCacheEntry {
		i64 2431890512, ; hash 0x90f3b450, from name: libaot-System.Data
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 253
	%struct.DSOCacheEntry {
		i64 2438431458, ; hash 0x915782e2, from name: libaot-Xamarin.AndroidX.Activity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 254
	%struct.DSOCacheEntry {
		i64 2440626731, ; hash 0x9179022b, from name: System.ComponentModel.DataAnnotations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 255
	%struct.DSOCacheEntry {
		i64 2460081435, ; hash 0x92a1dd1b, from name: libaot-eHealth.Service
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 256
	%struct.DSOCacheEntry {
		i64 2473115737, ; hash 0x9368c059, from name: Xamarin.KotlinX.Coroutines.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 257
	%struct.DSOCacheEntry {
		i64 2477279789, ; hash 0x93a84a2d, from name: Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 258
	%struct.DSOCacheEntry {
		i64 2483446373, ; hash 0x94066265, from name: libaot-CommunityToolkit.Mvvm.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 259
	%struct.DSOCacheEntry {
		i64 2496112763, ; hash 0x94c7a87b, from name: libmonosgen-2.0
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 260
	%struct.DSOCacheEntry {
		i64 2496313987, ; hash 0x94caba83, from name: FormsViewGroup.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 261
	%struct.DSOCacheEntry {
		i64 2531241668, ; hash 0x96dfaec4, from name: libmono-native
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 262
	%struct.DSOCacheEntry {
		i64 2534951846, ; hash 0x97184ba6, from name: aot-System.ServiceModel.Internals
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 263
	%struct.DSOCacheEntry {
		i64 2550770354, ; hash 0x9809aab2, from name: Xamarin.Google.Guava.ListenableFuture.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 264
	%struct.DSOCacheEntry {
		i64 2568748418, ; hash 0x991bfd82, from name: OxyPlot.Xamarin.Forms.Platform.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 265
	%struct.DSOCacheEntry {
		i64 2577635134, ; hash 0x99a3973e, from name: libaot-SQLitePCLRaw.lib.e_sqlite3.android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 266
	%struct.DSOCacheEntry {
		i64 2586712903, ; hash 0x9a2e1b47, from name: aot-SQLitePCLRaw.lib.e_sqlite3.android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 267
	%struct.DSOCacheEntry {
		i64 2600532591, ; hash 0x9b00fa6f, from name: libaot-Xamarin.Jetbrains.Annotations
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 268
	%struct.DSOCacheEntry {
		i64 2605712449, ; hash 0x9b500441, from name: Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 269
	%struct.DSOCacheEntry {
		i64 2639209874, ; hash 0x9d4f2592, from name: System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 270
	%struct.DSOCacheEntry {
		i64 2658598962, ; hash 0x9e770032, from name: monosgen-2.0.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 271
	%struct.DSOCacheEntry {
		i64 2660798663, ; hash 0x9e9890c7, from name: libaot-System.Runtime.CompilerServices.Unsafe
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 272
	%struct.DSOCacheEntry {
		i64 2663219906, ; hash 0x9ebd82c2, from name: Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 273
	%struct.DSOCacheEntry {
		i64 2670340056, ; hash 0x9f2a27d8, from name: aot-SQLite-net.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 274
	%struct.DSOCacheEntry {
		i64 2689529426, ; hash 0xa04ef652, from name: OxyPlot.Xamarin.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 275
	%struct.DSOCacheEntry {
		i64 2692189915, ; hash 0xa0778edb, from name: libaot-Xamarin.Google.Android.Material.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 276
	%struct.DSOCacheEntry {
		i64 2709717763, ; hash 0xa1830303, from name: aot-Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 277
	%struct.DSOCacheEntry {
		i64 2713623161, ; hash 0xa1be9a79, from name: aot-Xamarin.Google.Android.Material
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 278
	%struct.DSOCacheEntry {
		i64 2732626843, ; hash 0xa2e0939b, from name: Xamarin.AndroidX.Activity
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 279
	%struct.DSOCacheEntry {
		i64 2732977029, ; hash 0xa2e5eb85, from name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 280
	%struct.DSOCacheEntry {
		i64 2734038450, ; hash 0xa2f61db2, from name: aot-Xamarin.Jetbrains.Annotations
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 281
	%struct.DSOCacheEntry {
		i64 2735279357, ; hash 0xa3090cfd, from name: Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 282
	%struct.DSOCacheEntry {
		i64 2746397398, ; hash 0xa3b2b2d6, from name: libaot-Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 283
	%struct.DSOCacheEntry {
		i64 2760088126, ; hash 0xa4839a3e, from name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 284
	%struct.DSOCacheEntry {
		i64 2766581644, ; hash 0xa4e6af8c, from name: Xamarin.Forms.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 285
	%struct.DSOCacheEntry {
		i64 2771312189, ; hash 0xa52ede3d, from name: aot-Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 286
	%struct.DSOCacheEntry {
		i64 2800342568, ; hash 0xa6e9d628, from name: libaot-eHealth.Service.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 287
	%struct.DSOCacheEntry {
		i64 2803929169, ; hash 0xa7209051, from name: Xamarin.AndroidX.CustomView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 288
	%struct.DSOCacheEntry {
		i64 2811640309, ; hash 0xa79639f5, from name: aot-Xamarin.AndroidX.SwipeRefreshLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 289
	%struct.DSOCacheEntry {
		i64 2816977087, ; hash 0xa7e7a8bf, from name: libaot-Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 290
	%struct.DSOCacheEntry {
		i64 2843644522, ; hash 0xa97e926a, from name: libxa-internal-api.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 291
	%struct.DSOCacheEntry {
		i64 2853208004, ; hash 0xaa107fc4, from name: Xamarin.AndroidX.ViewPager
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 292
	%struct.DSOCacheEntry {
		i64 2862676104, ; hash 0xaaa0f888, from name: e_sqlite3.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 293
	%struct.DSOCacheEntry {
		i64 2894204443, ; hash 0xac820e1b, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 294
	%struct.DSOCacheEntry {
		i64 2894936311, ; hash 0xac8d38f7, from name: aot-OxyPlot.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 295
	%struct.DSOCacheEntry {
		i64 2907369062, ; hash 0xad4aee66, from name: libaot-Xamarin.AndroidX.CursorAdapter
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 296
	%struct.DSOCacheEntry {
		i64 2921230731, ; hash 0xae1e718b, from name: aot-Xamarin.AndroidX.Legacy.Support.Core.UI.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 297
	%struct.DSOCacheEntry {
		i64 2932769875, ; hash 0xaece8453, from name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 298
	%struct.DSOCacheEntry {
		i64 2945545151, ; hash 0xaf9173bf, from name: libaot-Xamarin.Jetbrains.Annotations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 299
	%struct.DSOCacheEntry {
		i64 2955414144, ; hash 0xb0280a80, from name: aot-System.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 300
	%struct.DSOCacheEntry {
		i64 2956964934, ; hash 0xb03fb446, from name: Plugin.Messaging.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 301
	%struct.DSOCacheEntry {
		i64 2965141360, ; hash 0xb0bc7770, from name: aot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 302
	%struct.DSOCacheEntry {
		i64 2966982264, ; hash 0xb0d88e78, from name: aot-eHealth.Service
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 303
	%struct.DSOCacheEntry {
		i64 2967395179, ; hash 0xb0dedb6b, from name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 304
	%struct.DSOCacheEntry {
		i64 2974011576, ; hash 0xb143d0b8, from name: aot-Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 305
	%struct.DSOCacheEntry {
		i64 2978675010, ; hash 0xb18af942, from name: Xamarin.AndroidX.DrawerLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 306
	%struct.DSOCacheEntry {
		i64 2980629364, ; hash 0xb1a8cb74, from name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 307
	%struct.DSOCacheEntry {
		i64 2999950842, ; hash 0xb2cf9dfa, from name: aot-Xamarin.Essentials
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 308
	%struct.DSOCacheEntry {
		i64 3010818927, ; hash 0xb375736f, from name: System.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 309
	%struct.DSOCacheEntry {
		i64 3011705742, ; hash 0xb382fb8e, from name: libaot-Xamarin.AndroidX.ViewPager
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 310
	%struct.DSOCacheEntry {
		i64 3025818980, ; hash 0xb45a5564, from name: aot-Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 311
	%struct.DSOCacheEntry {
		i64 3040261996, ; hash 0xb536b76c, from name: aot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 312
	%struct.DSOCacheEntry {
		i64 3044182254, ; hash 0xb57288ee, from name: FormsViewGroup
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 313
	%struct.DSOCacheEntry {
		i64 3056707377, ; hash 0xb631a731, from name: libmono-native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 314
	%struct.DSOCacheEntry {
		i64 3057414224, ; hash 0xb63c7050, from name: aot-Xamarin.Forms.Platform
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 315
	%struct.DSOCacheEntry {
		i64 3063564226, ; hash 0xb69a47c2, from name: libaot-System.Drawing.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 316
	%struct.DSOCacheEntry {
		i64 3074736396, ; hash 0xb744c10c, from name: libaot-System.Runtime.CompilerServices.Unsafe.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 317
	%struct.DSOCacheEntry {
		i64 3085392760, ; hash 0xb7e75b78, from name: OxyPlot
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 318
	%struct.DSOCacheEntry {
		i64 3089352571, ; hash 0xb823c77b, from name: aot-Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 319
	%struct.DSOCacheEntry {
		i64 3095590497, ; hash 0xb882f661, from name: aot-Xamarin.AndroidX.SavedState
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 320
	%struct.DSOCacheEntry {
		i64 3099995434, ; hash 0xb8c62d2a, from name: Xamarin.Kotlin.StdLib.Jdk7.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 321
	%struct.DSOCacheEntry {
		i64 3103429300, ; hash 0xb8fa92b4, from name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 322
	%struct.DSOCacheEntry {
		i64 3111772706, ; hash 0xb979e222, from name: System.Runtime.Serialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 323
	%struct.DSOCacheEntry {
		i64 3118795923, ; hash 0xb9e50c93, from name: aot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 324
	%struct.DSOCacheEntry {
		i64 3119652235, ; hash 0xb9f21d8b, from name: Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 325
	%struct.DSOCacheEntry {
		i64 3137274302, ; hash 0xbaff01be, from name: aot-SQLitePCLRaw.core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 326
	%struct.DSOCacheEntry {
		i64 3155002698, ; hash 0xbc0d854a, from name: aot-eHealth.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 327
	%struct.DSOCacheEntry {
		i64 3162192123, ; hash 0xbc7b38fb, from name: aot-SQLitePCLRaw.batteries_v2.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 328
	%struct.DSOCacheEntry {
		i64 3168090663, ; hash 0xbcd53a27, from name: eHealth.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 329
	%struct.DSOCacheEntry {
		i64 3172961898, ; hash 0xbd1f8e6a, from name: SQLitePCLRaw.lib.e_sqlite3.android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 330
	%struct.DSOCacheEntry {
		i64 3177211174, ; hash 0xbd606526, from name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 331
	%struct.DSOCacheEntry {
		i64 3194979304, ; hash 0xbe6f83e8, from name: aot-Xamarin.AndroidX.ViewPager
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 332
	%struct.DSOCacheEntry {
		i64 3243272429, ; hash 0xc15068ed, from name: aot-System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 333
	%struct.DSOCacheEntry {
		i64 3247949154, ; hash 0xc197c562, from name: Mono.Security
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 334
	%struct.DSOCacheEntry {
		i64 3257332390, ; hash 0xc226f2a6, from name: MvvmHelpers
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 335
	%struct.DSOCacheEntry {
		i64 3258312781, ; hash 0xc235e84d, from name: Xamarin.AndroidX.CardView
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 336
	%struct.DSOCacheEntry {
		i64 3264918285, ; hash 0xc29ab30d, from name: libaot-System.Buffers.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 337
	%struct.DSOCacheEntry {
		i64 3268042121, ; hash 0xc2ca5d89, from name: aot-Xamarin.AndroidX.Loader.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 338
	%struct.DSOCacheEntry {
		i64 3271438092, ; hash 0xc2fe2f0c, from name: libaot-mscorlib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 339
	%struct.DSOCacheEntry {
		i64 3275660490, ; hash 0xc33e9cca, from name: System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 340
	%struct.DSOCacheEntry {
		i64 3285531171, ; hash 0xc3d53a23, from name: libaot-Plugin.Messaging
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 341
	%struct.DSOCacheEntry {
		i64 3310036410, ; hash 0xc54b25ba, from name: System.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 342
	%struct.DSOCacheEntry {
		i64 3315762753, ; hash 0xc5a28641, from name: CommunityToolkit.Mvvm.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 343
	%struct.DSOCacheEntry {
		i64 3317144872, ; hash 0xc5b79d28, from name: System.Data
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 344
	%struct.DSOCacheEntry {
		i64 3319187962, ; hash 0xc5d6c9fa, from name: libaot-MvvmHelpers.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 345
	%struct.DSOCacheEntry {
		i64 3321816931, ; hash 0xc5fee763, from name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 346
	%struct.DSOCacheEntry {
		i64 3322182132, ; hash 0xc60479f4, from name: libmono-btls-shared
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 347
	%struct.DSOCacheEntry {
		i64 3323143848, ; hash 0xc61326a8, from name: aot-Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 348
	%struct.DSOCacheEntry {
		i64 3326599481, ; hash 0xc647e139, from name: aot-SQLitePCLRaw.provider.e_sqlite3
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 349
	%struct.DSOCacheEntry {
		i64 3332970020, ; hash 0xc6a91624, from name: libaot-Xamarin.Kotlin.StdLib.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 350
	%struct.DSOCacheEntry {
		i64 3360279109, ; hash 0xc849ca45, from name: SQLitePCLRaw.core
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 351
	%struct.DSOCacheEntry {
		i64 3362522851, ; hash 0xc86c06e3, from name: Xamarin.AndroidX.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 352
	%struct.DSOCacheEntry {
		i64 3366347497, ; hash 0xc8a662e9, from name: Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 353
	%struct.DSOCacheEntry {
		i64 3368519407, ; hash 0xc8c786ef, from name: aot-SQLite-net
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 354
	%struct.DSOCacheEntry {
		i64 3372075591, ; hash 0xc8fdca47, from name: System.Data.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 355
	%struct.DSOCacheEntry {
		i64 3374999561, ; hash 0xc92a6809, from name: Xamarin.AndroidX.RecyclerView
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 356
	%struct.DSOCacheEntry {
		i64 3394171410, ; hash 0xca4ef212, from name: Xamarin.AndroidX.Activity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 357
	%struct.DSOCacheEntry {
		i64 3400462534, ; hash 0xcaaef0c6, from name: mscorlib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 358
	%struct.DSOCacheEntry {
		i64 3401133733, ; hash 0xcab92ea5, from name: System.Buffers.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 359
	%struct.DSOCacheEntry {
		i64 3401606454, ; hash 0xcac06536, from name: Xamarin.AndroidX.ViewPager.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 360
	%struct.DSOCacheEntry {
		i64 3403922660, ; hash 0xcae3bce4, from name: aot-Xamarin.AndroidX.CardView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 361
	%struct.DSOCacheEntry {
		i64 3404865022, ; hash 0xcaf21dfe, from name: System.ServiceModel.Internals
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 362
	%struct.DSOCacheEntry {
		i64 3410432226, ; hash 0xcb4710e2, from name: aot-CommunityToolkit.Mvvm
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 363
	%struct.DSOCacheEntry {
		i64 3422266863, ; hash 0xcbfba5ef, from name: libmonodroid.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 364
	%struct.DSOCacheEntry {
		i64 3424137995, ; hash 0xcc18330b, from name: Xamarin.Forms.Platform.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 365
	%struct.DSOCacheEntry {
		i64 3429136800, ; hash 0xcc6479a0, from name: System.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 366
	%struct.DSOCacheEntry {
		i64 3452007889, ; hash 0xcdc175d1, from name: libaot-Xamarin.Kotlin.StdLib.Jdk7.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 367
	%struct.DSOCacheEntry {
		i64 3472379724, ; hash 0xcef84f4c, from name: libaot-Xamarin.Android.Arch.Core.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 368
	%struct.DSOCacheEntry {
		i64 3476120550, ; hash 0xcf3163e6, from name: Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 369
	%struct.DSOCacheEntry {
		i64 3488729752, ; hash 0xcff1ca98, from name: aot-Xamarin.KotlinX.Coroutines.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 370
	%struct.DSOCacheEntry {
		i64 3509114376, ; hash 0xd128d608, from name: System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 371
	%struct.DSOCacheEntry {
		i64 3512049971, ; hash 0xd155a133, from name: aot-OxyPlot
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 372
	%struct.DSOCacheEntry {
		i64 3515205765, ; hash 0xd185c885, from name: aot-System.Runtime.CompilerServices.Unsafe
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 373
	%struct.DSOCacheEntry {
		i64 3537663003, ; hash 0xd2dc741b, from name: aot-FormsViewGroup
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 374
	%struct.DSOCacheEntry {
		i64 3557887367, ; hash 0xd4110d87, from name: libaot-System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 375
	%struct.DSOCacheEntry {
		i64 3565226175, ; hash 0xd48108bf, from name: libaot-System.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 376
	%struct.DSOCacheEntry {
		i64 3569135103, ; hash 0xd4bcadff, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 377
	%struct.DSOCacheEntry {
		i64 3572049353, ; hash 0xd4e925c9, from name: libxa-internal-api
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 378
	%struct.DSOCacheEntry {
		i64 3580928879, ; hash 0xd570a36f, from name: aot-Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 379
	%struct.DSOCacheEntry {
		i64 3581103432, ; hash 0xd5734d48, from name: libaot-Xamarin.Kotlin.StdLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 380
	%struct.DSOCacheEntry {
		i64 3582297397, ; hash 0xd5858535, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 381
	%struct.DSOCacheEntry {
		i64 3596578457, ; hash 0xd65f6e99, from name: libaot-Xamarin.Forms.Xaml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 382
	%struct.DSOCacheEntry {
		i64 3629173998, ; hash 0xd850ccee, from name: libaot-mscorlib
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 383
	%struct.DSOCacheEntry {
		i64 3632359727, ; hash 0xd881692f, from name: Xamarin.Forms.Platform
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 384
	%struct.DSOCacheEntry {
		i64 3636393175, ; hash 0xd8bef4d7, from name: libmonodroid
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 385
	%struct.DSOCacheEntry {
		i64 3641597786, ; hash 0xd90e5f5a, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 386
	%struct.DSOCacheEntry {
		i64 3645089577, ; hash 0xd943a729, from name: System.ComponentModel.DataAnnotations
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 387
	%struct.DSOCacheEntry {
		i64 3677509879, ; hash 0xdb3258f7, from name: libe_sqlite3
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 388
	%struct.DSOCacheEntry {
		i64 3684032917, ; hash 0xdb95e195, from name: libaot-Xamarin.AndroidX.SavedState
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 389
	%struct.DSOCacheEntry {
		i64 3689375977, ; hash 0xdbe768e9, from name: System.Drawing.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 390
	%struct.DSOCacheEntry {
		i64 3691770169, ; hash 0xdc0bf139, from name: Xamarin.AndroidX.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 391
	%struct.DSOCacheEntry {
		i64 3693739724, ; hash 0xdc29fecc, from name: aot-Plugin.Messaging
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 392
	%struct.DSOCacheEntry {
		i64 3697838654, ; hash 0xdc688a3e, from name: aot-Plugin.Messaging.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 393
	%struct.DSOCacheEntry {
		i64 3708930120, ; hash 0xdd11c848, from name: libaot-System.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 394
	%struct.DSOCacheEntry {
		i64 3709087552, ; hash 0xdd142f40, from name: libmono-btls-shared.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 395
	%struct.DSOCacheEntry {
		i64 3728689137, ; hash 0xde3f47f1, from name: libaot-SQLite-net.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 396
	%struct.DSOCacheEntry {
		i64 3740114804, ; hash 0xdeed9f74, from name: libe_sqlite3.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 397
	%struct.DSOCacheEntry {
		i64 3748864184, ; hash 0xdf7320b8, from name: libaot-SQLite-net
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 398
	%struct.DSOCacheEntry {
		i64 3754567612, ; hash 0xdfca27bc, from name: SQLitePCLRaw.provider.e_sqlite3
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 399
	%struct.DSOCacheEntry {
		i64 3790421216, ; hash 0xe1ed3ce0, from name: monosgen-2.0
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 400
	%struct.DSOCacheEntry {
		i64 3797100270, ; hash 0xe25326ee, from name: mono-btls-shared.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 401
	%struct.DSOCacheEntry {
		i64 3817984437, ; hash 0xe391d1b5, from name: libmonosgen-2.0.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 402
	%struct.DSOCacheEntry {
		i64 3819351849, ; hash 0xe3a6af29, from name: aot-Plugin.Messaging.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 403
	%struct.DSOCacheEntry {
		i64 3827383881, ; hash 0xe4213e49, from name: Xamarin.AndroidX.Loader.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 404
	%struct.DSOCacheEntry {
		i64 3834273682, ; hash 0xe48a5f92, from name: aot-Xamarin.AndroidX.Legacy.Support.Core.UI
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 405
	%struct.DSOCacheEntry {
		i64 3846225701, ; hash 0xe540bf25, from name: System.ServiceModel.Internals.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 406
	%struct.DSOCacheEntry {
		i64 3852017238, ; hash 0xe5991e56, from name: libaot-Xamarin.KotlinX.Coroutines.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 407
	%struct.DSOCacheEntry {
		i64 3876362041, ; hash 0xe70c9739, from name: SQLite-net
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 408
	%struct.DSOCacheEntry {
		i64 3882710139, ; hash 0xe76d747b, from name: aot-Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 409
	%struct.DSOCacheEntry {
		i64 3891366301, ; hash 0xe7f1899d, from name: aot-System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 410
	%struct.DSOCacheEntry {
		i64 3914637484, ; hash 0xe954a0ac, from name: aot-Xamarin.Kotlin.StdLib.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 411
	%struct.DSOCacheEntry {
		i64 3921675143, ; hash 0xe9c00387, from name: OxyPlot.Xamarin.Forms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 412
	%struct.DSOCacheEntry {
		i64 3925540133, ; hash 0xe9fafd25, from name: OxyPlot.Xamarin.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 413
	%struct.DSOCacheEntry {
		i64 3934808307, ; hash 0xea8868f3, from name: libaot-Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 414
	%struct.DSOCacheEntry {
		i64 3936467727, ; hash 0xeaa1bb0f, from name: libaot-Xamarin.AndroidX.CardView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 415
	%struct.DSOCacheEntry {
		i64 3943669303, ; hash 0xeb0f9e37, from name: libaot-Xamarin.Forms.Platform
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 416
	%struct.DSOCacheEntry {
		i64 3964563519, ; hash 0xec4e703f, from name: aot-Xamarin.Kotlin.StdLib.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 417
	%struct.DSOCacheEntry {
		i64 3972603866, ; hash 0xecc91fda, from name: aot-System.ComponentModel.DataAnnotations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 418
	%struct.DSOCacheEntry {
		i64 3977122455, ; hash 0xed0e1297, from name: libaot-Xamarin.Essentials
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 419
	%struct.DSOCacheEntry {
		i64 3977774780, ; hash 0xed1806bc, from name: SQLitePCLRaw.provider.e_sqlite3.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 420
	%struct.DSOCacheEntry {
		i64 3981335187, ; hash 0xed4e5a93, from name: aot-Xamarin.Kotlin.StdLib.Jdk8
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 421
	%struct.DSOCacheEntry {
		i64 3983604604, ; hash 0xed70fb7c, from name: aot-Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 422
	%struct.DSOCacheEntry {
		i64 3991557191, ; hash 0xedea5447, from name: aot-System.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 423
	%struct.DSOCacheEntry {
		i64 3993813431, ; hash 0xee0cc1b7, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 424
	%struct.DSOCacheEntry {
		i64 4008891760, ; hash 0xeef2d570, from name: Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 425
	%struct.DSOCacheEntry {
		i64 4027140892, ; hash 0xf0094b1c, from name: libaot-Xamarin.AndroidX.SwipeRefreshLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 426
	%struct.DSOCacheEntry {
		i64 4031292811, ; hash 0xf048a58b, from name: Xamarin.AndroidX.CardView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 427
	%struct.DSOCacheEntry {
		i64 4046097104, ; hash 0xf12a8ad0, from name: aot-System.ServiceModel.Internals.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 428
	%struct.DSOCacheEntry {
		i64 4078052095, ; hash 0xf31222ff, from name: aot-MvvmHelpers
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 429
	%struct.DSOCacheEntry {
		i64 4096908256, ; hash 0xf431dbe0, from name: libaot-OxyPlot.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 430
	%struct.DSOCacheEntry {
		i64 4112220824, ; hash 0xf51b8298, from name: aot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 431
	%struct.DSOCacheEntry {
		i64 4113193990, ; hash 0xf52a5c06, from name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 432
	%struct.DSOCacheEntry {
		i64 4138419450, ; hash 0xf6ab44fa, from name: eHealth.Service.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 433
	%struct.DSOCacheEntry {
		i64 4147491756, ; hash 0xf735b3ac, from name: Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 434
	%struct.DSOCacheEntry {
		i64 4151237749, ; hash 0xf76edc75, from name: System.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 435
	%struct.DSOCacheEntry {
		i64 4154531413, ; hash 0xf7a11e55, from name: aot-System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 436
	%struct.DSOCacheEntry {
		i64 4169082996, ; hash 0xf87f2874, from name: libaot-Xamarin.AndroidX.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 437
	%struct.DSOCacheEntry {
		i64 4194540683, ; hash 0xfa039c8b, from name: libaot-eHealth.Data
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 438
	%struct.DSOCacheEntry {
		i64 4198755985, ; hash 0xfa43ee91, from name: aot-Xamarin.AndroidX.CardView
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 439
	%struct.DSOCacheEntry {
		i64 4202493026, ; hash 0xfa7cf462, from name: libaot-System.Data.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 440
	%struct.DSOCacheEntry {
		i64 4211594847, ; hash 0xfb07d65f, from name: aot-OxyPlot.Xamarin.Forms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 441
	%struct.DSOCacheEntry {
		i64 4216688043, ; hash 0xfb558dab, from name: aot-System.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 442
	%struct.DSOCacheEntry {
		i64 4232473218, ; hash 0xfc466a82, from name: libaot-Plugin.Messaging.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 443
	%struct.DSOCacheEntry {
		i64 4237126350, ; hash 0xfc8d6ace, from name: OxyPlot.Xamarin.Forms.Platform.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 444
	%struct.DSOCacheEntry {
		i64 4245699859, ; hash 0xfd103d13, from name: eHealth.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 445
	%struct.DSOCacheEntry {
		i64 4247391487, ; hash 0xfd2a0cff, from name: libaot-SQLitePCLRaw.core
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 446
	%struct.DSOCacheEntry {
		i64 4260525087, ; hash 0xfdf2741f, from name: System.Buffers
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 447
	%struct.DSOCacheEntry {
		i64 4264013839, ; hash 0xfe27b00f, from name: libaot-System.Runtime.Serialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 448
	%struct.DSOCacheEntry {
		i64 4283447791, ; hash 0xff5039ef, from name: aot-SQLitePCLRaw.core
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 449
	%struct.DSOCacheEntry {
		i64 4294570506, ; hash 0xfff9f20a, from name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}
], align 8; end of 'dso_cache' array


; Bundled assembly name buffers, all 0 bytes long
@bundled_assemblies = local_unnamed_addr global [0 x %struct.XamarinAndroidBundledAssembly] zeroinitializer, align 4


; Assembly store individual assembly data
@assembly_store_bundled_assemblies = local_unnamed_addr global [70 x %struct.AssemblyStoreSingleAssemblyRuntimeData] zeroinitializer, align 4

; Assembly store data
@assembly_stores = local_unnamed_addr global [2 x %struct.AssemblyStoreRuntimeData] zeroinitializer, align 4

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
