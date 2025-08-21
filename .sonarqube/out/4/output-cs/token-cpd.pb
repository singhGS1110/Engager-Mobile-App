Ð
iC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam.Android\Properties\AssemblyInfo.cs
[		 
assembly		 	
:			 

AssemblyTitle		 
(		 
$str		 9
)		9 :
]		: ;
[

 
assembly

 	
:

	 

AssemblyDescription

 
(

 
$str

 !
)

! "
]

" #
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str ;
); <
]< =
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

AssemblyVersion 
( 
$str $
)$ %
]% &
[ 
assembly 	
:	 

AssemblyFileVersion 
( 
$str (
)( )
]) *
[!! 
assembly!! 	
:!!	 

UsesPermission!! 
(!! 
Android!! !
.!!! "
Manifest!!" *
.!!* +

Permission!!+ 5
.!!5 6
Internet!!6 >
)!!> ?
]!!? @
["" 
assembly"" 	
:""	 

UsesPermission"" 
("" 
Android"" !
.""! "
Manifest""" *
.""* +

Permission""+ 5
.""5 6 
WriteExternalStorage""6 J
)""J K
]""K L
[%% 
assembly%% 	
:%%	 

Application%% 
(%% 

Debuggable%% !
=%%! "
true%%" &
)%%& '
]%%' (‡	
jC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam.Android\Helpers\FileAccessHelper.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Droid! &
.& '
Helpers' .
{ 
public 

class 
FileAccessHelper !
{ 
public 
static 
string 
GetLocalFilePath -
(- .
string. 4
filename5 =
)= >
{ 	
string 
path 
= 
System  
.  !
Environment! ,
., -
GetFolderPath- :
(: ;
System; A
.A B
EnvironmentB M
.M N
SpecialFolderN [
.[ \
Personal\ d
)d e
;e f
return 
System 
. 
IO 
. 
Path !
.! "
Combine" )
() *
path* .
,. /
filename0 8
)8 9
;9 :
} 	
} 
} ø,
^C:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam.Android\MainActivity.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Droid! &
{ 
[ 
Activity 
( 
Label 
= 
$str &
,& '
Icon( ,
=- .
$str/ ?
,? @
ThemeA F
=G H
$strI [
,[ \
MainLauncher] i
=j k
truel p
,p q!
ConfigurationChanges	r †
=
‡ ˆ
ConfigChanges
‰ –
.
– —

ScreenSize
— ¡
|
¢ £
ConfigChanges
¤ ±
.
± ²
Orientation
² ½
,
½ ¾
ScreenOrientation 
= 
ScreenOrientation -
.- .
Portrait. 6
)6 7
]7 8
public 

class 
MainActivity 
: 
global  &
::& (
Xamarin( /
./ 0
Forms0 5
.5 6
Platform6 >
.> ?
Android? F
.F G"
FormsAppCompatActivityG ]
{ 
const 
string 
TAG 
= 
$str )
;) *
	protected 
override 
void 
OnCreate  (
(( )
Bundle) /
bundle0 6
)6 7
{ 	
TabLayoutResource 
= 
Resource  (
.( )
Layout) /
./ 0
Tabbar0 6
;6 7
ToolbarResource 
= 
Resource &
.& '
Layout' -
.- .
Toolbar. 5
;5 6
base 
. 
OnCreate 
( 
bundle  
)  !
;! " 
CrossCurrentActivity  
.  !
Current! (
.( )
Init) -
(- .
this. 2
,2 3
bundle4 :
): ;
;; <
global 
:: 
Xamarin 
. 
Forms !
.! "
Forms" '
.' (
Init( ,
(, -
this- 1
,1 2
bundle3 9
)9 :
;: ;
string!! 
dbPath!! 
=!! 
FileAccessHelper!! ,
.!!, -
GetLocalFilePath!!- =
(!!= >
$str!!> Q
)!!Q R
;!!R S
bool$$ 
playServices$$ 
=$$ #
IsPlayServicesAvailable$$  7
($$7 8
)$$8 9
;$$9 :
var'' 
firebaseApp'' 
='' 
FirebaseApp'' )
.'') *
InitializeApp''* 7
(''7 8
this''8 <
)''< =
;''= >
string-- 
token-- 
=-- 
FirebaseInstanceId-- -
.--- .
Instance--. 6
.--6 7
Token--7 <
;--< =
if// 
(// 
String// 
.// 
IsNullOrEmpty// $
(//$ %
token//% *
)//* +
)//+ ,
{00 
token11 
=11 
$str11 
;11 
}22 
LoadApplication66 
(66 
new66 
App66  #
(66# $
dbPath66$ *
,66* +
token66, 1
)661 2
)662 3
;663 4
}AA 	
publicCC 
boolCC #
IsPlayServicesAvailableCC +
(CC+ ,
)CC, -
{DD 	
intEE 

resultCodeEE 
=EE !
GoogleApiAvailabilityEE 2
.EE2 3
InstanceEE3 ;
.EE; <)
IsGooglePlayServicesAvailableEE< Y
(EEY Z
thisEEZ ^
)EE^ _
;EE_ `
ifGG 
(GG 

resultCodeGG 
!=GG 
ConnectionResultGG .
.GG. /
SuccessGG/ 6
)GG6 7
{HH 
ifII 
(II !
GoogleApiAvailabilityII )
.II) *
InstanceII* 2
.II2 3!
IsUserResolvableErrorII3 H
(IIH I

resultCodeIII S
)IIS T
)IIT U
returnKK 
falseKK  
;KK  !
elseMM 
{NN 
FinishPP 
(PP 
)PP 
;PP 
}QQ 
returnRR 
falseRR 
;RR 
}SS 
elseTT 
{UU 
returnWW 
trueWW 
;WW 
}XX 
}YY 	
public`` 
override`` 
void`` &
OnRequestPermissionsResult`` 7
(``7 8
int``8 ;
requestCode``< G
,``G H
string``I O
[``O P
]``P Q
permissions``R ]
,``] ^
[``_ `
GeneratedEnum``` m
]``m n
Android``o v
.``v w
Content``w ~
.``~ 
PM	`` 
.
`` ‚

Permission
``‚ Œ
[
``Œ 
]
`` Ž
grantResults
`` ›
)
``› œ
{aa 	
basebb 
.bb &
OnRequestPermissionsResultbb +
(bb+ ,
requestCodebb, 7
,bb7 8
permissionsbb9 D
,bbD E
grantResultsbbF R
)bbR S
;bbS T%
PermissionsImplementationcc %
.cc% &
Currentcc& -
.cc- .&
OnRequestPermissionsResultcc. H
(ccH I
requestCodeccI T
,ccT U
permissionsccV a
,cca b
grantResultsccc o
)cco p
;ccp q
}dd 	
}ee 
}ff 
mC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam.Android\Helpers\MyFirebaseIDService.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Droid! &
.& '
Helpers' .
{ 
[ 
Service 
] 
[ 
IntentFilter 
( 
new 
[ 
] 
{ 
$str A
}B C
)C D
]D E
public 

class 
MyFirebaseIDService $
:% &%
FirebaseInstanceIdService' @
{ 
const 
string 
TAG 
= 
$str 1
;1 2
public 
override 
void 
OnTokenRefresh +
(+ ,
), -
{ 	
var 
refreshedToken 
=  
FirebaseInstanceId! 3
.3 4
Instance4 <
.< =
Token= B
;B C
Log 
. 
Debug 
( 
TAG 
, 
$str .
+/ 0
refreshedToken1 ?
)? @
;@ A$
SendRegistrationToServer $
($ %
refreshedToken% 3
)3 4
;4 5
} 	
void $
SendRegistrationToServer %
(% &
string& ,
token- 2
)2 3
{ 	
}!! 	
}"" 
}## ’
hC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam.Android\Helpers\MessageAndroid.cs
[ 
assembly 	
:	 

Xamarin 
. 
Forms 
. 

Dependency #
(# $
typeof$ *
(* +
MessageAndroid+ 9
)9 :
): ;
]; <
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Droid! &
.& '
Helpers' .
{ 
public 

class 
MessageAndroid 
:  !
IMessage" *
{ 
public 
void 
	LongAlert 
( 
string $
message% ,
), -
{ 	
Toast 
. 
MakeText 
( 
Application &
.& '
Context' .
,. /
message0 7
,7 8
ToastLength9 D
.D E
LongE I
)I J
.J K
ShowK O
(O P
)P Q
;Q R
} 	
public 
void 

ShortAlert 
( 
string %
message& -
)- .
{ 	
Toast 
. 
MakeText 
( 
Application &
.& '
Context' .
,. /
message0 7
,7 8
ToastLength9 D
.D E
ShortE J
)J K
.K L
ShowL P
(P Q
)Q R
;R S
} 	
} 
} Ö
uC:\Office_Work\MobileApp\EngagerMobile.Mariteam\EngagerMobile.Mariteam.Android\CustomRenderers\CustomLabelRenderer.cs
[ 
assembly 	
:	 

ExportRenderer 
( 
typeof  
(  !
CustomLabel! ,
), -
,- .
typeof/ 5
(5 6
CustomLabelRenderer6 I
)I J
)J K
]K L
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Droid! &
.& '
CustomRenderers' 6
{ 
class 	
CustomLabelRenderer
 
: 
LabelRenderer  -
{ 
private 
GradientDrawable  
_gradientBackground! 4
;4 5
public 
CustomLabelRenderer "
(" #
Context# *
context+ 2
)2 3
:4 5
base6 :
(: ;
context; B
)B C
{ 	
} 	
	protected 
override 
void 
OnElementChanged  0
(0 1#
ElementChangedEventArgs1 H
<H I
LabelI N
>N O
eP Q
)Q R
{   	
base!! 
.!! 
OnElementChanged!! !
(!!! "
e!!" #
)!!# $
;!!$ %
var## 
view## 
=## 
(## 
CustomLabel## #
)### $
Element##$ +
;##+ ,
if$$ 
($$ 
view$$ 
==$$ 
null$$ 
)$$ 
return$$ $
;$$$ %
_gradientBackground&& 
=&&  !
new&&" %
GradientDrawable&&& 6
(&&6 7
)&&7 8
;&&8 9
_gradientBackground'' 
.''  
SetShape''  (
(''( )
	ShapeType'') 2
.''2 3
	Rectangle''3 <
)''< =
;''= >
_gradientBackground(( 
.((  
SetColor((  (
(((( )
view(() -
.((- .!
CurvedBackgroundColor((. C
.((C D
	ToAndroid((D M
(((M N
)((N O
)((O P
;((P Q
_gradientBackground++ 
.++  
	SetStroke++  )
(++) *
$num++* +
,+++ ,
view++- 1
.++1 2!
CurvedBackgroundColor++2 G
.++G H
	ToAndroid++H Q
(++Q R
)++R S
)++S T
;++T U
_gradientBackground.. 
...  
SetCornerRadius..  /
(../ 0

DpToPixels// 
(// 
this// 
.//  
Context//  '
,//' (
Convert00 
.00 
ToSingle00  
(00  !
view00! %
.00% &
CurvedCornerRadius00& 8
)008 9
)009 :
)00: ;
;00; <
Control33 
.33 
SetBackground33 !
(33! "
_gradientBackground33" 5
)335 6
;336 7
}44 	
public<< 
static<< 
float<< 

DpToPixels<< &
(<<& '
Context<<' .
context<</ 6
,<<6 7
float<<8 =
	valueInDp<<> G
)<<G H
{== 	
DisplayMetrics>> 
metrics>> "
=>># $
context>>% ,
.>>, -
	Resources>>- 6
.>>6 7
DisplayMetrics>>7 E
;>>E F
return?? 

TypedValue?? 
.?? 
ApplyDimension?? ,
(??, -
ComplexUnitType??- <
.??< =
Dip??= @
,??@ A
	valueInDp??B K
,??K L
metrics??M T
)??T U
;??U V
}@@ 	
}BB 
}CC 