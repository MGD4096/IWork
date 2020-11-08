	.arch	armv7-a
	.syntax unified
	.eabi_attribute 67, "2.09"	@ Tag_conformance
	.eabi_attribute 6, 10	@ Tag_CPU_arch
	.eabi_attribute 7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute 8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute 9, 2	@ Tag_THUMB_ISA_use
	.fpu	vfpv3-d16
	.eabi_attribute 34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute 15, 1	@ Tag_ABI_PCS_RW_data
	.eabi_attribute 16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute 17, 2	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute 20, 2	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute 38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 14, 0	@ Tag_ABI_PCS_R9_use
	.file	"typemaps.armeabi-v7a.s"

/* map_module_count: START */
	.section	.rodata.map_module_count,"a",%progbits
	.type	map_module_count, %object
	.p2align	2
	.global	map_module_count
map_module_count:
	.size	map_module_count, 4
	.long	12
/* map_module_count: END */

/* java_type_count: START */
	.section	.rodata.java_type_count,"a",%progbits
	.type	java_type_count, %object
	.p2align	2
	.global	java_type_count
java_type_count:
	.size	java_type_count, 4
	.long	332
/* java_type_count: END */

/* java_name_width: START */
	.section	.rodata.java_name_width,"a",%progbits
	.type	java_name_width, %object
	.p2align	2
	.global	java_name_width
java_name_width:
	.size	java_name_width, 4
	.long	102
/* java_name_width: END */

	.include	"typemaps.armeabi-v7a-shared.inc"
	.include	"typemaps.armeabi-v7a-managed.inc"

/* Managed to Java map: START */
	.section	.data.rel.map_modules,"aw",%progbits
	.type	map_modules, %object
	.p2align	2
	.global	map_modules
map_modules:
	/* module_uuid: 5b459123-67cc-484d-8df8-7210de5e32a8 */
	.byte	0x23, 0x91, 0x45, 0x5b, 0xcc, 0x67, 0x4d, 0x48, 0x8d, 0xf8, 0x72, 0x10, 0xde, 0x5e, 0x32, 0xa8
	/* entry_count */
	.long	9
	/* duplicate_count */
	.long	3
	/* map */
	.long	module0_managed_to_java
	/* duplicate_map */
	.long	module0_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Fragment */
	.long	.L.map_aname.0
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 296d8d24-ffe1-441d-8cd6-5fe80675e5a0 */
	.byte	0x24, 0x8d, 0x6d, 0x29, 0xe1, 0xff, 0x1d, 0x44, 0x8c, 0xd6, 0x5f, 0xe8, 0x06, 0x75, 0xe5, 0xa0
	/* entry_count */
	.long	1
	/* duplicate_count */
	.long	0
	/* map */
	.long	module1_managed_to_java
	/* duplicate_map */
	.long	0
	/* assembly_name: Xamarin.Essentials */
	.long	.L.map_aname.1
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: a49fa926-88ae-4b5c-a62c-31fd6ec6612a */
	.byte	0x26, 0xa9, 0x9f, 0xa4, 0xae, 0x88, 0x5c, 0x4b, 0xa6, 0x2c, 0x31, 0xfd, 0x6e, 0xc6, 0x61, 0x2a
	/* entry_count */
	.long	20
	/* duplicate_count */
	.long	2
	/* map */
	.long	module2_managed_to_java
	/* duplicate_map */
	.long	module2_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Compat */
	.long	.L.map_aname.2
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 0d469737-7cab-4b5d-9e93-be53a4f30d70 */
	.byte	0x37, 0x97, 0x46, 0x0d, 0xab, 0x7c, 0x5d, 0x4b, 0x9e, 0x93, 0xbe, 0x53, 0xa4, 0xf3, 0x0d, 0x70
	/* entry_count */
	.long	3
	/* duplicate_count */
	.long	0
	/* map */
	.long	module3_managed_to_java
	/* duplicate_map */
	.long	0
	/* assembly_name: Xamarin.Android.Support.DrawerLayout */
	.long	.L.map_aname.3
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: b8133439-8cc7-4079-a9a3-fd61f42c670b */
	.byte	0x39, 0x34, 0x13, 0xb8, 0xc7, 0x8c, 0x79, 0x40, 0xa9, 0xa3, 0xfd, 0x61, 0xf4, 0x2c, 0x67, 0x0b
	/* entry_count */
	.long	5
	/* duplicate_count */
	.long	1
	/* map */
	.long	module4_managed_to_java
	/* duplicate_map */
	.long	module4_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Loader */
	.long	.L.map_aname.4
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: d0906070-920c-4ebd-a390-173ac972b67c */
	.byte	0x70, 0x60, 0x90, 0xd0, 0x0c, 0x92, 0xbd, 0x4e, 0xa3, 0x90, 0x17, 0x3a, 0xc9, 0x72, 0xb6, 0x7c
	/* entry_count */
	.long	2
	/* duplicate_count */
	.long	1
	/* map */
	.long	module5_managed_to_java
	/* duplicate_map */
	.long	module5_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.LiveData.Core */
	.long	.L.map_aname.5
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 45e90e91-77f7-4a27-9fb9-be74da77378a */
	.byte	0x91, 0x0e, 0xe9, 0x45, 0xf7, 0x77, 0x27, 0x4a, 0x9f, 0xb9, 0xbe, 0x74, 0xda, 0x77, 0x37, 0x8a
	/* entry_count */
	.long	246
	/* duplicate_count */
	.long	44
	/* map */
	.long	module6_managed_to_java
	/* duplicate_map */
	.long	module6_managed_to_java_duplicates
	/* assembly_name: Mono.Android */
	.long	.L.map_aname.6
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: e72e94a8-8df9-49d3-b1ab-0ab743fc2949 */
	.byte	0xa8, 0x94, 0x2e, 0xe7, 0xf9, 0x8d, 0xd3, 0x49, 0xb1, 0xab, 0x0a, 0xb7, 0x43, 0xfc, 0x29, 0x49
	/* entry_count */
	.long	30
	/* duplicate_count */
	.long	4
	/* map */
	.long	module7_managed_to_java
	/* duplicate_map */
	.long	module7_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.v7.AppCompat */
	.long	.L.map_aname.7
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: e916bac1-486f-48a8-8490-54b374811f24 */
	.byte	0xc1, 0xba, 0x16, 0xe9, 0x6f, 0x48, 0xa8, 0x48, 0x84, 0x90, 0x54, 0xb3, 0x74, 0x81, 0x1f, 0x24
	/* entry_count */
	.long	5
	/* duplicate_count */
	.long	0
	/* map */
	.long	module8_managed_to_java
	/* duplicate_map */
	.long	0
	/* assembly_name: Xamarin.Android.Support.Design */
	.long	.L.map_aname.8
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 6ab406c2-7f04-4088-b058-2ed5df66c238 */
	.byte	0xc2, 0x06, 0xb4, 0x6a, 0x04, 0x7f, 0x88, 0x40, 0xb0, 0x58, 0x2e, 0xd5, 0xdf, 0x66, 0xc2, 0x38
	/* entry_count */
	.long	4
	/* duplicate_count */
	.long	1
	/* map */
	.long	module9_managed_to_java
	/* duplicate_map */
	.long	module9_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.Common */
	.long	.L.map_aname.9
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 6cc1b5ce-b46a-46f9-8c9d-11768d835795 */
	.byte	0xce, 0xb5, 0xc1, 0x6c, 0x6a, 0xb4, 0xf9, 0x46, 0x8c, 0x9d, 0x11, 0x76, 0x8d, 0x83, 0x57, 0x95
	/* entry_count */
	.long	5
	/* duplicate_count */
	.long	0
	/* map */
	.long	module10_managed_to_java
	/* duplicate_map */
	.long	0
	/* assembly_name: IWork */
	.long	.L.map_aname.10
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: e4048fd9-f99b-4e68-ab20-4fc1fb513337 */
	.byte	0xd9, 0x8f, 0x04, 0xe4, 0x9b, 0xf9, 0x68, 0x4e, 0xab, 0x20, 0x4f, 0xc1, 0xfb, 0x51, 0x33, 0x37
	/* entry_count */
	.long	2
	/* duplicate_count */
	.long	0
	/* map */
	.long	module11_managed_to_java
	/* duplicate_map */
	.long	0
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.ViewModel */
	.long	.L.map_aname.11
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	.size	map_modules, 576
/* Managed to Java map: END */

