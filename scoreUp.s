	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"scoreUp.c"
	.text
	.global	scoreUp_data
	.global	scoreUp_length
	.global	scoreUp_sampleRate
	.section	.rodata
	.align	2
	.type	scoreUp_data, %object
	.size	scoreUp_data, 7328
scoreUp_data:
	.ascii	"\000\000\000\000\000\000\377\000\377\000\377\377\000"
	.ascii	"\377\000\377\000\000\000\377\000\377\000\377\000\377"
	.ascii	"\000\377\000\000\377\000\000\377\000\000\377\000\000"
	.ascii	"\377\000\000\377\000\377\000\377\000\000\000\000\377"
	.ascii	"\000\377\000\377\000\377\000\000\000\000\377\000\377"
	.ascii	"\000\377\000\000\377\000\377\000\000\377\000\000\377"
	.ascii	"\000\377\000\000\000\377\000\000\377\000\377\000\000"
	.ascii	"\377\000\377\000\377\000\377\000\000\377\000\377\000"
	.ascii	"\377\000\000\000\000\000\000\377\000\377\000\377\000"
	.ascii	"\377\000\377\000\377\000\377\000\377\000\377\000\377"
	.ascii	"\000\000\377\000\377\000\000\377\000\377\000\377\000"
	.ascii	"\000\377\000\377\000\377\000\377\000\377\000\377\000"
	.ascii	"\377\000\377\000\377\000\000\377\000\377\000\000\377"
	.ascii	"\000\377\000\000\377\000\377\000\377\000\377\000\377"
	.ascii	"\000\000\000\000\377\000\377\000\000\377\000\000\000"
	.ascii	"\377\000\377\000\000\000\377\000\377\000\377\000\377"
	.ascii	"\000\000\377\000\377\000\000\377\000\377\000\000\377"
	.ascii	"\000\377\000\377\000\377\000\377\000\377\000\377\000"
	.ascii	"\000\000\000\377\000\377\000\377\000\377\000\377\000"
	.ascii	"\377\000\377\000\377\000\377\000\000\377\000\377\000"
	.ascii	"\000\377\000\000\377\000\000\377\000\377\000\377\000"
	.ascii	"\377\377\000\377\000\000\000\377\000\377\000\377\000"
	.ascii	"\000\377\000\000\377\000\377\000\000\377\000\000\377"
	.ascii	"\000\377\000\000\377\000\000\000\377\000\000\377\000"
	.ascii	"\377\000\377\000\377\000\377\000\377\000\000\377\000"
	.ascii	"\377\000\377\000\377\000\377\000\000\377\000\000\377"
	.ascii	"\000\377\000\377\000\000\000\377\000\000\000\000\000"
	.ascii	"\377\000\377\000\377\000\377\000\000\377\000\377\000"
	.ascii	"\000\377\000\000\377\000\377\000\000\377\000\377\000"
	.ascii	"\377\000\377\000\000\377\000\377\000\377\000\000\000"
	.ascii	"\377\000\000\000\000\377\000\000\000\000\377\000\377"
	.ascii	"\000\000\000\000\000\377\000\000\000\000\000\377\000"
	.ascii	"\000\000\000\377\000\000\000\377\000\377\000\377\000"
	.ascii	"\377\000\377\000\000\000\000\377\000\377\000\377\377"
	.ascii	"\000\000\000\000\000\377\377\000\377\000\000\000\000"
	.ascii	"\000\000\000\000\377\377\377\000\377\000\377\377\377"
	.ascii	"\000\377\000\000\000\000\000\377\377\377\000\377\000"
	.ascii	"\000\377\000\000\000\000\377\377\377\377\000\000\000"
	.ascii	"\377\377\377\000\000\000\000\000\000\377\377\000\377"
	.ascii	"\377\377\000\000\377\377\377\377\000\002\003\004\003"
	.ascii	"\000\375\372\370\370\370\371\374\001\006\011\015\020"
	.ascii	"\023\017\005\370\350\332\330\347\004(FH+\357\255\227"
	.ascii	"\251\317\372 >NL:\037\374\331\276\260\262\300\330\365"
	.ascii	"\022->A7#\010\352\320\302\301\315\341\371\023+;@8&\015"
	.ascii	"\360\327\311\306\317\341\367\020'8=6%\015\362\331\312"
	.ascii	"\307\317\340\365\015$4:4%\016\363\333\314\307\316\336"
	.ascii	"\363\013!172#\015\363\334\315\311\317\337\363\010\035"
	.ascii	",30#\016\366\336\315\307\316\335\361\010\034+2/#\017"
	.ascii	"\367\340\320\312\317\335\357\005\031)10%\022\373\343"
	.ascii	"\321\311\315\332\356\006\034,30$\021\372\343\322\313"
	.ascii	"\320\335\360\005\031(10&\024\375\346\324\314\317\334"
	.ascii	"\356\003\026&//&\025\377\350\326\315\317\333\354\000"
	.ascii	"\024$-.&\027\002\353\330\316\317\332\353\377\023#-."
	.ascii	"&\027\003\354\332\317\320\332\352\375\021!+,%\027\004"
	.ascii	"\360\336\323\322\331\350\372\016\036),'\032\007\361"
	.ascii	"\336\322\320\330\347\373\017\037*-'\030\004\356\335"
	.ascii	"\325\326\336\353\373\014\033%(#\030\010\366\345\331"
	.ascii	"\325\332\346\367\012\032%($\033\013\370\346\331\324"
	.ascii	"\330\345\366\011\031%($\032\013\372\350\333\325\331"
	.ascii	"\344\364\006\025 &%\034\016\374\351\333\325\331\344"
	.ascii	"\363\004\024\037$#\034\017\376\355\337\327\331\343\361"
	.ascii	"\002\022\036##\034\020\000\357\341\331\331\341\357\000"
	.ascii	"\020\034#$\035\021\002\361\343\333\333\342\356\375\015"
	.ascii	"\032!#\035\022\003\363\345\335\333\341\355\375\014\030"
	.ascii	" !\035\023\005\366\350\336\333\341\355\373\012\027\037"
	.ascii	" \034\024\006\367\351\341\337\343\354\371\007\022\032"
	.ascii	"\035\034\025\011\374\357\345\341\342\350\364\002\017"
	.ascii	"\032\036\035\026\013\376\361\347\341\341\347\361\376"
	.ascii	"\013\026\036\"!\031\010\356\322\300\306\341\0158?$\376"
	.ascii	"\344\334\344\365\011\032 \032\011\362\336\324\332\353"
	.ascii	"\003\03604(\017\355\315\273\275\320\356\0221A@-\014"
	.ascii	"\347\311\275\303\330\364\024-:4!\006\354\333\326\335"
	.ascii	"\354\000\023\037!\027\005\364\352\351\361\377\016\032"
	.ascii	"\034\025\005\360\337\332\341\361\006\034+1(\023\366"
	.ascii	"\332\311\310\326\355\012%68+\022\364\332\313\314\331"
	.ascii	"\360\011\037+)\033\005\361\343\337\344\361\000\015\024"
	.ascii	"\023\013\376\362\354\356\366\002\017\030\031\020\000"
	.ascii	"\355\336\331\340\357\002\027&.)\027\374\337\314\310"
	.ascii	"\324\351\004\03616,\026\372\342\322\317\331\353\003"
	.ascii	"\031'(\035\012\367\351\343\346\360\376\014\024\024\014"
	.ascii	"\376\361\353\355\366\003\020\032\034\024\003\357\337"
	.ascii	"\331\336\354\377\024%-(\031\001\346\323\314\323\345"
	.ascii	"\375\027+2*\030\000\350\331\325\333\351\375\022 #\033"
	.ascii	"\014\373\355\346\350\361\376\012\022\023\014\377\362"
	.ascii	"\353\352\361\376\015\031\036\032\015\371\345\331\327"
	.ascii	"\342\365\014 ,,\037\011\357\332\320\323\342\370\020"
	.ascii	"\"+'\031\005\357\337\332\337\354\376\020\034\036\026"
	.ascii	"\007\367\354\351\355\366\003\017\025\023\011\374\357"
	.ascii	"\347\350\361\377\016\032 \034\016\372\346\330\326\340"
	.ascii	"\362\010\036+-\"\015\363\335\322\324\342\366\014\036"
	.ascii	"(%\030\004\360\342\336\343\357\377\016\031\034\025\007"
	.ascii	"\366\353\347\353\366\003\017\027\030\020\001\361\346"
	.ascii	"\342\350\365\006\025\037 \026\005\361\341\331\335\353"
	.ascii	"\377\024$)!\017\371\345\332\332\344\364\007\030\"\""
	.ascii	"\027\006\364\346\341\345\360\377\016\031\032\022\004"
	.ascii	"\366\354\352\357\370\002\014\023\024\016\001\363\350"
	.ascii	"\345\351\365\004\024\036\037\026\005\361\340\331\335"
	.ascii	"\353\376\022!'!\022\375\350\332\330\340\360\004\027"
	.ascii	"#%\032\011\366\347\341\344\357\375\013\025\030\023\010"
	.ascii	"\373\360\354\356\366\000\013\023\026\020\004\366\352"
	.ascii	"\346\352\364\002\021\033\035\025\007\365\346\337\340"
	.ascii	"\353\374\016\035#\037\022\377\354\340\335\343\361\003"
	.ascii	"\024\036\037\026\007\367\352\344\345\356\373\011\025"
	.ascii	"\032\026\014\375\360\350\350\357\373\011\023\027\022"
	.ascii	"\010\372\357\351\352\361\375\013\027\032\025\011\371"
	.ascii	"\353\343\342\353\372\013\031 \034\020\377\356\342\336"
	.ascii	"\344\361\003\023\036 \027\011\370\353\343\343\353\371"
	.ascii	"\011\025\032\026\014\377\362\352\351\357\373\010\022"
	.ascii	"\025\017\005\371\357\352\353\362\376\014\027\033\025"
	.ascii	"\010\370\352\342\342\354\373\015\033 \034\017\377\360"
	.ascii	"\345\341\345\361\001\021\034\036\030\013\374\356\345"
	.ascii	"\343\352\370\007\024\030\026\016\003\367\355\351\354"
	.ascii	"\366\004\017\024\022\012\376\363\354\353\360\373\007"
	.ascii	"\022\026\023\013\000\363\351\345\351\366\006\024\033"
	.ascii	"\032\021\005\370\353\342\336\344\365\020,:.\010\325"
	.ascii	"\265\306\374-:%\377\334\315\330\366\030/0\034\375\337"
	.ascii	"\321\327\360\0242:*\011\344\314\312\336\000$6/\023\355"
	.ascii	"\316\304\322\361\02749%\002\334\303\301\326\371\036"
	.ascii	"64\036\376\336\314\317\343\001\034' \013\361\337\333"
	.ascii	"\347\376\026#\035\012\361\336\331\343\371\024''\026"
	.ascii	"\374\344\331\337\361\012 '\033\002\347\327\330\352\007"
	.ascii	"$3*\021\362\330\314\324\353\015*5+\021\362\332\322\334"
	.ascii	"\363\016\"$\027\002\354\341\343\363\011\033 \025\001"
	.ascii	"\354\340\342\361\005\030 \032\011\364\345\341\351\373"
	.ascii	"\020\036\035\017\371\346\337\345\366\014\036$\032\004"
	.ascii	"\354\332\327\344\374\027)(\027\376\346\330\333\354\005"
	.ascii	"\033#\033\010\363\344\341\352\374\021\036\034\015\371"
	.ascii	"\347\340\345\365\011\032\036\025\003\360\343\343\360"
	.ascii	"\003\026\035\026\005\361\342\340\352\377\025#!\020\370"
	.ascii	"\343\332\337\361\011\037&\035\010\361\342\337\352\375"
	.ascii	"\021\035\033\016\373\352\343\347\367\014\035!\027\002"
	.ascii	"\354\336\337\355\003\027 \033\013\367\347\342\352\373"
	.ascii	"\017\034\033\014\367\345\336\345\367\016 $\030\003\354"
	.ascii	"\334\333\347\374\023! \022\375\352\341\345\364\010\027"
	.ascii	"\032\021\000\356\343\344\362\007\033#\034\011\362\340"
	.ascii	"\332\343\366\014\036\"\030\006\361\344\344\357\000\020"
	.ascii	"\027\022\006\366\353\351\362\003\024\034\027\010\364"
	.ascii	"\344\337\347\370\015\036!\027\004\357\342\342\357\001"
	.ascii	"\023\033\025\007\364\346\343\355\377\022\036\035\020"
	.ascii	"\374\351\336\340\356\003\026 \035\017\373\351\341\346"
	.ascii	"\364\007\025\031"
	.ascii	"\021\002\362\350\353\367\007\024\027\020\001\361\346"
	.ascii	"\345\357\000\022\034\031\014\371\351\344\353\372\013"
	.ascii	"\026\030\016\375\353\342\347\370\015\035 \026\001\354"
	.ascii	"\335\334\352\377\025\"#\026\000\352\336\341\357\002"
	.ascii	"\023\034\030\012\367\350\345\356\377\017\031\030\015"
	.ascii	"\374\353\343\346\365\010\026\033\025\005\363\350\350"
	.ascii	"\362\000\015\023\020\004\366\353\353\365\005\023\032"
	.ascii	"\026\010\365\344\336\345\366\013\033!\032\012\366\346"
	.ascii	"\341\350\370\012\027\031\020\377\357\350\354\371\007"
	.ascii	"\022\025\017\002\362\350\350\362\001\016\026\025\013"
	.ascii	"\375\360\353\357\372\006\016\020\011\375\361\354\362"
	.ascii	"\377\015\027\026\014\373\352\341\344\362\006\027\037"
	.ascii	"\033\016\373\352\344\350\365\004\021\027\023\007\367"
	.ascii	"\352\350\362\001\020\027\025\012\371\353\346\353\370"
	.ascii	"\006\022\026\022\007\371\355\352\361\375\011\020\016"
	.ascii	"\006\372\360\357\367\003\016\023\017\003\365\351\347"
	.ascii	"\357\376\016\031\031\017\377\360\347\351\364\003\020"
	.ascii	"\025\021\005\367\354\352\361\000\016\027\026\015\376"
	.ascii	"\357\346\347\361\000\016\026\026\015\000\364\356\357"
	.ascii	"\366\000\010\012\007\001\372\367\371\377\007\014\013"
	.ascii	"\005\374\363\355\356\366\003\017\024\021\007\372\360"
	.ascii	"\354\361\374\007\017\016\010\375\363\356\361\373\007"
	.ascii	"\021\024\017\004\367\355\351\356\372\010\022\025\021"
	.ascii	"\010\374\363\357\362\372\003\010\011\006\001\374\372"
	.ascii	"\374\001\006\007\005\000\372\364\362\366\000\011\017"
	.ascii	"\015\006\376\366\363\364\373\003\011\012\006\377\371"
	.ascii	"\364\363\370\001\012\017\016\007\375\363\354\354\365"
	.ascii	"\002\015\021\020\011\000\366\360\361\370\001\007\010"
	.ascii	"\006\002\376\373\373\376\003\005\004\001\375\372\370"
	.ascii	"\371\376\004\010\007\004\377\373\370\370\374\003\011"
	.ascii	"\011\005\377\371\365\365\372\002\012\017\015\007\376"
	.ascii	"\365\356\355\365\002\015\022\017\007\376\366\362\364"
	.ascii	"\373\004\011\010\003\377\372\370\371\376\005\010\007"
	.ascii	"\003\377\374\371\370\372\377\003\005\004\002\000\376"
	.ascii	"\374\375\001\005\004\000\373\370\370\372\376\005\013"
	.ascii	"\015\011\002\372\364\362\363\372\003\012\014\012\005"
	.ascii	"\377\372\366\366\374\002\006\005\002\377\374\373\373"
	.ascii	"\376\003\006\006\003\377\374\371\371\373\000\004\006"
	.ascii	"\005\002\376\373\371\374\002\007\007\002\374\367\366"
	.ascii	"\370\375\003\012\014\012\003\374\367\364\364\371\001"
	.ascii	"\007\012\010\003\376\372\370\371\376\003\006\005\001"
	.ascii	"\376\373\372\373\376\003\007\007\004\000\375\373\373"
	.ascii	"\375\377\000\001\000\000\000\000\000\001\004\006\004"
	.ascii	"\000\372\366\365\370\375\004\013\015\012\003\374\366"
	.ascii	"\364\365\372\002\010\011\007\002\375\372\371\373\000"
	.ascii	"\005\007\005\000\373\370\370\373\000\006\011\007\003"
	.ascii	"\375\372\371\373\376\001\003\003\000\376\375\375\377"
	.ascii	"\002\005\006\005\000\372\366\365\370\376\005\013\015"
	.ascii	"\011\002\373\366\364\367\374\003\007\010\005\000\373"
	.ascii	"\371\373\377\003\006\006\002\375\371\370\371\374\000"
	.ascii	"\004\006\005\002\377\374\373\373\375\000\002\002\000"
	.ascii	"\376\375\375\377\002\005\006\004\000\373\367\366\367"
	.ascii	"\375\003\011\013\011\004\376\370\365\366\373\001\006"
	.ascii	"\010\006\000\373\370\370\375\003\010\011\006\000\371"
	.ascii	"\364\364\371\000\006\013\013\007\000\371\365\366\373"
	.ascii	"\001\006\007\005\000\374\371\372\376\004\007\010\006"
	.ascii	"\000\372\364\363\370\000\010\014\014\010\000\370\363"
	.ascii	"\364\371\001\007\012\011\003\374\366\366\373\002\007"
	.ascii	"\011\007\002\373\366\366\372\377\004\007\010\006\002"
	.ascii	"\374\370\370\373\000\004\005\005\002\375\371\371\375"
	.ascii	"\002\005\006\005\002\375\367\365\367\375\003\007\011"
	.ascii	"\010\004\375\367\365\370\374\001\004\007\006\002\374"
	.ascii	"\371\372\376\001\003\005\004\000\373\370\371\375\002"
	.ascii	"\005\007\007\004\376\371\367\371\375\002\005\010\007"
	.ascii	"\001\373\367\370\375\002\005\010\007\003\374\367\365"
	.ascii	"\371\376\003\010\012\011\003\374\367\366\370\374\001"
	.ascii	"\007\011\010\002\374\371\372\374\377\002\006\006\002"
	.ascii	"\374\371\371\374\000\004\007\006\003\375\372\371\373"
	.ascii	"\376\002\005\006\004\376\371\370\372\377\003\007\011"
	.ascii	"\007\001\371\364\364\370\377\006\013\015\011\001\371"
	.ascii	"\365\365\370\375\003\010\011\005\000\374\372\373\375"
	.ascii	"\001\004\006\004\377\372\370\371\375\001\005\007\005"
	.ascii	"\001\375\372\373\375\377\001\002\001\376\373\372\374"
	.ascii	"\000\003\006\007\005\000\372\366\366\371\376\003\007"
	.ascii	"\011\010\003\375\371\370\372\375\000\004\005\004\001"
	.ascii	"\376\374\374\375\001\004\005\003\377\373\372\373\375"
	.ascii	"\000\003\005\005\004\000\375\374\374\375\377\001\001"
	.ascii	"\000\377\376\377\000\001\002\003\002\000\375\372\372"
	.ascii	"\374\377\002\004\005\004\002\376\373\372\372\374\377"
	.ascii	"\002\004\003\001\377\375\375\376\000\002\002\002\000"
	.ascii	"\375\373\373\375\377\002\004\004\004\002\377\375\374"
	.ascii	"\374\375\377\001\001\001\001\000\000\000\001\001\001"
	.ascii	"\000\377\375\374\375\376\000\001\003\004\004\001\377"
	.ascii	"\374\373\373\374\377\002\004\004\002\377\375\374\375"
	.ascii	"\377\001\003\003\000\375\374\374\375\000\002\004\004"
	.ascii	"\002\000\375\373\373\373\375\001\003\004\004\002\377"
	.ascii	"\375\374\374\376\377\001\001\000\377\376\376\000\001"
	.ascii	"\002\002\001\377\376\375\375\376\377\001\001\001\000"
	.ascii	"\377\377\377\377\377\000\001\001\000\375\374\373\375"
	.ascii	"\001\004\006\005\003\377\374\372\372\373\376\001\003"
	.ascii	"\004\004\003\000\376\374\375\376\000\001\001\000\377"
	.ascii	"\376\376\377\000\002\002\001\000\376\376\375\376\376"
	.ascii	"\377\000\002\003\003\002\377\375\374\374\376\001\002"
	.ascii	"\002\001\377\375\374\375\000\003\004\003\001\376\373"
	.ascii	"\372\373\375\000\003\005\004\002\000\375\373\373\374"
	.ascii	"\376\000\002\003\002\000\376\374\374\376\000\002\002"
	.ascii	"\002\000\376\374\374\375\377\001\002\003\002\001\377"
	.ascii	"\376\375\375\376\377\000\001\001\000\377\377\000\001"
	.ascii	"\001\001\000\376\375\374\374\376\001\003\004\004\002"
	.ascii	"\000\375\373\373\375\377\001\002\002\001\377\376\376"
	.ascii	"\377\000\001\002\002\001\000\375\374\374\375\377\001"
	.ascii	"\003\005\004\001\376\373\372\373\376\001\003\003\002"
	.ascii	"\000\376\375\376\377\000\001\001\000\376\374\374\375"
	.ascii	"\000\003\004\004\002\377\374\372\373\376\001\004\005"
	.ascii	"\004\001\376\374\373\374\377\001\003\004\003\000\375"
	.ascii	"\373\373\375\000\003\005\005\002\376\373\372\373\375"
	.ascii	"\001\003\004\003\000\375\374\374\376\000\001\002\002"
	.ascii	"\000\376\375\375\376\000\001\002\002\001\377\375\374"
	.ascii	"\374\376\001\003\004\003\000\375\373\373\375\000\003"
	.ascii	"\005\004\002\376\373\372\373\376\001\004\005\004\001"
	.ascii	"\376\373\373\374\377\001\003\004\002\000\376\375\375"
	.ascii	"\376\000\001\002\001\000\377\376\375\375\377\002\003"
	.ascii	"\003\000\375\373\373\375\000\003\005\005\002\376\372"
	.ascii	"\370\371\374\001\005\006\005\002\376\373\372\373\376"
	.ascii	"\001\004\004\003\001\376\373\373\374\377\002\003\004"
	.ascii	"\002\000\376\375\375\377\000\001\001\000\377\376\377"
	.ascii	"\000\001\001\001\001\000\377\375\374\374\376\001\004"
	.ascii	"\005\003\000\375\373\372\374\377\002\004\005\003\377"
	.ascii	"\374\372\372\375\001\004\006\005\002\376\372\371\372"
	.ascii	"\375\001\004\005\005\002\377\374\373\374\377\001\002"
	.ascii	"\002\001\377\375\375\377\001\003\003\001\377\374\373"
	.ascii	"\374\376\001\004\005\004\001\376\373\372\373\376\001"
	.ascii	"\004\005\004\001\375\372\371\373\376\003\005\006\004"
	.ascii	"\000\374\371\372\374\000\003\004\004\003\001\376\374"
	.ascii	"\374\375\377\001\002\002\001\000\377\376\377\000\001"
	.ascii	"\001\000\376\375\374\375\000\003\004\004\002\377\373"
	.ascii	"\371\372\375\000\004\006\006\003\376\373\371\372\375"
	.ascii	"\001\005\006\005\002\375\372\370\372\375\002\005\006"
	.ascii	"\005\001\376\373\372\374\377\001\003\003\001\377\376"
	.ascii	"\375\376\377\001\002\001\000\376\374\374\375\000\003"
	.ascii	"\005\004\002\376\373\371\372\375\002\006\007\005\001"
	.ascii	"\374\371\370\373\000\004\007\006\004\377\373\371\371"
	.ascii	"\373\000\004\006\006\003\000\374\372\372\374\000\003"
	.ascii	"\005\004\001\377\375\374\376\000\001\002\001\377\376"
	.ascii	"\375\376\000\003\004\004\001\376\373\372\373\375\001"
	.ascii	"\005\006\005\002\376\373\371\372\375\002\005\006\004"
	.ascii	"\001\375\372\372\373\376\002\004\005\003\001\376\373"
	.ascii	"\372\373\376\001\003\004\003\000\376\375\375\376\000"
	.ascii	"\001\001\000\377\376\376\377\001\003\003\002\377\375"
	.ascii	"\373\373\374\377\002\005\005\004\000\375\372\372\374"
	.ascii	"\377\003\005\005\003\377\374\372\372\375\000\004\005"
	.ascii	"\005\003\377\373\371\372\374\000\004\005\004\002\377"
	.ascii	"\374\373\375\377\001\002\001\377\376\375\376\000\002"
	.ascii	"\003\003\001\376\374\373\373\376\001\004\004\003\001"
	.ascii	"\376\374\374\375\000\002\004\003\001\377\374\373\373"
	.ascii	"\375\000\003\005\005\003\000\375\373\372\374\377\001"
	.ascii	"\003\003\002\000\377\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\000\002\002\002\001\377\375\374\374\376\000"
	.ascii	"\002\003\002\001\377\375\374\375\377\001\003\003\001"
	.ascii	"\377\375\373\373\375\000\003\004\004\003\000\375\373"
	.ascii	"\372\374\377\001\003\004\003\001\377\375\375\376\377"
	.ascii	"\000\000\377\377\377\377\000\001\002\002\001\377\375"
	.ascii	"\374\375\376\000\002\003\002\000\376\375\375\376\000"
	.ascii	"\002\003\003\002\377\374\373\373"
	.ascii	"\375\000\003\004\004\003\000\375\373\373\374\376\001"
	.ascii	"\002\003\002\001\000\377\376\376\376\377\377\377\377"
	.ascii	"\377\000\000\000\001\000\000\377\376\376\376\377\000"
	.ascii	"\001\001\001\000\376\375\375\376\000\001\003\003\002"
	.ascii	"\000\375\374\373\375\377\002\004\005\003\001\376\374"
	.ascii	"\373\374\376\000\001\002\002\000\377\376\376\377\000"
	.ascii	"\001\001\001\001\000\377\376\376\377\377\000\000\000"
	.ascii	"\000\377\377\376\375\375\376\376\376\377\000\003\004"
	.ascii	"\005\005\002\377\373\370\366\367\371\375\002\006\010"
	.ascii	"\010\006\002\376\373\371\372\373\376\000\001\002\003"
	.ascii	"\003\004\003\003\001\377\375\373\373\373\375\377\001"
	.ascii	"\004\005\005\004\002\000\375\374\373\374\375\376\377"
	.ascii	"\000\001\002\003\004\004\003\001\375\372\370\370\372"
	.ascii	"\376\002\005\007\007\005\002\377\374\372\372\373\375"
	.ascii	"\376\000\001\002\002\003\003\003\002\000\375\373\372"
	.ascii	"\372\373\376\001\004\004\004\003\001\377\376\376\375"
	.ascii	"\376\375\375\374\374\376\001\004\006\006\005\002\376"
	.ascii	"\372\367\367\371\375\001\004\007\007\005\003\377\374"
	.ascii	"\372\372\373\375\376\000\001\001\002\002\002\003\002"
	.ascii	"\001\377\374\373\372\373\375\000\002\004\005\003\001"
	.ascii	"\377\376\376\376\376\375\375\375\376\377\001\003\004"
	.ascii	"\004\004\002\000\375\372\370\371\374\377\003\006\007"
	.ascii	"\006\004\001\376\373\372\373\374\376\000\001\002\002"
	.ascii	"\002\002\001\001\001\000\376\374\373\373\374\377\002"
	.ascii	"\004\005\004\002\000\376\374\374\375\376\377\000\000"
	.ascii	"\000\000\001\002\003\004\003\001\375\373\371\371\373"
	.ascii	"\377\003\006\007\006\004\000\374\372\371\372\375\000"
	.ascii	"\002\002\002\001\000\000\000\001\001\000\377\375\373"
	.ascii	"\373\374\376\001\003\004\004\003\001\377\375\374\374"
	.ascii	"\375\376\377\377\377\000\001\002\003\003\003\001\376"
	.ascii	"\374\372\372\373\376\001\004\005\006\004\002\376\374"
	.ascii	"\372\372\374\376\000\001\002\001\001\000\000\001\001"
	.ascii	"\001\000\376\374\373\373\374\377\002\004\005\005\003"
	.ascii	"\000\376\374\373\374\375\376\377\000\001\002\002\002"
	.ascii	"\002\002\001\377\375\373\371\372\374\377\003\005\005"
	.ascii	"\004\002\000\375\373\373\374\376\000\000\000\000\000"
	.ascii	"\000\001\002\003\002\001\376\374\373\373\374\376\001"
	.ascii	"\003\004\004\003\001\377\376\375\375\376\376\377\377"
	.ascii	"\377\000\001\002\002\003\002\001\377\375\373\373\373"
	.ascii	"\375\000\003\004\005\004\002\000\375\373\373\374\376"
	.ascii	"\000\002\002\001\000\377\376\377\000\001\001\001\000"
	.ascii	"\377\376\376\375\376\377\000\001\002\002\001\000\376"
	.ascii	"\375\374\374\374\376\377\001\002\003\003\003\001\377"
	.ascii	"\375\373\373\374\376\000\003\004\005\003\001\377\375"
	.ascii	"\373\374\375\000\002\003\003\002\000\377\376\377\000"
	.ascii	"\001\001\001\001\377\376\375\374\375\376\000\002\004"
	.ascii	"\005\004\001\377\375\373\373\374\375\377\001\003\003"
	.ascii	"\003\002\001\376\375\374\374\375\376\000\001\002\003"
	.ascii	"\002\001\000\376\375\374\375\377\000\001\001\000\377"
	.ascii	"\377\376\377\000\000\001\001\001\000\377\375\374\374"
	.ascii	"\375\377\001\003\004\004\002\000\376\374\373\373\374"
	.ascii	"\376\001\003\004\004\004\002\377\375\373\373\374\376"
	.ascii	"\000\001\003\003\002\001\000\376\376\376\377\377\377"
	.ascii	"\377\377\377\377\377\377\000\000\001\001\001\001\000"
	.ascii	"\377\375\374\374\374\376\000\002\004\004\004\002\000"
	.ascii	"\375\373\372\373\374\377\001\004\005\004\003\001\376"
	.ascii	"\374\373\373\375\377\001\002\002\002\001\000\377\377"
	.ascii	"\377\000\000\000\377\376\375\375\376\377\000\001\002"
	.ascii	"\003\003\002\000\376\375\374\374\375\376\000\001\003"
	.ascii	"\003\003\002\001\377\375\374\374\374\375\377\001\003"
	.ascii	"\004\003\002\000\376\375\374\375\376\377\000\000\000"
	.ascii	"\000\000\377\377\377\000\000\000\000\377\376\375\375"
	.ascii	"\375\376\000\001\002\003\003\001\377\376\374\374\374"
	.ascii	"\375\377\001\002\003\003\002\001\377\375\374\374\375"
	.ascii	"\376\377\001\002\002\002\001\001\000\377\376\375\376"
	.ascii	"\376\377\000\001\001\000\000\377\377\377\000\000\001"
	.ascii	"\001\000\377\376\375\375\376\000\001\003\003\002\000"
	.ascii	"\377\376\375\375\375\376\000\001\002\002\002\001\377"
	.ascii	"\376\375\375\375\376\377\001\002\002\001\001\000\377"
	.ascii	"\376\376\376\376\377\000\000\001\001\000\377\377\376"
	.ascii	"\376\377\000\001\001\001\377\376\376\376\376\377\000"
	.ascii	"\002\002\002\001\377\376\374\374\375\376\000\002\003"
	.ascii	"\002\001\000\377\376\375\375\375\376\000\001\001\002"
	.ascii	"\001\001\000\377\377\376\375\376\377\000\001\002\002"
	.ascii	"\001\000\376\376\376\377\000\001\002\001\000\377\376"
	.ascii	"\375\376\377\000\001\002\002\001\000\377\376\376\376"
	.ascii	"\377\000\001\001\001\001\000\377\377\376\376\376\376"
	.ascii	"\377\000\001\001\001\001\000\377\376\375\375\376\000"
	.ascii	"\001\002\002\001\000\376\375\375\376\377\000\001\002"
	.ascii	"\002\001\000\376\375\375\376\377\000\001\002\001\000"
	.ascii	"\377\376\375\375\376\000\001\002\002\001\000\377\376"
	.ascii	"\376\376\376\377\000\001\001\002\001\001\000\376\375"
	.ascii	"\375\375\376\000\001\002\002\002\001\377\376\375\375"
	.ascii	"\376\377\001\002\002\002\000\377\376\375\375\377\000"
	.ascii	"\001\002\002\001\000\376\375\375\376\377\001\002\002"
	.ascii	"\001\000\377\376\376\376\376\377\000\001\001\001\001"
	.ascii	"\000\000\377\376\376\376\376\377\000\002\002\002\001"
	.ascii	"\000\376\375\375\375\377\000\002\002\002\001\377\376"
	.ascii	"\375\375\376\000\001\002\001\000\377\376\375\375\376"
	.ascii	"\000\001\002\002\001\000\377\376\375\375\376\377\000"
	.ascii	"\002\002\001\000\377\376\377\377\000\000\000\377\376"
	.ascii	"\376\377\000\001\002\001\000\377\376\376\376\000\001"
	.ascii	"\002\002\002\000\377\375\375\376\377\000\001\001\000"
	.ascii	"\376\376\375\376\377\001\001\002\001\377\376\375\374"
	.ascii	"\375\377\000\002\002\002\001\377\376\375\376\376\377"
	.ascii	"\000\000\000\377\377\377\377\000\001\001\000\377\376"
	.ascii	"\375\375\376\377\001\002\002\001\000\377\376\376\377"
	.ascii	"\000\001\001\001\000\377\376\376\377\001\002\002\002"
	.ascii	"\000\377\376\375\375\376\000\002\003\002\001\000\376"
	.ascii	"\376\376\377\000\001\001\000\377\377\377\377\000\001"
	.ascii	"\001\001\000\377\376\375\376\377\000\001\002\001\000"
	.ascii	"\377\376\376\376\377\000\001\001\000\377\376\376\377"
	.ascii	"\000\001\002\002\001\000\376\375\375\376\377\001\002"
	.ascii	"\002\001\000\377\376\376\377\000\000\000\000\377\376"
	.ascii	"\376\376\377\000\001\002\001\000\376\375\375\375\377"
	.ascii	"\000\001\001\001\000\377\376\376\377\377\000\000\000"
	.ascii	"\377\376\376\376\377\000\001\002\002\000\377\376\375"
	.ascii	"\375\376\000\001\001\001\000\000\377\376\377\377\000"
	.ascii	"\000\000\000\377\376\376\377\000\001\002\002\000\377"
	.ascii	"\376\375\376\377\000\001\001\001\000\377\376\376\377"
	.ascii	"\000\000\001\001\000\377\376\376\376\377\000\001\001"
	.ascii	"\001\000\377\376\376\376\377\000\001\001\000\000\377"
	.ascii	"\377\377\000\000\000\000\377\377\376\376\377\000\001"
	.ascii	"\002\002\001\000\376\375\375\376\377\000\001\001\001"
	.ascii	"\000\377\376\376\377\000\000\001\000\000\377\376\376"
	.ascii	"\377\000\001\001\001\000\377\376\376\376\377\000\001"
	.ascii	"\001\001\000\377\376\377\377\000\000\000\000\377\376"
	.ascii	"\376\376\377\000\001\002\001\000\377\376\375\375\376"
	.ascii	"\000\001\002\002\001\377\376\375\376\376\000\001\001"
	.ascii	"\001\000\377\376\376\376\377\001\001\001\000\377\376"
	.ascii	"\376\376\377\000\001\001\000\377\377\377\377\000\000"
	.ascii	"\001\000\377\376\376\376\377\000\002\003\002\001\377"
	.ascii	"\375\374\374\376\000\002\003\003\002\000\376\375\375"
	.ascii	"\376\000\001\002\002\001\377\376\375\376\377\001\002"
	.ascii	"\002\001\000\377\375\375\376\377\001\001\001\000\377"
	.ascii	"\377\377\377\000\000\000\000\377\376\376\376\000\001"
	.ascii	"\002\002\001\377\375\374\374\375\377\001\003\003\002"
	.ascii	"\000\376\375\375\376\377\001\002\002\001\377\376\375"
	.ascii	"\376\377\000\001\002\001\001\377\376\376\376\376\377"
	.ascii	"\000\001\001\001\000\377\377\377\377\377\377\377\377"
	.ascii	"\377\377\000\001\001\001\001\000\376\376\375\376\377"
	.ascii	"\000\001\002\002\001\377\376\375\376\377\000\001\002"
	.ascii	"\001\000\377\376\375\376\377\001\002\002\002\000\377"
	.ascii	"\375\375\375\376\000\001\001\001\001\000\377\377\377"
	.ascii	"\377\377\377\377\377\377\377\377\000\001\001\001\000"
	.ascii	"\377\376\376\376\377\000\001\002\001\000\377\376\376"
	.ascii	"\376\377\001\001\001\001\377\376\375\375\376\000\002"
	.ascii	"\003\003\001\000\376\375\374\375\377\001\002\002\002"
	.ascii	"\000\377\376\376\377\377\000\000\000\377\377\377\000"
	.ascii	"\000\001\001\001\000\377\376\375\376\377\000\001\002"
	.ascii	"\001\000\377\376\376\377\000\001\001\001\000\376\375"
	.ascii	"\375\376\377\001\002\003\002\000\376\375\374\375\376"
	.ascii	"\000\001\002\002\001\000\377\376\376\377\377\000\000"
	.ascii	"\000\377\377\000\000\001\001\000\000\377\376\376\376"
	.ascii	"\377\000\001\001\001\000\377\376\376\376\377\000\001"
	.ascii	"\001\000\377\376\375\375\377\000\002\003\002\001\377"
	.ascii	"\375\374\374\376\377\001\002\002\001\000\377\376\376"
	.ascii	"\376\377\377\000\000\000\000\000\000\000\000\377\377"
	.ascii	"\377\377\377\377\000\000\000\000\000\377\377\377\377"
	.ascii	"\377\000\001\001\001\000\377\376\375\376\377\000\002"
	.ascii	"\002\002\001\377\375\374\374\376\377\001\002\002\002"
	.ascii	"\000\377\376\376\376\377\000\000\000\000\000\377\377"
	.ascii	"\377\000\000\000\000\000\377\377\377\377\377\000\000"
	.ascii	"\000\377\377\377\000\000\001\000\000\377\377"
	.ascii	"\376\376\376\377\000\001\002\002\001\377\376\375\375"
	.ascii	"\376\377\000\002\002\002\001\000\376\376\376\376\377"
	.ascii	"\000\001\001\000\000\377\377\377\000\000\000\000\377"
	.ascii	"\377\377\377\377\000\000\000\377\377\377\377\000\000"
	.ascii	"\000\000\000\377\376\376\376\377\000\001\002\002\001"
	.ascii	"\000\376\375\375\375\376\000\001\002\002\001\000\377"
	.ascii	"\376\376\376\377\000\000\001\001\000\000\377\377\377"
	.ascii	"\377\000\000\000\000\000\377\377\377\377\377\377\000"
	.ascii	"\000\000\000\000\000\000\377\377\376\376\377\377\000"
	.ascii	"\001\001\001\000\000\377\376\376\376\377\000\000\001"
	.ascii	"\001\001\000\377\377\376\377\377\377\000\000\000\000"
	.ascii	"\000\000\377\377\377\377\000\000\000\000\000\377\377"
	.ascii	"\377\377\377\377\000\000\000\000\000\000\377\377\377"
	.ascii	"\377\377\377\000\000\001\001\000\377\377\376\376\376"
	.ascii	"\377\000\001\001\001\000\000\377\377\376\376\377\000"
	.ascii	"\000\000\000\000\000\377\377\377\377\377\000\000\000"
	.ascii	"\000\000\000\377\377\377\377\377\000\000\000\000\000"
	.ascii	"\000\377\377\376\376\377\377\000\001\001\001\000\377"
	.ascii	"\377\376\376\377\377\000\000\001\001\000\000\377\377"
	.ascii	"\377\377\377\377\000\000\000\000\000\377\377\377\377"
	.ascii	"\377\377\000\000\000\000\000\377\377\377\377\377\000"
	.ascii	"\000\000\000\000\377\377\377\377\377\377\000\000\000"
	.ascii	"\001\000\000\377\377\376\377\377\000\000\000\000\000"
	.ascii	"\000\000\377\377\377\377\377\000\000\000\000\000\000"
	.ascii	"\377\377\377\377\000\000\000\000\000\000\377\377\377"
	.ascii	"\377\377\000\000\000\000\000\000\377\377\377\377\377"
	.ascii	"\377\000\000\000\000\000\000\377\377\377\377\377\377"
	.ascii	"\000\000\001\001\000\000\377\377\377\377\377\377\000"
	.ascii	"\000\000\000\000\000\377\377\377\377\377\377\000\000"
	.ascii	"\000\000\000\000\000\000\000\377\377\377\377\377\000"
	.ascii	"\000\000\000\377\377\377\377\000\000\000\000\000\377"
	.ascii	"\376\376\377\377\000\000\001\001\000\000\377\376\376"
	.ascii	"\376\377\377\000\000\000\000\000\377\377\377\377\377"
	.ascii	"\377\000\377\377\377\377\000\000\000\000\000\000\377"
	.ascii	"\377\377\000\000\000\000\000\377\377\377\377\000\000"
	.ascii	"\000\000\000\377\377\377\377\377\377\000\001\001\000"
	.ascii	"\000\377\376\376\376\377\377\000\000\001\000\000\377"
	.ascii	"\377\377\377\377\000\000\000\377\377\377\377\000\000"
	.ascii	"\000\000\377\377\377\377\377\000\000\000\000\000\377"
	.ascii	"\377\377\000\000\000\000\000\377\377\377\377\377\000"
	.ascii	"\000\001\001\000\000\377\377\376\377\377\000\000\001"
	.ascii	"\000\000\377\377\377\377\377\000\000\000\000\377\377"
	.ascii	"\377\377\000\000\000\000\000\377\377\377\377\377\000"
	.ascii	"\000\000\000\000\377\377\377\000\000\000\000\377\377"
	.ascii	"\377\377\377\377\000\000\000\000\000\377\377\377\377"
	.ascii	"\377\377\000\000\000\000\000\377\377\377\377\377\000"
	.ascii	"\000\000\000\377\377\377\377\377\000\000\000\000\377"
	.ascii	"\377\377\377\377\000\000\000\000\000\377\377\377\377"
	.ascii	"\000\000\000\000\000\377\377\377\377\000\000\000\000"
	.ascii	"\000\377\377\377\377\377\377\000\000\000\000\377\377"
	.ascii	"\377\377\377\000\000\000\000\377\377\377\377\377\000"
	.ascii	"\000\000\000\000\377\377\377\377\377\000\000\000\000"
	.ascii	"\000\377\377\377\377\000\000\000\000\377\377\377\377"
	.ascii	"\377\000\000\000\000\000\377\377\377\377\377\000\000"
	.ascii	"\000\000\000\377\377\377\000\000\000\000\000\377\377"
	.ascii	"\377\377\377\000\000\000\000\000\377\377\377\377\377"
	.ascii	"\000\000\000\000\377\377\377\377\377\000\000\000\000"
	.ascii	"\377\377\377\377\377\377\000\000\000\000\000\377\377"
	.ascii	"\376\377\377\000\000\000\000\000\000\377\377\377\377"
	.ascii	"\000\000\000\377\377\377\377\377\000\000\000\000\000"
	.ascii	"\377\377\377\377\377\000\000\000\000\000\377\377\377"
	.ascii	"\377\000\000\000\000\000\377\377\377\377\377\000\000"
	.ascii	"\000\000\000\377\377\377\377\377\000\000\000\000\000"
	.ascii	"\377\377\377\377\377\000\000\000\000\377\377\377\377"
	.ascii	"\000\000\000\000\000\377\377\377\377\377\000\000\000"
	.ascii	"\000\000\377\377\377\377\000\000\000\000\000\377\377"
	.ascii	"\377\377\000\000\000\000\000\377\377\376\377\377\000"
	.ascii	"\000\000\000\000\377\377\377\377\377\000\000\000\000"
	.ascii	"\377\377\377\377\000\000\000\000\000\377\377\377\377"
	.ascii	"\000\000\000\000\000\377\377\377\377\377\000\000\000"
	.ascii	"\000\377\377\377\377\377\000\000\000\000\000\377\377"
	.ascii	"\376\376\377\377\000\000\001\000\000\377\377\377\377"
	.ascii	"\377\000\000\000\000\377\377\377\377\000\000\000\000"
	.ascii	"\377\377\377\377\377\000\000\000\000\000\377\377\377"
	.ascii	"\377\377\000\000\000\000\377\377\377\377\377\000\000"
	.ascii	"\000\000\000\377\377\377\377\377\000\000\000\000\000"
	.ascii	"\377\377\377\377\377\000\000\000\000\000\377\377\377"
	.ascii	"\377\000\000\000\000\377\377\377\377\377\000\000\000"
	.ascii	"\000\000\377\377\377\377\377\000\000\377\377\377\377"
	.ascii	"\377\377\000\000\000\000\000\377\377\377\377\377\377"
	.ascii	"\000\000\000\000\000\377\377\377\377\377\000\000\000"
	.ascii	"\000\000\000\377\377\000\000\000\377\377\377\377\377"
	.ascii	"\377\377\000\000\000\000\000\000\000\000\000\377\377"
	.ascii	"\377\377\377\377\377\377\000\000\000\000\000\377\377"
	.ascii	"\377\377\377\377\000\000\000\000\000\000\377\377\377"
	.ascii	"\377\377\377\000\000\000\000\000\000\377\377\377\000"
	.ascii	"\000\377\377\377\377\377\000\000\000\000\000\000\377"
	.ascii	"\377\377\377\377\377\377\000\377\377\000\000\000\000"
	.ascii	"\000\000\000\377\377\377\377\377\000\000\000\000\000"
	.ascii	"\000\377\377\377\377\377\377\000\000\000\000\000\000"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\000"
	.ascii	"\000\000\000\000\377\377\377\377\377\377\000\000\000"
	.ascii	"\000\000\000\000\000\000\000\000\377\377\377\377\377"
	.ascii	"\377\000\000\000\000\000\377\377\377\377\377\377\000"
	.ascii	"\000\000\000\000\377\377\377\377\377\000\000\000\000"
	.ascii	"\377\377\377\377\000\000\000\000\000\377\377\377\377"
	.ascii	"\377\000\000\000\000\000\377\377\377\000\000\000\000"
	.ascii	"\377\377\377\377\377\000\000\000\000\000\000\377\377"
	.ascii	"\377\377\377\000\000\000\000\000\377\377\377\377\377"
	.ascii	"\000\000\000\000\377\377\377\377\377\000\000\000\000"
	.ascii	"\000\377\377\377\377\377\000\000\000\000\000\000\377"
	.ascii	"\377\377\377\000\000\377\377\377\377\377\000\000\000"
	.ascii	"\000\000"
	.type	scoreUp_length, %object
	.size	scoreUp_length, 4
scoreUp_length:
	.word	7328
	.type	scoreUp_sampleRate, %object
	.size	scoreUp_sampleRate, 4
scoreUp_sampleRate:
	.word	11025
	.ident	"GCC: (devkitARM release 53) 9.1.0"
