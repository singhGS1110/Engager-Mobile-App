œ	
\C:\Office_Work\MobileApp\EngagerMobile.Mariteam.Common\Constants\WorkOrderStatusConstants.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Common! '
.' (
	Constants( 1
{ 
public 

class $
WorkOrderStatusConstants )
{ 
public		 
enum		 
OrderStatus		 
{

 	
All 
= 
$num 
, 
Draft 
= 
$num 
, 
Ordered 
= 
$num 
, 
Pending 
= 
$num 
, 
Assigned 
= 
$num 
, 
	Scheduled 
= 
$num 
, 
In_Progress 
= 
$num 
, 
	Submitted 
= 
$num 
, 
Verified 
= 
$num 
, 
With_Accounts 
= 
$num 
, 
Billed 
= 
$num 
} 	
} 
} á
RC:\Office_Work\MobileApp\EngagerMobile.Mariteam.Common\Utility\ImageManipulator.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Common! '
.' (
Utility( /
{ 
public 

class 
ImageManipulator !
{		 
public

 
static

 
byte

 
[

 
]

 $
ConvertStreamToByteArray

 5
(

5 6
Stream

6 <
input

= B
)

B C
{ 	
using 
( 
MemoryStream 
ms  "
=# $
new% (
MemoryStream) 5
(5 6
)6 7
)7 8
{ 
input 
. 
CopyTo 
( 
ms 
)  
;  !
return 
ms 
. 
ToArray !
(! "
)" #
;# $
} 
} 	
} 
} º2
PC:\Office_Work\MobileApp\EngagerMobile.Mariteam.Common\Constants\UrlConstants.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Common! '
.' (
	Constants( 1
{ 
public 

class 
UrlConstants 
{		 
public

 
static

 
string

 
LOGIN

 "
=

# $
ServerConfigs

% 2
.

2 3

getFullUrl

3 =
(

= >
ServerConfigs

> K
.

K L
isHTTPS

L S
)

S T
+

U V
$str

W j
;

j k
public 
static 
string 
LOGOUT #
=$ %
ServerConfigs& 3
.3 4

getFullUrl4 >
(> ?
ServerConfigs? L
.L M
isHTTPSM T
)T U
+V W
$strX l
;l m
public 
static 
string !
GET_WORKORDER_BY_SJID 2
=3 4
ServerConfigs5 B
.B C

getFullUrlC M
(M N
ServerConfigsN [
.[ \
isHTTPS\ c
)c d
+e f
$str	g ç
;
ç é
public 
static 
string !
GET_WORKORDER_BY_WOID 2
=3 4
ServerConfigs5 B
.B C

getFullUrlC M
(M N
ServerConfigsN [
.[ \
isHTTPS\ c
)c d
+e f
$str	g å
;
å ç
public 
static 
string 
GET_WORKORDERS +
=, -
ServerConfigs. ;
.; <

getFullUrl< F
(F G
ServerConfigsG T
.T U
isHTTPSU \
)\ ]
+^ _
$str` y
;y z
public 
static 
string !
ACKNOWLEDGE_WORKORDER 2
=3 4
ServerConfigs5 B
.B C

getFullUrlC M
(M N
ServerConfigsN [
.[ \
isHTTPS\ c
)c d
+e f
$str	g ä
;
ä ã
public 
static 
string 

BEGIN_TASK '
=( )
ServerConfigs* 7
.7 8

getFullUrl8 B
(B C
ServerConfigsC P
.P Q
isHTTPSQ X
)X Y
+Z [
$str\ u
;u v
public 
static 
string 
ADD_PASSENGER *
=+ ,
ServerConfigs- :
.: ;

getFullUrl; E
(E F
ServerConfigsF S
.S T
isHTTPST [
)[ \
+] ^
$str_ |
;| }
public 
static 
string 
END_TASK %
=& '
ServerConfigs( 5
.5 6

getFullUrl6 @
(@ A
ServerConfigsA N
.N O
isHTTPSO V
)V W
+X Y
$strZ q
;q r
public 
static 
string 
	GET_RANKS &
=' (
ServerConfigs) 6
.6 7

getFullUrl7 A
(A B
ServerConfigsB O
.O P
isHTTPSP W
)W X
+Y Z
$str[ s
;s t
public 
static 
string !
GET_PENDINGSIGNMODELS 2
=3 4
ServerConfigs5 B
.B C

getFullUrlC M
(M N
ServerConfigsN [
.[ \
isHTTPS\ c
)c d
+e f
$str	g Ü
;
Ü á
public   
static   
string   #
SUBMIT_PENDINGSIGNMODEL   4
=  5 6
ServerConfigs  7 D
.  D E

getFullUrl  E O
(  O P
ServerConfigs  P ]
.  ] ^
isHTTPS  ^ e
)  e f
+  g h
$str	  i É
;
  É Ñ
public"" 
static"" 
string"" 
SUBMIT_SIGNATURE"" -
="". /
ServerConfigs""0 =
.""= >

getFullUrl""> H
(""H I
ServerConfigs""I V
.""V W
isHTTPS""W ^
)""^ _
+""` a
$str""b t
;""t u
public$$ 
static$$ 
string$$ +
SUBMIT_SIGNATURE_WITH_PASSENGER$$ <
=$$= >
ServerConfigs$$? L
.$$L M

getFullUrl$$M W
($$W X
ServerConfigs$$X e
.$$e f
isHTTPS$$f m
)$$m n
+$$o p
$str	$$q ó
;
$$ó ò
public(( 
static(( 
string(( 
UPLOAD_SNAPSHOT(( ,
=((- .
ServerConfigs((/ <
.((< =

getFullUrl((= G
(((G H
ServerConfigs((H U
.((U V
isHTTPS((V ]
)((] ^
+((_ `
$str((a r
;((r s
public** 
static** 
string** 
GET_NOTIFICATIONS** .
=**/ 0
ServerConfigs**1 >
.**> ?

getFullUrl**? I
(**I J
ServerConfigs**J W
.**W X
isHTTPS**X _
)**_ `
+**a b
$str	**c â
;
**â ä
public,, 
static,, 
string,, "
GET_NOTIFICATION_COUNT,, 3
=,,4 5
ServerConfigs,,6 C
.,,C D

getFullUrl,,D N
(,,N O
ServerConfigs,,O \
.,,\ ]
isHTTPS,,] d
),,d e
+,,f g
$str	,,h è
;
,,è ê
public.. 
static.. 
string.. %
ACKNOWLEDGE_NOTIFICATIONS.. 6
=..7 8
ServerConfigs..9 F
...F G

getFullUrl..G Q
(..Q R
ServerConfigs..R _
..._ `
isHTTPS..` g
)..g h
+..i j
$str	..k ï
;
..ï ñ
public00 
static00 
Uri00 
GetUri00  
(00  !
string00! '
aUrl00( ,
)00, -
{11 	
return22 
new22 
Uri22 
(22 
string22 !
.22! "
Format22" (
(22( )
aUrl22) -
,22- .
string22/ 5
.225 6
Empty226 ;
)22; <
)22< =
;22= >
}33 	
}44 
}55 ª
]C:\Office_Work\MobileApp\EngagerMobile.Mariteam.Common\Constants\ServiceJobStatusConstants.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Common! '
.' (
	Constants( 1
{ 
public 

class %
ServiceJobStatusConstants *
{ 
public		 
enum		 
SeviceJobStatus		 #
{

 	
Pending 
= 
$num 
, 
	Scheduled 
= 
$num 
, 
In_Progress 
= 
$num 
, 
Pending_Sign 
= 
$num 
, 
	Submitted 
= 
$num 
} 	
} 
} ¯
bC:\Office_Work\MobileApp\EngagerMobile.Mariteam.Common\Constants\PendingSignEntityTypeConstants.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Common! '
.' (
	Constants( 1
{ 
public 

class *
PendingSignEntityTypeConstants /
{ 
public		 
enum		 

ModelTypes		 
{

 	
	Checklist 
, 
MeetingService 
, 
CustomDetention 
, 
Rank 
} 	
} 
} 
QC:\Office_Work\MobileApp\EngagerMobile.Mariteam.Common\Constants\MiscConstants.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Common! '
.' (
	Constants( 1
{ 
public 

class 
MiscConstants 
{ 
public		 
static		 
string		 
NA		 
=		  !
$str		" (
;		( )
public 
static 
Int64 
devDetailId '
=( )
$num* +
;+ ,
public 
static 
string 
RANK_OTHERS (
=) *
$str+ 3
;3 4
} 
} „
PC:\Office_Work\MobileApp\EngagerMobile.Mariteam.Common\Constants\ApiConstants.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Common! '
.' (
	Constants( 1
{ 
public 

class 
ApiConstants 
{ 
public		 
static		 
string		 
KEY		  
=		! "
$str		# (
;		( )
public

 
static

 
string

 

TOKEN_NAME

 '
=

( )
$str

* 4
;

4 5
public 
static 
int 
SUCCESS !
=" #
$num$ '
;' (
public 
static 
int 
FAIL 
=  
$num! "
;" #
} 
} Ì
RC:\Office_Work\MobileApp\EngagerMobile.Mariteam.Common\Configs\WorkOrderConfigs.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Common! '
.' (
Configs( /
{ 
public 

class 
WorkOrderConfigs !
{ 
}

 
} ”
MC:\Office_Work\MobileApp\EngagerMobile.Mariteam.Common\Configs\UserConfigs.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Common! '
.' (
Configs( /
{ 
public 

class 
UserConfigs 
{ 
public		 
static		 
Int64		 
USER_ID		 #
=		$ %
$num		& '
;		' (
public

 
static

 
string

 
Name

 !
=

" #
$str

$ *
;

* +
public 
static 
Int64 
PARENTCOMPANY_ID ,
=- .
$num/ 0
;0 1
public 
static 
void 
ResetUserConfigs +
(+ ,
), -
{ 	
USER_ID 
= 
$num 
; 
Name 
= 
$str 
; 
PARENTCOMPANY_ID 
= 
$num  
;  !
} 	
} 
} Â
OC:\Office_Work\MobileApp\EngagerMobile.Mariteam.Common\Configs\ServerConfigs.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Common! '
.' (
Configs( /
{ 
public 

class 
ServerConfigs 
{ 
public 
static 
string 
IP 
=  !
$str" G
;G H
public 
static 
bool 
isHTTPS "
=# $
true% )
;) *
public

 
static

 
string

 
Port

 !
=

" #
$str

$ +
;

+ ,
public 
static 
string 
HTTP !
=" #
$str$ -
;- .
public 
static 
string 
HTTPs "
=# $
$str% /
;/ 0
public 
static 
string 

getFullUrl '
(' (
bool( ,
isHTTPs- 4
)4 5
{ 	
return 
isHTTPS 
? 
$" 
{  
HTTPs  %
}% &
{& '
IP' )
}) *
"* +
:, -
$". 0
{0 1
HTTP1 5
}5 6
{6 7
IP7 9
}9 :
": ;
;; <
} 	
} 
} ç
LC:\Office_Work\MobileApp\EngagerMobile.Mariteam.Common\Configs\AppConfigs.cs
	namespace 	
EngagerMobile
 
. 
Mariteam  
.  !
Common! '
.' (
Configs( /
{ 
public 

class 

AppConfigs 
{ 
public 
static 
String 
APP_VERSION (
=) *
$str+ C
;C D
public 
static 
String 
RELEASE_DATE )
=* +
$str, <
+= >
$str? K
;K L
} 
} 