/* Java to managed map: START */
	.section	.rodata.map_java,"a",%progbits
	.type	map_java, %object
	.p2align	2
	.global	map_java
map_java:
	/* #0 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554760
	/* java_name */
	.ascii	"android/animation/Animator"
	.zero	76

	/* #1 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554762
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorListener"
	.zero	59

	/* #2 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554764
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorPauseListener"
	.zero	54

	/* #3 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554766
	/* java_name */
	.ascii	"android/animation/AnimatorListenerAdapter"
	.zero	61

	/* #4 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554769
	/* java_name */
	.ascii	"android/animation/TimeInterpolator"
	.zero	68

	/* #5 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554771
	/* java_name */
	.ascii	"android/app/Activity"
	.zero	82

	/* #6 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554772
	/* java_name */
	.ascii	"android/app/Application"
	.zero	79

	/* #7 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554774
	/* java_name */
	.ascii	"android/app/Application$ActivityLifecycleCallbacks"
	.zero	52

	/* #8 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554775
	/* java_name */
	.ascii	"android/app/Dialog"
	.zero	84

	/* #9 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554780
	/* java_name */
	.ascii	"android/app/PendingIntent"
	.zero	77

	/* #10 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554435
	/* java_name */
	.ascii	"android/arch/lifecycle/Lifecycle"
	.zero	70

	/* #11 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554436
	/* java_name */
	.ascii	"android/arch/lifecycle/Lifecycle$State"
	.zero	64

	/* #12 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554438
	/* java_name */
	.ascii	"android/arch/lifecycle/LifecycleObserver"
	.zero	62

	/* #13 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554440
	/* java_name */
	.ascii	"android/arch/lifecycle/LifecycleOwner"
	.zero	65

	/* #14 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"android/arch/lifecycle/LiveData"
	.zero	71

	/* #15 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554436
	/* java_name */
	.ascii	"android/arch/lifecycle/Observer"
	.zero	71

	/* #16 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"android/arch/lifecycle/ViewModelStore"
	.zero	65

	/* #17 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554436
	/* java_name */
	.ascii	"android/arch/lifecycle/ViewModelStoreOwner"
	.zero	60

	/* #18 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554790
	/* java_name */
	.ascii	"android/content/ComponentCallbacks"
	.zero	68

	/* #19 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554792
	/* java_name */
	.ascii	"android/content/ComponentCallbacks2"
	.zero	67

	/* #20 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554785
	/* java_name */
	.ascii	"android/content/ComponentName"
	.zero	73

	/* #21 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554782
	/* java_name */
	.ascii	"android/content/Context"
	.zero	79

	/* #22 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554787
	/* java_name */
	.ascii	"android/content/ContextWrapper"
	.zero	72

	/* #23 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554794
	/* java_name */
	.ascii	"android/content/DialogInterface"
	.zero	71

	/* #24 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554783
	/* java_name */
	.ascii	"android/content/Intent"
	.zero	80

	/* #25 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554795
	/* java_name */
	.ascii	"android/content/IntentFilter"
	.zero	74

	/* #26 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554796
	/* java_name */
	.ascii	"android/content/IntentSender"
	.zero	74

	/* #27 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554802
	/* java_name */
	.ascii	"android/content/SharedPreferences"
	.zero	69

	/* #28 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554798
	/* java_name */
	.ascii	"android/content/SharedPreferences$Editor"
	.zero	62

	/* #29 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554800
	/* java_name */
	.ascii	"android/content/SharedPreferences$OnSharedPreferenceChangeListener"
	.zero	36

	/* #30 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554804
	/* java_name */
	.ascii	"android/content/pm/PackageInfo"
	.zero	72

	/* #31 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554806
	/* java_name */
	.ascii	"android/content/pm/PackageManager"
	.zero	69

	/* #32 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554809
	/* java_name */
	.ascii	"android/content/res/ColorStateList"
	.zero	68

	/* #33 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554810
	/* java_name */
	.ascii	"android/content/res/Configuration"
	.zero	69

	/* #34 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554811
	/* java_name */
	.ascii	"android/content/res/Resources"
	.zero	73

	/* #35 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554812
	/* java_name */
	.ascii	"android/content/res/Resources$Theme"
	.zero	67

	/* #36 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554584
	/* java_name */
	.ascii	"android/database/DataSetObserver"
	.zero	70

	/* #37 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554747
	/* java_name */
	.ascii	"android/graphics/Canvas"
	.zero	79

	/* #38 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554748
	/* java_name */
	.ascii	"android/graphics/ColorFilter"
	.zero	74

	/* #39 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554749
	/* java_name */
	.ascii	"android/graphics/Matrix"
	.zero	79

	/* #40 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554750
	/* java_name */
	.ascii	"android/graphics/Paint"
	.zero	80

	/* #41 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554751
	/* java_name */
	.ascii	"android/graphics/Point"
	.zero	80

	/* #42 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554752
	/* java_name */
	.ascii	"android/graphics/PorterDuff"
	.zero	75

	/* #43 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554753
	/* java_name */
	.ascii	"android/graphics/PorterDuff$Mode"
	.zero	70

	/* #44 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554754
	/* java_name */
	.ascii	"android/graphics/Rect"
	.zero	81

	/* #45 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554755
	/* java_name */
	.ascii	"android/graphics/RectF"
	.zero	80

	/* #46 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554756
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable"
	.zero	68

	/* #47 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554758
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable$Callback"
	.zero	59

	/* #48 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554744
	/* java_name */
	.ascii	"android/net/Uri"
	.zero	87

	/* #49 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554580
	/* java_name */
	.ascii	"android/nfc/NdefMessage"
	.zero	79

	/* #50 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554581
	/* java_name */
	.ascii	"android/nfc/NdefRecord"
	.zero	80

	/* #51 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554582
	/* java_name */
	.ascii	"android/nfc/NfcAdapter"
	.zero	80

	/* #52 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554583
	/* java_name */
	.ascii	"android/nfc/Tag"
	.zero	87

	/* #53 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554732
	/* java_name */
	.ascii	"android/os/BaseBundle"
	.zero	81

	/* #54 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554733
	/* java_name */
	.ascii	"android/os/Build"
	.zero	86

	/* #55 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554734
	/* java_name */
	.ascii	"android/os/Build$VERSION"
	.zero	78

	/* #56 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554736
	/* java_name */
	.ascii	"android/os/Bundle"
	.zero	85

	/* #57 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554731
	/* java_name */
	.ascii	"android/os/Handler"
	.zero	84

	/* #58 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554741
	/* java_name */
	.ascii	"android/os/Looper"
	.zero	85

	/* #59 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554742
	/* java_name */
	.ascii	"android/os/Parcel"
	.zero	85

	/* #60 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554740
	/* java_name */
	.ascii	"android/os/Parcelable"
	.zero	81

	/* #61 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554738
	/* java_name */
	.ascii	"android/os/Parcelable$Creator"
	.zero	73

	/* #62 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554730
	/* java_name */
	.ascii	"android/preference/PreferenceManager"
	.zero	66

	/* #63 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554858
	/* java_name */
	.ascii	"android/runtime/JavaProxyThrowable"
	.zero	68

	/* #64 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554435
	/* java_name */
	.ascii	"android/support/design/widget/BottomNavigationView"
	.zero	52

	/* #65 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"android/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener"
	.zero	17

	/* #66 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554441
	/* java_name */
	.ascii	"android/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener"
	.zero	19

	/* #67 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554435
	/* java_name */
	.ascii	"android/support/v13/view/DragAndDropPermissionsCompat"
	.zero	49

	/* #68 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554460
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat"
	.zero	65

	/* #69 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554462
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback"
	.zero	30

	/* #70 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554464
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$PermissionCompatDelegate"
	.zero	40

	/* #71 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554466
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator"
	.zero	26

	/* #72 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554436
	/* java_name */
	.ascii	"android/support/v4/app/Fragment"
	.zero	71

	/* #73 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"android/support/v4/app/Fragment$SavedState"
	.zero	60

	/* #74 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554435
	/* java_name */
	.ascii	"android/support/v4/app/FragmentActivity"
	.zero	63

	/* #75 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554438
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager"
	.zero	64

	/* #76 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554440
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$BackStackEntry"
	.zero	49

	/* #77 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554441
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks"
	.zero	37

	/* #78 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554444
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$OnBackStackChangedListener"
	.zero	37

	/* #79 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554449
	/* java_name */
	.ascii	"android/support/v4/app/FragmentTransaction"
	.zero	60

	/* #80 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554440
	/* java_name */
	.ascii	"android/support/v4/app/LoaderManager"
	.zero	66

	/* #81 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554442
	/* java_name */
	.ascii	"android/support/v4/app/LoaderManager$LoaderCallbacks"
	.zero	50

	/* #82 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554467
	/* java_name */
	.ascii	"android/support/v4/app/SharedElementCallback"
	.zero	58

	/* #83 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554469
	/* java_name */
	.ascii	"android/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener"
	.zero	28

	/* #84 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554471
	/* java_name */
	.ascii	"android/support/v4/app/TaskStackBuilder"
	.zero	63

	/* #85 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554473
	/* java_name */
	.ascii	"android/support/v4/app/TaskStackBuilder$SupportParentable"
	.zero	45

	/* #86 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554459
	/* java_name */
	.ascii	"android/support/v4/content/ContextCompat"
	.zero	62

	/* #87 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554435
	/* java_name */
	.ascii	"android/support/v4/content/Loader"
	.zero	69

	/* #88 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"android/support/v4/content/Loader$OnLoadCanceledListener"
	.zero	46

	/* #89 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554439
	/* java_name */
	.ascii	"android/support/v4/content/Loader$OnLoadCompleteListener"
	.zero	46

	/* #90 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554456
	/* java_name */
	.ascii	"android/support/v4/internal/view/SupportMenu"
	.zero	58

	/* #91 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554458
	/* java_name */
	.ascii	"android/support/v4/internal/view/SupportMenuItem"
	.zero	54

	/* #92 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554436
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider"
	.zero	64

	/* #93 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554438
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider$SubUiVisibilityListener"
	.zero	40

	/* #94 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554442
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider$VisibilityListener"
	.zero	45

	/* #95 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554454
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorCompat"
	.zero	52

	/* #96 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554451
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorListener"
	.zero	50

	/* #97 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554453
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorUpdateListener"
	.zero	44

	/* #98 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554435
	/* java_name */
	.ascii	"android/support/v4/widget/DrawerLayout"
	.zero	64

	/* #99 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"android/support/v4/widget/DrawerLayout$DrawerListener"
	.zero	49

	/* #100 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554436
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar"
	.zero	70

	/* #101 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$LayoutParams"
	.zero	57

	/* #102 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554439
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$OnMenuVisibilityListener"
	.zero	45

	/* #103 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554443
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$OnNavigationListener"
	.zero	49

	/* #104 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554444
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$Tab"
	.zero	66

	/* #105 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554447
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$TabListener"
	.zero	58

	/* #106 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554451
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle"
	.zero	58

	/* #107 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554453
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle$Delegate"
	.zero	49

	/* #108 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554455
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle$DelegateProvider"
	.zero	41

	/* #109 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554456
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatActivity"
	.zero	62

	/* #110 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554460
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatCallback"
	.zero	62

	/* #111 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554457
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatDelegate"
	.zero	62

	/* #112 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554435
	/* java_name */
	.ascii	"android/support/v7/graphics/drawable/DrawerArrowDrawable"
	.zero	46

	/* #113 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554474
	/* java_name */
	.ascii	"android/support/v7/view/ActionMode"
	.zero	68

	/* #114 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554476
	/* java_name */
	.ascii	"android/support/v7/view/ActionMode$Callback"
	.zero	59

	/* #115 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554478
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuBuilder"
	.zero	62

	/* #116 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554480
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuBuilder$Callback"
	.zero	53

	/* #117 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554487
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuItemImpl"
	.zero	61

	/* #118 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554484
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuPresenter"
	.zero	60

	/* #119 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554482
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuPresenter$Callback"
	.zero	51

	/* #120 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554486
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuView"
	.zero	65

	/* #121 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554488
	/* java_name */
	.ascii	"android/support/v7/view/menu/SubMenuBuilder"
	.zero	59

	/* #122 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554471
	/* java_name */
	.ascii	"android/support/v7/widget/DecorToolbar"
	.zero	64

	/* #123 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554472
	/* java_name */
	.ascii	"android/support/v7/widget/ScrollingTabContainerView"
	.zero	51

	/* #124 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554473
	/* java_name */
	.ascii	"android/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener"
	.zero	28

	/* #125 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554461
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar"
	.zero	69

	/* #126 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554465
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar$OnMenuItemClickListener"
	.zero	45

	/* #127 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554462
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar_NavigationOnClickEventDispatcher"
	.zero	36

	/* #128 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554712
	/* java_name */
	.ascii	"android/text/Editable"
	.zero	81

	/* #129 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554715
	/* java_name */
	.ascii	"android/text/GetChars"
	.zero	81

	/* #130 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554718
	/* java_name */
	.ascii	"android/text/InputFilter"
	.zero	78

	/* #131 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554720
	/* java_name */
	.ascii	"android/text/NoCopySpan"
	.zero	79

	/* #132 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554722
	/* java_name */
	.ascii	"android/text/Spannable"
	.zero	80

	/* #133 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554725
	/* java_name */
	.ascii	"android/text/Spanned"
	.zero	82

	/* #134 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554728
	/* java_name */
	.ascii	"android/text/TextWatcher"
	.zero	78

	/* #135 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554709
	/* java_name */
	.ascii	"android/util/AttributeSet"
	.zero	77

	/* #136 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554707
	/* java_name */
	.ascii	"android/util/DisplayMetrics"
	.zero	75

	/* #137 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554706
	/* java_name */
	.ascii	"android/util/Log"
	.zero	86

	/* #138 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554710
	/* java_name */
	.ascii	"android/util/SparseArray"
	.zero	78

	/* #139 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554644
	/* java_name */
	.ascii	"android/view/ActionMode"
	.zero	79

	/* #140 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554646
	/* java_name */
	.ascii	"android/view/ActionMode$Callback"
	.zero	70

	/* #141 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554649
	/* java_name */
	.ascii	"android/view/ActionProvider"
	.zero	75

	/* #142 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554658
	/* java_name */
	.ascii	"android/view/ContextMenu"
	.zero	78

	/* #143 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554656
	/* java_name */
	.ascii	"android/view/ContextMenu$ContextMenuInfo"
	.zero	62

	/* #144 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554651
	/* java_name */
	.ascii	"android/view/ContextThemeWrapper"
	.zero	70

	/* #145 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554652
	/* java_name */
	.ascii	"android/view/Display"
	.zero	82

	/* #146 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554653
	/* java_name */
	.ascii	"android/view/DragEvent"
	.zero	80

	/* #147 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554667
	/* java_name */
	.ascii	"android/view/InputEvent"
	.zero	79

	/* #148 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554625
	/* java_name */
	.ascii	"android/view/KeyEvent"
	.zero	81

	/* #149 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554627
	/* java_name */
	.ascii	"android/view/KeyEvent$Callback"
	.zero	72

	/* #150 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554628
	/* java_name */
	.ascii	"android/view/LayoutInflater"
	.zero	75

	/* #151 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554630
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory"
	.zero	67

	/* #152 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554632
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory2"
	.zero	66

	/* #153 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554660
	/* java_name */
	.ascii	"android/view/Menu"
	.zero	85

	/* #154 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554682
	/* java_name */
	.ascii	"android/view/MenuInflater"
	.zero	77

	/* #155 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554666
	/* java_name */
	.ascii	"android/view/MenuItem"
	.zero	81

	/* #156 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554662
	/* java_name */
	.ascii	"android/view/MenuItem$OnActionExpandListener"
	.zero	58

	/* #157 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554664
	/* java_name */
	.ascii	"android/view/MenuItem$OnMenuItemClickListener"
	.zero	57

	/* #158 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554633
	/* java_name */
	.ascii	"android/view/MotionEvent"
	.zero	78

	/* #159 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554685
	/* java_name */
	.ascii	"android/view/SearchEvent"
	.zero	78

	/* #160 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554670
	/* java_name */
	.ascii	"android/view/SubMenu"
	.zero	82

	/* #161 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554617
	/* java_name */
	.ascii	"android/view/View"
	.zero	85

	/* #162 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554619
	/* java_name */
	.ascii	"android/view/View$OnClickListener"
	.zero	69

	/* #163 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554622
	/* java_name */
	.ascii	"android/view/View$OnCreateContextMenuListener"
	.zero	57

	/* #164 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554689
	/* java_name */
	.ascii	"android/view/ViewGroup"
	.zero	80

	/* #165 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554690
	/* java_name */
	.ascii	"android/view/ViewGroup$LayoutParams"
	.zero	67

	/* #166 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554691
	/* java_name */
	.ascii	"android/view/ViewGroup$MarginLayoutParams"
	.zero	61

	/* #167 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554672
	/* java_name */
	.ascii	"android/view/ViewManager"
	.zero	78

	/* #168 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554674
	/* java_name */
	.ascii	"android/view/ViewParent"
	.zero	79

	/* #169 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554693
	/* java_name */
	.ascii	"android/view/ViewPropertyAnimator"
	.zero	69

	/* #170 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554634
	/* java_name */
	.ascii	"android/view/ViewTreeObserver"
	.zero	73

	/* #171 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554636
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnGlobalLayoutListener"
	.zero	50

	/* #172 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554638
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnPreDrawListener"
	.zero	55

	/* #173 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554640
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnTouchModeChangeListener"
	.zero	47

	/* #174 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554641
	/* java_name */
	.ascii	"android/view/Window"
	.zero	83

	/* #175 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554643
	/* java_name */
	.ascii	"android/view/Window$Callback"
	.zero	74

	/* #176 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554677
	/* java_name */
	.ascii	"android/view/WindowManager"
	.zero	76

	/* #177 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554675
	/* java_name */
	.ascii	"android/view/WindowManager$LayoutParams"
	.zero	63

	/* #178 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554699
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEvent"
	.zero	57

	/* #179 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554705
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEventSource"
	.zero	51

	/* #180 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554700
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityRecord"
	.zero	56

	/* #181 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554695
	/* java_name */
	.ascii	"android/view/animation/Animation"
	.zero	70

	/* #182 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554698
	/* java_name */
	.ascii	"android/view/animation/Interpolator"
	.zero	67

	/* #183 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554586
	/* java_name */
	.ascii	"android/widget/AbsListView"
	.zero	76

	/* #184 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554607
	/* java_name */
	.ascii	"android/widget/Adapter"
	.zero	80

	/* #185 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554588
	/* java_name */
	.ascii	"android/widget/AdapterView"
	.zero	76

	/* #186 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554590
	/* java_name */
	.ascii	"android/widget/AdapterView$OnItemSelectedListener"
	.zero	53

	/* #187 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/widget/ArrayAdapter"
	.zero	75

	/* #188 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554597
	/* java_name */
	.ascii	"android/widget/BaseAdapter"
	.zero	76

	/* #189 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554599
	/* java_name */
	.ascii	"android/widget/Button"
	.zero	81

	/* #190 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554600
	/* java_name */
	.ascii	"android/widget/Filter"
	.zero	81

	/* #191 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554602
	/* java_name */
	.ascii	"android/widget/Filter$FilterListener"
	.zero	66

	/* #192 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554609
	/* java_name */
	.ascii	"android/widget/Filterable"
	.zero	77

	/* #193 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554604
	/* java_name */
	.ascii	"android/widget/FrameLayout"
	.zero	76

	/* #194 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554605
	/* java_name */
	.ascii	"android/widget/HorizontalScrollView"
	.zero	67

	/* #195 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554611
	/* java_name */
	.ascii	"android/widget/ListAdapter"
	.zero	76

	/* #196 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554616
	/* java_name */
	.ascii	"android/widget/ListView"
	.zero	79

	/* #197 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554613
	/* java_name */
	.ascii	"android/widget/SpinnerAdapter"
	.zero	73

	/* #198 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554593
	/* java_name */
	.ascii	"android/widget/TextView"
	.zero	79

	/* #199 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554594
	/* java_name */
	.ascii	"android/widget/TextView$BufferType"
	.zero	68

	/* #200 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554615
	/* java_name */
	.ascii	"android/widget/ThemedSpinnerAdapter"
	.zero	67

	/* #201 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554448
	/* java_name */
	.ascii	"crc64a0e0a82d0db9a07d/ActivityLifecycleContextListener"
	.zero	48

	/* #202 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554435
	/* java_name */
	.ascii	"crc64a3a8ace75378dd16/HistoryFragment"
	.zero	65

	/* #203 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554436
	/* java_name */
	.ascii	"crc64a3a8ace75378dd16/HomeFragment"
	.zero	68

	/* #204 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"crc64a3a8ace75378dd16/MainActivity"
	.zero	68

	/* #205 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554434
	/* java_name */
	.ascii	"crc64a3a8ace75378dd16/SummaryFragment"
	.zero	65

	/* #206 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554439
	/* java_name */
	.ascii	"crc64a3a8ace75378dd16/SummaryMonthsFragment"
	.zero	59

	/* #207 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33555005
	/* java_name */
	.ascii	"java/io/Closeable"
	.zero	85

	/* #208 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33555001
	/* java_name */
	.ascii	"java/io/File"
	.zero	90

	/* #209 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33555002
	/* java_name */
	.ascii	"java/io/FileDescriptor"
	.zero	80

	/* #210 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33555003
	/* java_name */
	.ascii	"java/io/FileInputStream"
	.zero	79

	/* #211 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33555007
	/* java_name */
	.ascii	"java/io/Flushable"
	.zero	85

	/* #212 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33555011
	/* java_name */
	.ascii	"java/io/IOException"
	.zero	83

	/* #213 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33555008
	/* java_name */
	.ascii	"java/io/InputStream"
	.zero	83

	/* #214 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33555010
	/* java_name */
	.ascii	"java/io/InterruptedIOException"
	.zero	72

	/* #215 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33555014
	/* java_name */
	.ascii	"java/io/OutputStream"
	.zero	82

	/* #216 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33555016
	/* java_name */
	.ascii	"java/io/PrintWriter"
	.zero	83

	/* #217 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33555013
	/* java_name */
	.ascii	"java/io/Serializable"
	.zero	82

	/* #218 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33555017
	/* java_name */
	.ascii	"java/io/StringWriter"
	.zero	82

	/* #219 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33555018
	/* java_name */
	.ascii	"java/io/Writer"
	.zero	88

	/* #220 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554969
	/* java_name */
	.ascii	"java/lang/Appendable"
	.zero	82

	/* #221 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554945
	/* java_name */
	.ascii	"java/lang/Boolean"
	.zero	85

	/* #222 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554946
	/* java_name */
	.ascii	"java/lang/Byte"
	.zero	88

	/* #223 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554970
	/* java_name */
	.ascii	"java/lang/CharSequence"
	.zero	80

	/* #224 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554947
	/* java_name */
	.ascii	"java/lang/Character"
	.zero	83

	/* #225 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554948
	/* java_name */
	.ascii	"java/lang/Class"
	.zero	87

	/* #226 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554964
	/* java_name */
	.ascii	"java/lang/ClassCastException"
	.zero	74

	/* #227 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554949
	/* java_name */
	.ascii	"java/lang/ClassNotFoundException"
	.zero	70

	/* #228 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554973
	/* java_name */
	.ascii	"java/lang/Cloneable"
	.zero	83

	/* #229 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554975
	/* java_name */
	.ascii	"java/lang/Comparable"
	.zero	82

	/* #230 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554950
	/* java_name */
	.ascii	"java/lang/Double"
	.zero	86

	/* #231 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554965
	/* java_name */
	.ascii	"java/lang/Enum"
	.zero	88

	/* #232 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554967
	/* java_name */
	.ascii	"java/lang/Error"
	.zero	87

	/* #233 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554951
	/* java_name */
	.ascii	"java/lang/Exception"
	.zero	83

	/* #234 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554952
	/* java_name */
	.ascii	"java/lang/Float"
	.zero	87

	/* #235 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554978
	/* java_name */
	.ascii	"java/lang/IllegalArgumentException"
	.zero	68

	/* #236 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554979
	/* java_name */
	.ascii	"java/lang/IllegalStateException"
	.zero	71

	/* #237 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554980
	/* java_name */
	.ascii	"java/lang/IndexOutOfBoundsException"
	.zero	67

	/* #238 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554954
	/* java_name */
	.ascii	"java/lang/Integer"
	.zero	85

	/* #239 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554977
	/* java_name */
	.ascii	"java/lang/Iterable"
	.zero	84

	/* #240 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554983
	/* java_name */
	.ascii	"java/lang/LinkageError"
	.zero	80

	/* #241 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554955
	/* java_name */
	.ascii	"java/lang/Long"
	.zero	88

	/* #242 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554984
	/* java_name */
	.ascii	"java/lang/NoClassDefFoundError"
	.zero	72

	/* #243 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554985
	/* java_name */
	.ascii	"java/lang/NullPointerException"
	.zero	72

	/* #244 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554986
	/* java_name */
	.ascii	"java/lang/Number"
	.zero	86

	/* #245 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554956
	/* java_name */
	.ascii	"java/lang/Object"
	.zero	86

	/* #246 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554988
	/* java_name */
	.ascii	"java/lang/ReflectiveOperationException"
	.zero	64

	/* #247 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554982
	/* java_name */
	.ascii	"java/lang/Runnable"
	.zero	84

	/* #248 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554957
	/* java_name */
	.ascii	"java/lang/RuntimeException"
	.zero	76

	/* #249 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554989
	/* java_name */
	.ascii	"java/lang/SecurityException"
	.zero	75

	/* #250 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554958
	/* java_name */
	.ascii	"java/lang/Short"
	.zero	87

	/* #251 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554959
	/* java_name */
	.ascii	"java/lang/String"
	.zero	86

	/* #252 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554961
	/* java_name */
	.ascii	"java/lang/Thread"
	.zero	86

	/* #253 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554963
	/* java_name */
	.ascii	"java/lang/Throwable"
	.zero	83

	/* #254 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554990
	/* java_name */
	.ascii	"java/lang/UnsupportedOperationException"
	.zero	63

	/* #255 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554992
	/* java_name */
	.ascii	"java/lang/annotation/Annotation"
	.zero	71

	/* #256 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554994
	/* java_name */
	.ascii	"java/lang/reflect/AnnotatedElement"
	.zero	68

	/* #257 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554996
	/* java_name */
	.ascii	"java/lang/reflect/GenericDeclaration"
	.zero	66

	/* #258 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554998
	/* java_name */
	.ascii	"java/lang/reflect/Type"
	.zero	80

	/* #259 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33555000
	/* java_name */
	.ascii	"java/lang/reflect/TypeVariable"
	.zero	72

	/* #260 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554882
	/* java_name */
	.ascii	"java/net/ConnectException"
	.zero	77

	/* #261 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554884
	/* java_name */
	.ascii	"java/net/HttpURLConnection"
	.zero	76

	/* #262 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554886
	/* java_name */
	.ascii	"java/net/InetSocketAddress"
	.zero	76

	/* #263 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554887
	/* java_name */
	.ascii	"java/net/ProtocolException"
	.zero	76

	/* #264 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554888
	/* java_name */
	.ascii	"java/net/Proxy"
	.zero	88

	/* #265 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554889
	/* java_name */
	.ascii	"java/net/Proxy$Type"
	.zero	83

	/* #266 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554890
	/* java_name */
	.ascii	"java/net/ProxySelector"
	.zero	80

	/* #267 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554892
	/* java_name */
	.ascii	"java/net/SocketAddress"
	.zero	80

	/* #268 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554894
	/* java_name */
	.ascii	"java/net/SocketException"
	.zero	78

	/* #269 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554895
	/* java_name */
	.ascii	"java/net/SocketTimeoutException"
	.zero	71

	/* #270 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554897
	/* java_name */
	.ascii	"java/net/URI"
	.zero	90

	/* #271 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554898
	/* java_name */
	.ascii	"java/net/URL"
	.zero	90

	/* #272 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554899
	/* java_name */
	.ascii	"java/net/URLConnection"
	.zero	80

	/* #273 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554896
	/* java_name */
	.ascii	"java/net/UnknownServiceException"
	.zero	70

	/* #274 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554921
	/* java_name */
	.ascii	"java/nio/Buffer"
	.zero	87

	/* #275 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554923
	/* java_name */
	.ascii	"java/nio/ByteBuffer"
	.zero	83

	/* #276 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554928
	/* java_name */
	.ascii	"java/nio/channels/ByteChannel"
	.zero	73

	/* #277 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554930
	/* java_name */
	.ascii	"java/nio/channels/Channel"
	.zero	77

	/* #278 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554925
	/* java_name */
	.ascii	"java/nio/channels/FileChannel"
	.zero	73

	/* #279 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554932
	/* java_name */
	.ascii	"java/nio/channels/GatheringByteChannel"
	.zero	64

	/* #280 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554934
	/* java_name */
	.ascii	"java/nio/channels/InterruptibleChannel"
	.zero	64

	/* #281 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554936
	/* java_name */
	.ascii	"java/nio/channels/ReadableByteChannel"
	.zero	65

	/* #282 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554938
	/* java_name */
	.ascii	"java/nio/channels/ScatteringByteChannel"
	.zero	63

	/* #283 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554940
	/* java_name */
	.ascii	"java/nio/channels/SeekableByteChannel"
	.zero	65

	/* #284 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554942
	/* java_name */
	.ascii	"java/nio/channels/WritableByteChannel"
	.zero	65

	/* #285 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554943
	/* java_name */
	.ascii	"java/nio/channels/spi/AbstractInterruptibleChannel"
	.zero	52

	/* #286 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554908
	/* java_name */
	.ascii	"java/security/KeyStore"
	.zero	80

	/* #287 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554910
	/* java_name */
	.ascii	"java/security/KeyStore$LoadStoreParameter"
	.zero	61

	/* #288 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554912
	/* java_name */
	.ascii	"java/security/KeyStore$ProtectionParameter"
	.zero	60

	/* #289 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554907
	/* java_name */
	.ascii	"java/security/Principal"
	.zero	79

	/* #290 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554913
	/* java_name */
	.ascii	"java/security/SecureRandom"
	.zero	76

	/* #291 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554914
	/* java_name */
	.ascii	"java/security/cert/Certificate"
	.zero	72

	/* #292 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554916
	/* java_name */
	.ascii	"java/security/cert/CertificateFactory"
	.zero	65

	/* #293 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554919
	/* java_name */
	.ascii	"java/security/cert/X509Certificate"
	.zero	68

	/* #294 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554918
	/* java_name */
	.ascii	"java/security/cert/X509Extension"
	.zero	70

	/* #295 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554850
	/* java_name */
	.ascii	"java/util/ArrayList"
	.zero	83

	/* #296 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554839
	/* java_name */
	.ascii	"java/util/Collection"
	.zero	82

	/* #297 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554902
	/* java_name */
	.ascii	"java/util/Enumeration"
	.zero	81

	/* #298 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554841
	/* java_name */
	.ascii	"java/util/HashMap"
	.zero	85

	/* #299 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554859
	/* java_name */
	.ascii	"java/util/HashSet"
	.zero	85

	/* #300 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554904
	/* java_name */
	.ascii	"java/util/Iterator"
	.zero	84

	/* #301 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554905
	/* java_name */
	.ascii	"java/util/Random"
	.zero	86

	/* #302 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554557
	/* java_name */
	.ascii	"javax/net/SocketFactory"
	.zero	79

	/* #303 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554562
	/* java_name */
	.ascii	"javax/net/ssl/HostnameVerifier"
	.zero	72

	/* #304 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554559
	/* java_name */
	.ascii	"javax/net/ssl/HttpsURLConnection"
	.zero	70

	/* #305 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554564
	/* java_name */
	.ascii	"javax/net/ssl/KeyManager"
	.zero	78

	/* #306 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554573
	/* java_name */
	.ascii	"javax/net/ssl/KeyManagerFactory"
	.zero	71

	/* #307 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554574
	/* java_name */
	.ascii	"javax/net/ssl/SSLContext"
	.zero	78

	/* #308 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554566
	/* java_name */
	.ascii	"javax/net/ssl/SSLSession"
	.zero	78

	/* #309 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554568
	/* java_name */
	.ascii	"javax/net/ssl/SSLSessionContext"
	.zero	71

	/* #310 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554575
	/* java_name */
	.ascii	"javax/net/ssl/SSLSocketFactory"
	.zero	72

	/* #311 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554570
	/* java_name */
	.ascii	"javax/net/ssl/TrustManager"
	.zero	76

	/* #312 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554577
	/* java_name */
	.ascii	"javax/net/ssl/TrustManagerFactory"
	.zero	69

	/* #313 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554572
	/* java_name */
	.ascii	"javax/net/ssl/X509TrustManager"
	.zero	72

	/* #314 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554553
	/* java_name */
	.ascii	"javax/security/cert/Certificate"
	.zero	71

	/* #315 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554555
	/* java_name */
	.ascii	"javax/security/cert/X509Certificate"
	.zero	67

	/* #316 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33555041
	/* java_name */
	.ascii	"mono/android/TypeManager"
	.zero	78

	/* #317 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554835
	/* java_name */
	.ascii	"mono/android/runtime/InputStreamAdapter"
	.zero	63

	/* #318 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"mono/android/runtime/JavaArray"
	.zero	72

	/* #319 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554856
	/* java_name */
	.ascii	"mono/android/runtime/JavaObject"
	.zero	71

	/* #320 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554874
	/* java_name */
	.ascii	"mono/android/runtime/OutputStreamAdapter"
	.zero	62

	/* #321 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554439
	/* java_name */
	.ascii	"mono/android/support/design/widget/BottomNavigationView_OnNavigationItemReselectedListenerImplementor"
	.zero	1

	/* #322 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554443
	/* java_name */
	.ascii	"mono/android/support/design/widget/BottomNavigationView_OnNavigationItemSelectedListenerImplementor"
	.zero	3

	/* #323 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554445
	/* java_name */
	.ascii	"mono/android/support/v4/app/FragmentManager_OnBackStackChangedListenerImplementor"
	.zero	21

	/* #324 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554440
	/* java_name */
	.ascii	"mono/android/support/v4/view/ActionProvider_SubUiVisibilityListenerImplementor"
	.zero	24

	/* #325 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554444
	/* java_name */
	.ascii	"mono/android/support/v4/view/ActionProvider_VisibilityListenerImplementor"
	.zero	29

	/* #326 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554442
	/* java_name */
	.ascii	"mono/android/support/v4/widget/DrawerLayout_DrawerListenerImplementor"
	.zero	33

	/* #327 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554441
	/* java_name */
	.ascii	"mono/android/support/v7/app/ActionBar_OnMenuVisibilityListenerImplementor"
	.zero	29

	/* #328 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554467
	/* java_name */
	.ascii	"mono/android/support/v7/widget/Toolbar_OnMenuItemClickListenerImplementor"
	.zero	29

	/* #329 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554620
	/* java_name */
	.ascii	"mono/android/view/View_OnClickListenerImplementor"
	.zero	53

	/* #330 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554962
	/* java_name */
	.ascii	"mono/java/lang/RunnableImplementor"
	.zero	68

	/* #331 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554549
	/* java_name */
	.ascii	"xamarin/android/net/OldAndroidSSLSocketFactory"
	.zero	56

	.size	map_java, 36520
/* Java to managed map: END */

