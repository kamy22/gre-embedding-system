¾$
¯
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
«
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleéelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements#
handleéelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.6.02v2.6.0-rc2-32-g919f693420e8°#

embedding_9/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ù2*'
shared_nameembedding_9/embeddings

*embedding_9/embeddings/Read/ReadVariableOpReadVariableOpembedding_9/embeddings* 
_output_shapes
:
Ù2*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:
*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0

gru_18/gru_cell_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2**
shared_namegru_18/gru_cell_18/kernel

-gru_18/gru_cell_18/kernel/Read/ReadVariableOpReadVariableOpgru_18/gru_cell_18/kernel*
_output_shapes

:2*
dtype0
¢
#gru_18/gru_cell_18/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*4
shared_name%#gru_18/gru_cell_18/recurrent_kernel

7gru_18/gru_cell_18/recurrent_kernel/Read/ReadVariableOpReadVariableOp#gru_18/gru_cell_18/recurrent_kernel*
_output_shapes

:
*
dtype0

gru_18/gru_cell_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namegru_18/gru_cell_18/bias

+gru_18/gru_cell_18/bias/Read/ReadVariableOpReadVariableOpgru_18/gru_cell_18/bias*
_output_shapes
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/embedding_9/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ù2*.
shared_nameAdam/embedding_9/embeddings/m

1Adam/embedding_9/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_9/embeddings/m* 
_output_shapes
:
Ù2*
dtype0

Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:
*
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:*
dtype0

 Adam/gru_18/gru_cell_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*1
shared_name" Adam/gru_18/gru_cell_18/kernel/m

4Adam/gru_18/gru_cell_18/kernel/m/Read/ReadVariableOpReadVariableOp Adam/gru_18/gru_cell_18/kernel/m*
_output_shapes

:2*
dtype0
°
*Adam/gru_18/gru_cell_18/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*;
shared_name,*Adam/gru_18/gru_cell_18/recurrent_kernel/m
©
>Adam/gru_18/gru_cell_18/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/gru_18/gru_cell_18/recurrent_kernel/m*
_output_shapes

:
*
dtype0

Adam/gru_18/gru_cell_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/gru_18/gru_cell_18/bias/m

2Adam/gru_18/gru_cell_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru_18/gru_cell_18/bias/m*
_output_shapes
:*
dtype0

Adam/embedding_9/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ù2*.
shared_nameAdam/embedding_9/embeddings/v

1Adam/embedding_9/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_9/embeddings/v* 
_output_shapes
:
Ù2*
dtype0

Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:
*
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:*
dtype0

 Adam/gru_18/gru_cell_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*1
shared_name" Adam/gru_18/gru_cell_18/kernel/v

4Adam/gru_18/gru_cell_18/kernel/v/Read/ReadVariableOpReadVariableOp Adam/gru_18/gru_cell_18/kernel/v*
_output_shapes

:2*
dtype0
°
*Adam/gru_18/gru_cell_18/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*;
shared_name,*Adam/gru_18/gru_cell_18/recurrent_kernel/v
©
>Adam/gru_18/gru_cell_18/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/gru_18/gru_cell_18/recurrent_kernel/v*
_output_shapes

:
*
dtype0

Adam/gru_18/gru_cell_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/gru_18/gru_cell_18/bias/v

2Adam/gru_18/gru_cell_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru_18/gru_cell_18/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
)
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ó(
valueÉ(BÆ( B¿(
æ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api
	
signatures
b


embeddings
regularization_losses
trainable_variables
	variables
	keras_api
l
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
¬
iter

beta_1

beta_2
	decay
learning_rate
mLmMmN mO!mP"mQ
vRvSvT vU!vV"vW
 
*

0
 1
!2
"3
4
5
*

0
 1
!2
"3
4
5
­
regularization_losses
#metrics
$layer_regularization_losses
trainable_variables

%layers
&non_trainable_variables
'layer_metrics
	variables
 
fd
VARIABLE_VALUEembedding_9/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 


0


0
­
regularization_losses
(layer_regularization_losses
)metrics
trainable_variables

*layers
+non_trainable_variables
,layer_metrics
	variables
~

 kernel
!recurrent_kernel
"bias
-regularization_losses
.trainable_variables
/	variables
0	keras_api
 
 

 0
!1
"2

 0
!1
"2
¹
regularization_losses
1layer_regularization_losses
2metrics
trainable_variables

3layers
4non_trainable_variables

5states
6layer_metrics
	variables
ZX
VARIABLE_VALUEdense_7/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_7/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
regularization_losses
7layer_regularization_losses
8metrics
trainable_variables

9layers
:non_trainable_variables
;layer_metrics
	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEgru_18/gru_cell_18/kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#gru_18/gru_cell_18/recurrent_kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEgru_18/gru_cell_18/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE

<0
=1
 

0
1
2
 
 
 
 
 
 
 
 

 0
!1
"2

 0
!1
"2
­
-regularization_losses
>layer_regularization_losses
?metrics
.trainable_variables

@layers
Anon_trainable_variables
Blayer_metrics
/	variables
 
 

0
 
 
 
 
 
 
 
 
4
	Ctotal
	Dcount
E	variables
F	keras_api
D
	Gtotal
	Hcount
I
_fn_kwargs
J	variables
K	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

C0
D1

E	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

G0
H1

J	variables

VARIABLE_VALUEAdam/embedding_9/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/gru_18/gru_cell_18/kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/gru_18/gru_cell_18/recurrent_kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/gru_18/gru_cell_18/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/embedding_9/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/gru_18/gru_cell_18/kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/gru_18/gru_cell_18/recurrent_kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/gru_18/gru_cell_18/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

!serving_default_embedding_9_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
Ö
StatefulPartitionedCallStatefulPartitionedCall!serving_default_embedding_9_inputembedding_9/embeddingsgru_18/gru_cell_18/kernelgru_18/gru_cell_18/bias#gru_18/gru_cell_18/recurrent_kerneldense_7/kerneldense_7/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_74343
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
·
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_9/embeddings/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-gru_18/gru_cell_18/kernel/Read/ReadVariableOp7gru_18/gru_cell_18/recurrent_kernel/Read/ReadVariableOp+gru_18/gru_cell_18/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1Adam/embedding_9/embeddings/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp4Adam/gru_18/gru_cell_18/kernel/m/Read/ReadVariableOp>Adam/gru_18/gru_cell_18/recurrent_kernel/m/Read/ReadVariableOp2Adam/gru_18/gru_cell_18/bias/m/Read/ReadVariableOp1Adam/embedding_9/embeddings/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOp4Adam/gru_18/gru_cell_18/kernel/v/Read/ReadVariableOp>Adam/gru_18/gru_cell_18/recurrent_kernel/v/Read/ReadVariableOp2Adam/gru_18/gru_cell_18/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_76330

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_9/embeddingsdense_7/kerneldense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rategru_18/gru_cell_18/kernel#gru_18/gru_cell_18/recurrent_kernelgru_18/gru_cell_18/biastotalcounttotal_1count_1Adam/embedding_9/embeddings/mAdam/dense_7/kernel/mAdam/dense_7/bias/m Adam/gru_18/gru_cell_18/kernel/m*Adam/gru_18/gru_cell_18/recurrent_kernel/mAdam/gru_18/gru_cell_18/bias/mAdam/embedding_9/embeddings/vAdam/dense_7/kernel/vAdam/dense_7/bias/v Adam/gru_18/gru_cell_18/kernel/v*Adam/gru_18/gru_cell_18/recurrent_kernel/vAdam/gru_18/gru_cell_18/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_76421¸"
»
¡
$sequential_9_gru_18_while_cond_72773D
@sequential_9_gru_18_while_sequential_9_gru_18_while_loop_counterJ
Fsequential_9_gru_18_while_sequential_9_gru_18_while_maximum_iterations)
%sequential_9_gru_18_while_placeholder+
'sequential_9_gru_18_while_placeholder_1+
'sequential_9_gru_18_while_placeholder_2F
Bsequential_9_gru_18_while_less_sequential_9_gru_18_strided_slice_1[
Wsequential_9_gru_18_while_sequential_9_gru_18_while_cond_72773___redundant_placeholder0[
Wsequential_9_gru_18_while_sequential_9_gru_18_while_cond_72773___redundant_placeholder1[
Wsequential_9_gru_18_while_sequential_9_gru_18_while_cond_72773___redundant_placeholder2[
Wsequential_9_gru_18_while_sequential_9_gru_18_while_cond_72773___redundant_placeholder3&
"sequential_9_gru_18_while_identity
Ô
sequential_9/gru_18/while/LessLess%sequential_9_gru_18_while_placeholderBsequential_9_gru_18_while_less_sequential_9_gru_18_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_9/gru_18/while/Less
"sequential_9/gru_18/while/IdentityIdentity"sequential_9/gru_18/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_9/gru_18/while/Identity"Q
"sequential_9_gru_18_while_identity+sequential_9/gru_18/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
¢
³	
while_body_75094
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
+while_gru_cell_18_readvariableop_resource_0:2;
-while_gru_cell_18_readvariableop_3_resource_0:?
-while_gru_cell_18_readvariableop_6_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
)while_gru_cell_18_readvariableop_resource:29
+while_gru_cell_18_readvariableop_3_resource:=
+while_gru_cell_18_readvariableop_6_resource:
¢ while/gru_cell_18/ReadVariableOp¢"while/gru_cell_18/ReadVariableOp_1¢"while/gru_cell_18/ReadVariableOp_2¢"while/gru_cell_18/ReadVariableOp_3¢"while/gru_cell_18/ReadVariableOp_4¢"while/gru_cell_18/ReadVariableOp_5¢"while/gru_cell_18/ReadVariableOp_6¢"while/gru_cell_18/ReadVariableOp_7¢"while/gru_cell_18/ReadVariableOp_8Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem°
 while/gru_cell_18/ReadVariableOpReadVariableOp+while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02"
 while/gru_cell_18/ReadVariableOp
%while/gru_cell_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_18/strided_slice/stack£
'while/gru_cell_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2)
'while/gru_cell_18/strided_slice/stack_1£
'while/gru_cell_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_18/strided_slice/stack_2è
while/gru_cell_18/strided_sliceStridedSlice(while/gru_cell_18/ReadVariableOp:value:0.while/gru_cell_18/strided_slice/stack:output:00while/gru_cell_18/strided_slice/stack_1:output:00while/gru_cell_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2!
while/gru_cell_18/strided_sliceÌ
while/gru_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0(while/gru_cell_18/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul´
"while/gru_cell_18/ReadVariableOp_1ReadVariableOp+while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02$
"while/gru_cell_18/ReadVariableOp_1£
'while/gru_cell_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2)
'while/gru_cell_18/strided_slice_1/stack§
)while/gru_cell_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/gru_cell_18/strided_slice_1/stack_1§
)while/gru_cell_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_1/stack_2ô
!while/gru_cell_18/strided_slice_1StridedSlice*while/gru_cell_18/ReadVariableOp_1:value:00while/gru_cell_18/strided_slice_1/stack:output:02while/gru_cell_18/strided_slice_1/stack_1:output:02while/gru_cell_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_1Ò
while/gru_cell_18/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0*while/gru_cell_18/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_1´
"while/gru_cell_18/ReadVariableOp_2ReadVariableOp+while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02$
"while/gru_cell_18/ReadVariableOp_2£
'while/gru_cell_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/gru_cell_18/strided_slice_2/stack§
)while/gru_cell_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_18/strided_slice_2/stack_1§
)while/gru_cell_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_2/stack_2ô
!while/gru_cell_18/strided_slice_2StridedSlice*while/gru_cell_18/ReadVariableOp_2:value:00while/gru_cell_18/strided_slice_2/stack:output:02while/gru_cell_18/strided_slice_2/stack_1:output:02while/gru_cell_18/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_2Ò
while/gru_cell_18/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0*while/gru_cell_18/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_2²
"while/gru_cell_18/ReadVariableOp_3ReadVariableOp-while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02$
"while/gru_cell_18/ReadVariableOp_3
'while/gru_cell_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'while/gru_cell_18/strided_slice_3/stack 
)while/gru_cell_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
2+
)while/gru_cell_18/strided_slice_3/stack_1 
)while/gru_cell_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_3/stack_2à
!while/gru_cell_18/strided_slice_3StridedSlice*while/gru_cell_18/ReadVariableOp_3:value:00while/gru_cell_18/strided_slice_3/stack:output:02while/gru_cell_18/strided_slice_3/stack_1:output:02while/gru_cell_18/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask2#
!while/gru_cell_18/strided_slice_3Ã
while/gru_cell_18/BiasAddBiasAdd"while/gru_cell_18/MatMul:product:0*while/gru_cell_18/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/BiasAdd²
"while/gru_cell_18/ReadVariableOp_4ReadVariableOp-while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02$
"while/gru_cell_18/ReadVariableOp_4
'while/gru_cell_18/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
2)
'while/gru_cell_18/strided_slice_4/stack 
)while/gru_cell_18/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_4/stack_1 
)while/gru_cell_18/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_4/stack_2Î
!while/gru_cell_18/strided_slice_4StridedSlice*while/gru_cell_18/ReadVariableOp_4:value:00while/gru_cell_18/strided_slice_4/stack:output:02while/gru_cell_18/strided_slice_4/stack_1:output:02while/gru_cell_18/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
2#
!while/gru_cell_18/strided_slice_4É
while/gru_cell_18/BiasAdd_1BiasAdd$while/gru_cell_18/MatMul_1:product:0*while/gru_cell_18/strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/BiasAdd_1²
"while/gru_cell_18/ReadVariableOp_5ReadVariableOp-while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02$
"while/gru_cell_18/ReadVariableOp_5
'while/gru_cell_18/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'while/gru_cell_18/strided_slice_5/stack 
)while/gru_cell_18/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)while/gru_cell_18/strided_slice_5/stack_1 
)while/gru_cell_18/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_5/stack_2Þ
!while/gru_cell_18/strided_slice_5StridedSlice*while/gru_cell_18/ReadVariableOp_5:value:00while/gru_cell_18/strided_slice_5/stack:output:02while/gru_cell_18/strided_slice_5/stack_1:output:02while/gru_cell_18/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask2#
!while/gru_cell_18/strided_slice_5É
while/gru_cell_18/BiasAdd_2BiasAdd$while/gru_cell_18/MatMul_2:product:0*while/gru_cell_18/strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/BiasAdd_2¶
"while/gru_cell_18/ReadVariableOp_6ReadVariableOp-while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02$
"while/gru_cell_18/ReadVariableOp_6£
'while/gru_cell_18/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/gru_cell_18/strided_slice_6/stack§
)while/gru_cell_18/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2+
)while/gru_cell_18/strided_slice_6/stack_1§
)while/gru_cell_18/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_6/stack_2ô
!while/gru_cell_18/strided_slice_6StridedSlice*while/gru_cell_18/ReadVariableOp_6:value:00while/gru_cell_18/strided_slice_6/stack:output:02while/gru_cell_18/strided_slice_6/stack_1:output:02while/gru_cell_18/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_6µ
while/gru_cell_18/MatMul_3MatMulwhile_placeholder_2*while/gru_cell_18/strided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_3¶
"while/gru_cell_18/ReadVariableOp_7ReadVariableOp-while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02$
"while/gru_cell_18/ReadVariableOp_7£
'while/gru_cell_18/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2)
'while/gru_cell_18/strided_slice_7/stack§
)while/gru_cell_18/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/gru_cell_18/strided_slice_7/stack_1§
)while/gru_cell_18/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_7/stack_2ô
!while/gru_cell_18/strided_slice_7StridedSlice*while/gru_cell_18/ReadVariableOp_7:value:00while/gru_cell_18/strided_slice_7/stack:output:02while/gru_cell_18/strided_slice_7/stack_1:output:02while/gru_cell_18/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_7µ
while/gru_cell_18/MatMul_4MatMulwhile_placeholder_2*while/gru_cell_18/strided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_4³
while/gru_cell_18/addAddV2"while/gru_cell_18/BiasAdd:output:0$while/gru_cell_18/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/addw
while/gru_cell_18/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/gru_cell_18/Const{
while/gru_cell_18/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/gru_cell_18/Const_1¤
while/gru_cell_18/MulMulwhile/gru_cell_18/add:z:0 while/gru_cell_18/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Mul¬
while/gru_cell_18/Add_1AddV2while/gru_cell_18/Mul:z:0"while/gru_cell_18/Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Add_1
)while/gru_cell_18/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)while/gru_cell_18/clip_by_value/Minimum/yà
'while/gru_cell_18/clip_by_value/MinimumMinimumwhile/gru_cell_18/Add_1:z:02while/gru_cell_18/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2)
'while/gru_cell_18/clip_by_value/Minimum
!while/gru_cell_18/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/gru_cell_18/clip_by_value/yØ
while/gru_cell_18/clip_by_valueMaximum+while/gru_cell_18/clip_by_value/Minimum:z:0*while/gru_cell_18/clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2!
while/gru_cell_18/clip_by_value¹
while/gru_cell_18/add_2AddV2$while/gru_cell_18/BiasAdd_1:output:0$while/gru_cell_18/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/add_2{
while/gru_cell_18/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/gru_cell_18/Const_2{
while/gru_cell_18/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/gru_cell_18/Const_3¬
while/gru_cell_18/Mul_1Mulwhile/gru_cell_18/add_2:z:0"while/gru_cell_18/Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Mul_1®
while/gru_cell_18/Add_3AddV2while/gru_cell_18/Mul_1:z:0"while/gru_cell_18/Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Add_3
+while/gru_cell_18/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/gru_cell_18/clip_by_value_1/Minimum/yæ
)while/gru_cell_18/clip_by_value_1/MinimumMinimumwhile/gru_cell_18/Add_3:z:04while/gru_cell_18/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2+
)while/gru_cell_18/clip_by_value_1/Minimum
#while/gru_cell_18/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/gru_cell_18/clip_by_value_1/yà
!while/gru_cell_18/clip_by_value_1Maximum-while/gru_cell_18/clip_by_value_1/Minimum:z:0,while/gru_cell_18/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!while/gru_cell_18/clip_by_value_1§
while/gru_cell_18/mul_2Mul%while/gru_cell_18/clip_by_value_1:z:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/mul_2¶
"while/gru_cell_18/ReadVariableOp_8ReadVariableOp-while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02$
"while/gru_cell_18/ReadVariableOp_8£
'while/gru_cell_18/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/gru_cell_18/strided_slice_8/stack§
)while/gru_cell_18/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_18/strided_slice_8/stack_1§
)while/gru_cell_18/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_8/stack_2ô
!while/gru_cell_18/strided_slice_8StridedSlice*while/gru_cell_18/ReadVariableOp_8:value:00while/gru_cell_18/strided_slice_8/stack:output:02while/gru_cell_18/strided_slice_8/stack_1:output:02while/gru_cell_18/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_8½
while/gru_cell_18/MatMul_5MatMulwhile/gru_cell_18/mul_2:z:0*while/gru_cell_18/strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_5¹
while/gru_cell_18/add_4AddV2$while/gru_cell_18/BiasAdd_2:output:0$while/gru_cell_18/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/add_4
while/gru_cell_18/TanhTanhwhile/gru_cell_18/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Tanh¥
while/gru_cell_18/mul_3Mul#while/gru_cell_18/clip_by_value:z:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/mul_3w
while/gru_cell_18/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_18/sub/x®
while/gru_cell_18/subSub while/gru_cell_18/sub/x:output:0#while/gru_cell_18/clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/sub¢
while/gru_cell_18/mul_4Mulwhile/gru_cell_18/sub:z:0while/gru_cell_18/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/mul_4§
while/gru_cell_18/add_5AddV2while/gru_cell_18/mul_3:z:0while/gru_cell_18/mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/add_5ß
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_18/add_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_18/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/Identity_4¥

while/NoOpNoOp!^while/gru_cell_18/ReadVariableOp#^while/gru_cell_18/ReadVariableOp_1#^while/gru_cell_18/ReadVariableOp_2#^while/gru_cell_18/ReadVariableOp_3#^while/gru_cell_18/ReadVariableOp_4#^while/gru_cell_18/ReadVariableOp_5#^while/gru_cell_18/ReadVariableOp_6#^while/gru_cell_18/ReadVariableOp_7#^while/gru_cell_18/ReadVariableOp_8*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"\
+while_gru_cell_18_readvariableop_3_resource-while_gru_cell_18_readvariableop_3_resource_0"\
+while_gru_cell_18_readvariableop_6_resource-while_gru_cell_18_readvariableop_6_resource_0"X
)while_gru_cell_18_readvariableop_resource+while_gru_cell_18_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : 2D
 while/gru_cell_18/ReadVariableOp while/gru_cell_18/ReadVariableOp2H
"while/gru_cell_18/ReadVariableOp_1"while/gru_cell_18/ReadVariableOp_12H
"while/gru_cell_18/ReadVariableOp_2"while/gru_cell_18/ReadVariableOp_22H
"while/gru_cell_18/ReadVariableOp_3"while/gru_cell_18/ReadVariableOp_32H
"while/gru_cell_18/ReadVariableOp_4"while/gru_cell_18/ReadVariableOp_42H
"while/gru_cell_18/ReadVariableOp_5"while/gru_cell_18/ReadVariableOp_52H
"while/gru_cell_18/ReadVariableOp_6"while/gru_cell_18/ReadVariableOp_62H
"while/gru_cell_18/ReadVariableOp_7"while/gru_cell_18/ReadVariableOp_72H
"while/gru_cell_18/ReadVariableOp_8"while/gru_cell_18/ReadVariableOp_8: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 


G__inference_sequential_9_layer_call_and_return_conditional_losses_74318
embedding_9_input%
embedding_9_74302:
Ù2
gru_18_74305:2
gru_18_74307:
gru_18_74309:

dense_7_74312:

dense_7_74314:
identity¢dense_7/StatefulPartitionedCall¢#embedding_9/StatefulPartitionedCall¢gru_18/StatefulPartitionedCall
#embedding_9/StatefulPartitionedCallStatefulPartitionedCallembedding_9_inputembedding_9_74302*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_9_layer_call_and_return_conditional_losses_736142%
#embedding_9/StatefulPartitionedCall½
gru_18/StatefulPartitionedCallStatefulPartitionedCall,embedding_9/StatefulPartitionedCall:output:0gru_18_74305gru_18_74307gru_18_74309*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_18_layer_call_and_return_conditional_losses_741932 
gru_18/StatefulPartitionedCall­
dense_7/StatefulPartitionedCallStatefulPartitionedCall'gru_18/StatefulPartitionedCall:output:0dense_7_74312dense_7_74314*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_738922!
dense_7/StatefulPartitionedCall
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity·
NoOpNoOp ^dense_7/StatefulPartitionedCall$^embedding_9/StatefulPartitionedCall^gru_18/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2J
#embedding_9/StatefulPartitionedCall#embedding_9/StatefulPartitionedCall2@
gru_18/StatefulPartitionedCallgru_18/StatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameembedding_9_input
®=
ù
A__inference_gru_18_layer_call_and_return_conditional_losses_73365

inputs#
gru_cell_18_73290:2
gru_cell_18_73292:#
gru_cell_18_73294:

identity¢#gru_cell_18/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2ì
#gru_cell_18/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_18_73290gru_cell_18_73292gru_cell_18_73294*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_gru_cell_18_layer_call_and_return_conditional_losses_732352%
#gru_cell_18/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÿ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_18_73290gru_cell_18_73292gru_cell_18_73294*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_73302*
condR
while_cond_73301*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
transpose_1s
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity|
NoOpNoOp$^gru_cell_18/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2J
#gru_cell_18/StatefulPartitionedCall#gru_cell_18/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
À
ç
 __inference__wrapped_model_72919
embedding_9_inputC
/sequential_9_embedding_9_embedding_lookup_72654:
Ù2I
7sequential_9_gru_18_gru_cell_18_readvariableop_resource:2G
9sequential_9_gru_18_gru_cell_18_readvariableop_3_resource:K
9sequential_9_gru_18_gru_cell_18_readvariableop_6_resource:
E
3sequential_9_dense_7_matmul_readvariableop_resource:
B
4sequential_9_dense_7_biasadd_readvariableop_resource:
identity¢+sequential_9/dense_7/BiasAdd/ReadVariableOp¢*sequential_9/dense_7/MatMul/ReadVariableOp¢)sequential_9/embedding_9/embedding_lookup¢.sequential_9/gru_18/gru_cell_18/ReadVariableOp¢0sequential_9/gru_18/gru_cell_18/ReadVariableOp_1¢0sequential_9/gru_18/gru_cell_18/ReadVariableOp_2¢0sequential_9/gru_18/gru_cell_18/ReadVariableOp_3¢0sequential_9/gru_18/gru_cell_18/ReadVariableOp_4¢0sequential_9/gru_18/gru_cell_18/ReadVariableOp_5¢0sequential_9/gru_18/gru_cell_18/ReadVariableOp_6¢0sequential_9/gru_18/gru_cell_18/ReadVariableOp_7¢0sequential_9/gru_18/gru_cell_18/ReadVariableOp_8¢sequential_9/gru_18/while
sequential_9/embedding_9/CastCastembedding_9_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_9/embedding_9/Castø
)sequential_9/embedding_9/embedding_lookupResourceGather/sequential_9_embedding_9_embedding_lookup_72654!sequential_9/embedding_9/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*B
_class8
64loc:@sequential_9/embedding_9/embedding_lookup/72654*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype02+
)sequential_9/embedding_9/embedding_lookupÐ
2sequential_9/embedding_9/embedding_lookup/IdentityIdentity2sequential_9/embedding_9/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*B
_class8
64loc:@sequential_9/embedding_9/embedding_lookup/72654*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ224
2sequential_9/embedding_9/embedding_lookup/Identityë
4sequential_9/embedding_9/embedding_lookup/Identity_1Identity;sequential_9/embedding_9/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ226
4sequential_9/embedding_9/embedding_lookup/Identity_1£
sequential_9/gru_18/ShapeShape=sequential_9/embedding_9/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
sequential_9/gru_18/Shape
'sequential_9/gru_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_9/gru_18/strided_slice/stack 
)sequential_9/gru_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_9/gru_18/strided_slice/stack_1 
)sequential_9/gru_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_9/gru_18/strided_slice/stack_2Ú
!sequential_9/gru_18/strided_sliceStridedSlice"sequential_9/gru_18/Shape:output:00sequential_9/gru_18/strided_slice/stack:output:02sequential_9/gru_18/strided_slice/stack_1:output:02sequential_9/gru_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_9/gru_18/strided_slice
sequential_9/gru_18/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2!
sequential_9/gru_18/zeros/mul/y¼
sequential_9/gru_18/zeros/mulMul*sequential_9/gru_18/strided_slice:output:0(sequential_9/gru_18/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_9/gru_18/zeros/mul
 sequential_9/gru_18/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2"
 sequential_9/gru_18/zeros/Less/y·
sequential_9/gru_18/zeros/LessLess!sequential_9/gru_18/zeros/mul:z:0)sequential_9/gru_18/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_9/gru_18/zeros/Less
"sequential_9/gru_18/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2$
"sequential_9/gru_18/zeros/packed/1Ó
 sequential_9/gru_18/zeros/packedPack*sequential_9/gru_18/strided_slice:output:0+sequential_9/gru_18/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_9/gru_18/zeros/packed
sequential_9/gru_18/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_9/gru_18/zeros/ConstÅ
sequential_9/gru_18/zerosFill)sequential_9/gru_18/zeros/packed:output:0(sequential_9/gru_18/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
sequential_9/gru_18/zeros
"sequential_9/gru_18/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_9/gru_18/transpose/permí
sequential_9/gru_18/transpose	Transpose=sequential_9/embedding_9/embedding_lookup/Identity_1:output:0+sequential_9/gru_18/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
sequential_9/gru_18/transpose
sequential_9/gru_18/Shape_1Shape!sequential_9/gru_18/transpose:y:0*
T0*
_output_shapes
:2
sequential_9/gru_18/Shape_1 
)sequential_9/gru_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_9/gru_18/strided_slice_1/stack¤
+sequential_9/gru_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_9/gru_18/strided_slice_1/stack_1¤
+sequential_9/gru_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_9/gru_18/strided_slice_1/stack_2æ
#sequential_9/gru_18/strided_slice_1StridedSlice$sequential_9/gru_18/Shape_1:output:02sequential_9/gru_18/strided_slice_1/stack:output:04sequential_9/gru_18/strided_slice_1/stack_1:output:04sequential_9/gru_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_9/gru_18/strided_slice_1­
/sequential_9/gru_18/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ21
/sequential_9/gru_18/TensorArrayV2/element_shape
!sequential_9/gru_18/TensorArrayV2TensorListReserve8sequential_9/gru_18/TensorArrayV2/element_shape:output:0,sequential_9/gru_18/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_9/gru_18/TensorArrayV2ç
Isequential_9/gru_18/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2K
Isequential_9/gru_18/TensorArrayUnstack/TensorListFromTensor/element_shapeÈ
;sequential_9/gru_18/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_9/gru_18/transpose:y:0Rsequential_9/gru_18/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_9/gru_18/TensorArrayUnstack/TensorListFromTensor 
)sequential_9/gru_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_9/gru_18/strided_slice_2/stack¤
+sequential_9/gru_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_9/gru_18/strided_slice_2/stack_1¤
+sequential_9/gru_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_9/gru_18/strided_slice_2/stack_2ô
#sequential_9/gru_18/strided_slice_2StridedSlice!sequential_9/gru_18/transpose:y:02sequential_9/gru_18/strided_slice_2/stack:output:04sequential_9/gru_18/strided_slice_2/stack_1:output:04sequential_9/gru_18/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2%
#sequential_9/gru_18/strided_slice_2Ø
.sequential_9/gru_18/gru_cell_18/ReadVariableOpReadVariableOp7sequential_9_gru_18_gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype020
.sequential_9/gru_18/gru_cell_18/ReadVariableOp»
3sequential_9/gru_18/gru_cell_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        25
3sequential_9/gru_18/gru_cell_18/strided_slice/stack¿
5sequential_9/gru_18/gru_cell_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   27
5sequential_9/gru_18/gru_cell_18/strided_slice/stack_1¿
5sequential_9/gru_18/gru_cell_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5sequential_9/gru_18/gru_cell_18/strided_slice/stack_2¼
-sequential_9/gru_18/gru_cell_18/strided_sliceStridedSlice6sequential_9/gru_18/gru_cell_18/ReadVariableOp:value:0<sequential_9/gru_18/gru_cell_18/strided_slice/stack:output:0>sequential_9/gru_18/gru_cell_18/strided_slice/stack_1:output:0>sequential_9/gru_18/gru_cell_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2/
-sequential_9/gru_18/gru_cell_18/strided_sliceò
&sequential_9/gru_18/gru_cell_18/MatMulMatMul,sequential_9/gru_18/strided_slice_2:output:06sequential_9/gru_18/gru_cell_18/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2(
&sequential_9/gru_18/gru_cell_18/MatMulÜ
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_1ReadVariableOp7sequential_9_gru_18_gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype022
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_1¿
5sequential_9/gru_18/gru_cell_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   27
5sequential_9/gru_18/gru_cell_18/strided_slice_1/stackÃ
7sequential_9/gru_18/gru_cell_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       29
7sequential_9/gru_18/gru_cell_18/strided_slice_1/stack_1Ã
7sequential_9/gru_18/gru_cell_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_9/gru_18/gru_cell_18/strided_slice_1/stack_2È
/sequential_9/gru_18/gru_cell_18/strided_slice_1StridedSlice8sequential_9/gru_18/gru_cell_18/ReadVariableOp_1:value:0>sequential_9/gru_18/gru_cell_18/strided_slice_1/stack:output:0@sequential_9/gru_18/gru_cell_18/strided_slice_1/stack_1:output:0@sequential_9/gru_18/gru_cell_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask21
/sequential_9/gru_18/gru_cell_18/strided_slice_1ø
(sequential_9/gru_18/gru_cell_18/MatMul_1MatMul,sequential_9/gru_18/strided_slice_2:output:08sequential_9/gru_18/gru_cell_18/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2*
(sequential_9/gru_18/gru_cell_18/MatMul_1Ü
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_2ReadVariableOp7sequential_9_gru_18_gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype022
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_2¿
5sequential_9/gru_18/gru_cell_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       27
5sequential_9/gru_18/gru_cell_18/strided_slice_2/stackÃ
7sequential_9/gru_18/gru_cell_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_9/gru_18/gru_cell_18/strided_slice_2/stack_1Ã
7sequential_9/gru_18/gru_cell_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_9/gru_18/gru_cell_18/strided_slice_2/stack_2È
/sequential_9/gru_18/gru_cell_18/strided_slice_2StridedSlice8sequential_9/gru_18/gru_cell_18/ReadVariableOp_2:value:0>sequential_9/gru_18/gru_cell_18/strided_slice_2/stack:output:0@sequential_9/gru_18/gru_cell_18/strided_slice_2/stack_1:output:0@sequential_9/gru_18/gru_cell_18/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask21
/sequential_9/gru_18/gru_cell_18/strided_slice_2ø
(sequential_9/gru_18/gru_cell_18/MatMul_2MatMul,sequential_9/gru_18/strided_slice_2:output:08sequential_9/gru_18/gru_cell_18/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2*
(sequential_9/gru_18/gru_cell_18/MatMul_2Ú
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_3ReadVariableOp9sequential_9_gru_18_gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype022
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_3¸
5sequential_9/gru_18/gru_cell_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_9/gru_18/gru_cell_18/strided_slice_3/stack¼
7sequential_9/gru_18/gru_cell_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
29
7sequential_9/gru_18/gru_cell_18/strided_slice_3/stack_1¼
7sequential_9/gru_18/gru_cell_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_9/gru_18/gru_cell_18/strided_slice_3/stack_2´
/sequential_9/gru_18/gru_cell_18/strided_slice_3StridedSlice8sequential_9/gru_18/gru_cell_18/ReadVariableOp_3:value:0>sequential_9/gru_18/gru_cell_18/strided_slice_3/stack:output:0@sequential_9/gru_18/gru_cell_18/strided_slice_3/stack_1:output:0@sequential_9/gru_18/gru_cell_18/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask21
/sequential_9/gru_18/gru_cell_18/strided_slice_3û
'sequential_9/gru_18/gru_cell_18/BiasAddBiasAdd0sequential_9/gru_18/gru_cell_18/MatMul:product:08sequential_9/gru_18/gru_cell_18/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2)
'sequential_9/gru_18/gru_cell_18/BiasAddÚ
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_4ReadVariableOp9sequential_9_gru_18_gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype022
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_4¸
5sequential_9/gru_18/gru_cell_18/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
27
5sequential_9/gru_18/gru_cell_18/strided_slice_4/stack¼
7sequential_9/gru_18/gru_cell_18/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_9/gru_18/gru_cell_18/strided_slice_4/stack_1¼
7sequential_9/gru_18/gru_cell_18/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_9/gru_18/gru_cell_18/strided_slice_4/stack_2¢
/sequential_9/gru_18/gru_cell_18/strided_slice_4StridedSlice8sequential_9/gru_18/gru_cell_18/ReadVariableOp_4:value:0>sequential_9/gru_18/gru_cell_18/strided_slice_4/stack:output:0@sequential_9/gru_18/gru_cell_18/strided_slice_4/stack_1:output:0@sequential_9/gru_18/gru_cell_18/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
21
/sequential_9/gru_18/gru_cell_18/strided_slice_4
)sequential_9/gru_18/gru_cell_18/BiasAdd_1BiasAdd2sequential_9/gru_18/gru_cell_18/MatMul_1:product:08sequential_9/gru_18/gru_cell_18/strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2+
)sequential_9/gru_18/gru_cell_18/BiasAdd_1Ú
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_5ReadVariableOp9sequential_9_gru_18_gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype022
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_5¸
5sequential_9/gru_18/gru_cell_18/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5sequential_9/gru_18/gru_cell_18/strided_slice_5/stack¼
7sequential_9/gru_18/gru_cell_18/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_9/gru_18/gru_cell_18/strided_slice_5/stack_1¼
7sequential_9/gru_18/gru_cell_18/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_9/gru_18/gru_cell_18/strided_slice_5/stack_2²
/sequential_9/gru_18/gru_cell_18/strided_slice_5StridedSlice8sequential_9/gru_18/gru_cell_18/ReadVariableOp_5:value:0>sequential_9/gru_18/gru_cell_18/strided_slice_5/stack:output:0@sequential_9/gru_18/gru_cell_18/strided_slice_5/stack_1:output:0@sequential_9/gru_18/gru_cell_18/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask21
/sequential_9/gru_18/gru_cell_18/strided_slice_5
)sequential_9/gru_18/gru_cell_18/BiasAdd_2BiasAdd2sequential_9/gru_18/gru_cell_18/MatMul_2:product:08sequential_9/gru_18/gru_cell_18/strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2+
)sequential_9/gru_18/gru_cell_18/BiasAdd_2Þ
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_6ReadVariableOp9sequential_9_gru_18_gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype022
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_6¿
5sequential_9/gru_18/gru_cell_18/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5sequential_9/gru_18/gru_cell_18/strided_slice_6/stackÃ
7sequential_9/gru_18/gru_cell_18/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   29
7sequential_9/gru_18/gru_cell_18/strided_slice_6/stack_1Ã
7sequential_9/gru_18/gru_cell_18/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_9/gru_18/gru_cell_18/strided_slice_6/stack_2È
/sequential_9/gru_18/gru_cell_18/strided_slice_6StridedSlice8sequential_9/gru_18/gru_cell_18/ReadVariableOp_6:value:0>sequential_9/gru_18/gru_cell_18/strided_slice_6/stack:output:0@sequential_9/gru_18/gru_cell_18/strided_slice_6/stack_1:output:0@sequential_9/gru_18/gru_cell_18/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask21
/sequential_9/gru_18/gru_cell_18/strided_slice_6î
(sequential_9/gru_18/gru_cell_18/MatMul_3MatMul"sequential_9/gru_18/zeros:output:08sequential_9/gru_18/gru_cell_18/strided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2*
(sequential_9/gru_18/gru_cell_18/MatMul_3Þ
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_7ReadVariableOp9sequential_9_gru_18_gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype022
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_7¿
5sequential_9/gru_18/gru_cell_18/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   27
5sequential_9/gru_18/gru_cell_18/strided_slice_7/stackÃ
7sequential_9/gru_18/gru_cell_18/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       29
7sequential_9/gru_18/gru_cell_18/strided_slice_7/stack_1Ã
7sequential_9/gru_18/gru_cell_18/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_9/gru_18/gru_cell_18/strided_slice_7/stack_2È
/sequential_9/gru_18/gru_cell_18/strided_slice_7StridedSlice8sequential_9/gru_18/gru_cell_18/ReadVariableOp_7:value:0>sequential_9/gru_18/gru_cell_18/strided_slice_7/stack:output:0@sequential_9/gru_18/gru_cell_18/strided_slice_7/stack_1:output:0@sequential_9/gru_18/gru_cell_18/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask21
/sequential_9/gru_18/gru_cell_18/strided_slice_7î
(sequential_9/gru_18/gru_cell_18/MatMul_4MatMul"sequential_9/gru_18/zeros:output:08sequential_9/gru_18/gru_cell_18/strided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2*
(sequential_9/gru_18/gru_cell_18/MatMul_4ë
#sequential_9/gru_18/gru_cell_18/addAddV20sequential_9/gru_18/gru_cell_18/BiasAdd:output:02sequential_9/gru_18/gru_cell_18/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2%
#sequential_9/gru_18/gru_cell_18/add
%sequential_9/gru_18/gru_cell_18/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%sequential_9/gru_18/gru_cell_18/Const
'sequential_9/gru_18/gru_cell_18/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2)
'sequential_9/gru_18/gru_cell_18/Const_1Ü
#sequential_9/gru_18/gru_cell_18/MulMul'sequential_9/gru_18/gru_cell_18/add:z:0.sequential_9/gru_18/gru_cell_18/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2%
#sequential_9/gru_18/gru_cell_18/Mulä
%sequential_9/gru_18/gru_cell_18/Add_1AddV2'sequential_9/gru_18/gru_cell_18/Mul:z:00sequential_9/gru_18/gru_cell_18/Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2'
%sequential_9/gru_18/gru_cell_18/Add_1·
7sequential_9/gru_18/gru_cell_18/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7sequential_9/gru_18/gru_cell_18/clip_by_value/Minimum/y
5sequential_9/gru_18/gru_cell_18/clip_by_value/MinimumMinimum)sequential_9/gru_18/gru_cell_18/Add_1:z:0@sequential_9/gru_18/gru_cell_18/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
27
5sequential_9/gru_18/gru_cell_18/clip_by_value/Minimum§
/sequential_9/gru_18/gru_cell_18/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    21
/sequential_9/gru_18/gru_cell_18/clip_by_value/y
-sequential_9/gru_18/gru_cell_18/clip_by_valueMaximum9sequential_9/gru_18/gru_cell_18/clip_by_value/Minimum:z:08sequential_9/gru_18/gru_cell_18/clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2/
-sequential_9/gru_18/gru_cell_18/clip_by_valueñ
%sequential_9/gru_18/gru_cell_18/add_2AddV22sequential_9/gru_18/gru_cell_18/BiasAdd_1:output:02sequential_9/gru_18/gru_cell_18/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2'
%sequential_9/gru_18/gru_cell_18/add_2
'sequential_9/gru_18/gru_cell_18/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2)
'sequential_9/gru_18/gru_cell_18/Const_2
'sequential_9/gru_18/gru_cell_18/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2)
'sequential_9/gru_18/gru_cell_18/Const_3ä
%sequential_9/gru_18/gru_cell_18/Mul_1Mul)sequential_9/gru_18/gru_cell_18/add_2:z:00sequential_9/gru_18/gru_cell_18/Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2'
%sequential_9/gru_18/gru_cell_18/Mul_1æ
%sequential_9/gru_18/gru_cell_18/Add_3AddV2)sequential_9/gru_18/gru_cell_18/Mul_1:z:00sequential_9/gru_18/gru_cell_18/Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2'
%sequential_9/gru_18/gru_cell_18/Add_3»
9sequential_9/gru_18/gru_cell_18/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2;
9sequential_9/gru_18/gru_cell_18/clip_by_value_1/Minimum/y
7sequential_9/gru_18/gru_cell_18/clip_by_value_1/MinimumMinimum)sequential_9/gru_18/gru_cell_18/Add_3:z:0Bsequential_9/gru_18/gru_cell_18/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
29
7sequential_9/gru_18/gru_cell_18/clip_by_value_1/Minimum«
1sequential_9/gru_18/gru_cell_18/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    23
1sequential_9/gru_18/gru_cell_18/clip_by_value_1/y
/sequential_9/gru_18/gru_cell_18/clip_by_value_1Maximum;sequential_9/gru_18/gru_cell_18/clip_by_value_1/Minimum:z:0:sequential_9/gru_18/gru_cell_18/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
21
/sequential_9/gru_18/gru_cell_18/clip_by_value_1à
%sequential_9/gru_18/gru_cell_18/mul_2Mul3sequential_9/gru_18/gru_cell_18/clip_by_value_1:z:0"sequential_9/gru_18/zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2'
%sequential_9/gru_18/gru_cell_18/mul_2Þ
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_8ReadVariableOp9sequential_9_gru_18_gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype022
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_8¿
5sequential_9/gru_18/gru_cell_18/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       27
5sequential_9/gru_18/gru_cell_18/strided_slice_8/stackÃ
7sequential_9/gru_18/gru_cell_18/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_9/gru_18/gru_cell_18/strided_slice_8/stack_1Ã
7sequential_9/gru_18/gru_cell_18/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_9/gru_18/gru_cell_18/strided_slice_8/stack_2È
/sequential_9/gru_18/gru_cell_18/strided_slice_8StridedSlice8sequential_9/gru_18/gru_cell_18/ReadVariableOp_8:value:0>sequential_9/gru_18/gru_cell_18/strided_slice_8/stack:output:0@sequential_9/gru_18/gru_cell_18/strided_slice_8/stack_1:output:0@sequential_9/gru_18/gru_cell_18/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask21
/sequential_9/gru_18/gru_cell_18/strided_slice_8õ
(sequential_9/gru_18/gru_cell_18/MatMul_5MatMul)sequential_9/gru_18/gru_cell_18/mul_2:z:08sequential_9/gru_18/gru_cell_18/strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2*
(sequential_9/gru_18/gru_cell_18/MatMul_5ñ
%sequential_9/gru_18/gru_cell_18/add_4AddV22sequential_9/gru_18/gru_cell_18/BiasAdd_2:output:02sequential_9/gru_18/gru_cell_18/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2'
%sequential_9/gru_18/gru_cell_18/add_4±
$sequential_9/gru_18/gru_cell_18/TanhTanh)sequential_9/gru_18/gru_cell_18/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2&
$sequential_9/gru_18/gru_cell_18/TanhÞ
%sequential_9/gru_18/gru_cell_18/mul_3Mul1sequential_9/gru_18/gru_cell_18/clip_by_value:z:0"sequential_9/gru_18/zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2'
%sequential_9/gru_18/gru_cell_18/mul_3
%sequential_9/gru_18/gru_cell_18/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%sequential_9/gru_18/gru_cell_18/sub/xæ
#sequential_9/gru_18/gru_cell_18/subSub.sequential_9/gru_18/gru_cell_18/sub/x:output:01sequential_9/gru_18/gru_cell_18/clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2%
#sequential_9/gru_18/gru_cell_18/subÚ
%sequential_9/gru_18/gru_cell_18/mul_4Mul'sequential_9/gru_18/gru_cell_18/sub:z:0(sequential_9/gru_18/gru_cell_18/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2'
%sequential_9/gru_18/gru_cell_18/mul_4ß
%sequential_9/gru_18/gru_cell_18/add_5AddV2)sequential_9/gru_18/gru_cell_18/mul_3:z:0)sequential_9/gru_18/gru_cell_18/mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2'
%sequential_9/gru_18/gru_cell_18/add_5·
1sequential_9/gru_18/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   23
1sequential_9/gru_18/TensorArrayV2_1/element_shape
#sequential_9/gru_18/TensorArrayV2_1TensorListReserve:sequential_9/gru_18/TensorArrayV2_1/element_shape:output:0,sequential_9/gru_18/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_9/gru_18/TensorArrayV2_1v
sequential_9/gru_18/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_9/gru_18/time§
,sequential_9/gru_18/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2.
,sequential_9/gru_18/while/maximum_iterations
&sequential_9/gru_18/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_9/gru_18/while/loop_counterÑ
sequential_9/gru_18/whileWhile/sequential_9/gru_18/while/loop_counter:output:05sequential_9/gru_18/while/maximum_iterations:output:0!sequential_9/gru_18/time:output:0,sequential_9/gru_18/TensorArrayV2_1:handle:0"sequential_9/gru_18/zeros:output:0,sequential_9/gru_18/strided_slice_1:output:0Ksequential_9/gru_18/TensorArrayUnstack/TensorListFromTensor:output_handle:07sequential_9_gru_18_gru_cell_18_readvariableop_resource9sequential_9_gru_18_gru_cell_18_readvariableop_3_resource9sequential_9_gru_18_gru_cell_18_readvariableop_6_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *0
body(R&
$sequential_9_gru_18_while_body_72774*0
cond(R&
$sequential_9_gru_18_while_cond_72773*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 2
sequential_9/gru_18/whileÝ
Dsequential_9/gru_18/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   2F
Dsequential_9/gru_18/TensorArrayV2Stack/TensorListStack/element_shape¸
6sequential_9/gru_18/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_9/gru_18/while:output:3Msequential_9/gru_18/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype028
6sequential_9/gru_18/TensorArrayV2Stack/TensorListStack©
)sequential_9/gru_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2+
)sequential_9/gru_18/strided_slice_3/stack¤
+sequential_9/gru_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_9/gru_18/strided_slice_3/stack_1¤
+sequential_9/gru_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_9/gru_18/strided_slice_3/stack_2
#sequential_9/gru_18/strided_slice_3StridedSlice?sequential_9/gru_18/TensorArrayV2Stack/TensorListStack:tensor:02sequential_9/gru_18/strided_slice_3/stack:output:04sequential_9/gru_18/strided_slice_3/stack_1:output:04sequential_9/gru_18/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask2%
#sequential_9/gru_18/strided_slice_3¡
$sequential_9/gru_18/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_9/gru_18/transpose_1/permõ
sequential_9/gru_18/transpose_1	Transpose?sequential_9/gru_18/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_9/gru_18/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2!
sequential_9/gru_18/transpose_1Ì
*sequential_9/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_9_dense_7_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02,
*sequential_9/dense_7/MatMul/ReadVariableOpØ
sequential_9/dense_7/MatMulMatMul,sequential_9/gru_18/strided_slice_3:output:02sequential_9/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_9/dense_7/MatMulË
+sequential_9/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_9_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_9/dense_7/BiasAdd/ReadVariableOpÕ
sequential_9/dense_7/BiasAddBiasAdd%sequential_9/dense_7/MatMul:product:03sequential_9/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_9/dense_7/BiasAdd 
sequential_9/dense_7/SigmoidSigmoid%sequential_9/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_9/dense_7/Sigmoid{
IdentityIdentity sequential_9/dense_7/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityº
NoOpNoOp,^sequential_9/dense_7/BiasAdd/ReadVariableOp+^sequential_9/dense_7/MatMul/ReadVariableOp*^sequential_9/embedding_9/embedding_lookup/^sequential_9/gru_18/gru_cell_18/ReadVariableOp1^sequential_9/gru_18/gru_cell_18/ReadVariableOp_11^sequential_9/gru_18/gru_cell_18/ReadVariableOp_21^sequential_9/gru_18/gru_cell_18/ReadVariableOp_31^sequential_9/gru_18/gru_cell_18/ReadVariableOp_41^sequential_9/gru_18/gru_cell_18/ReadVariableOp_51^sequential_9/gru_18/gru_cell_18/ReadVariableOp_61^sequential_9/gru_18/gru_cell_18/ReadVariableOp_71^sequential_9/gru_18/gru_cell_18/ReadVariableOp_8^sequential_9/gru_18/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2Z
+sequential_9/dense_7/BiasAdd/ReadVariableOp+sequential_9/dense_7/BiasAdd/ReadVariableOp2X
*sequential_9/dense_7/MatMul/ReadVariableOp*sequential_9/dense_7/MatMul/ReadVariableOp2V
)sequential_9/embedding_9/embedding_lookup)sequential_9/embedding_9/embedding_lookup2`
.sequential_9/gru_18/gru_cell_18/ReadVariableOp.sequential_9/gru_18/gru_cell_18/ReadVariableOp2d
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_10sequential_9/gru_18/gru_cell_18/ReadVariableOp_12d
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_20sequential_9/gru_18/gru_cell_18/ReadVariableOp_22d
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_30sequential_9/gru_18/gru_cell_18/ReadVariableOp_32d
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_40sequential_9/gru_18/gru_cell_18/ReadVariableOp_42d
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_50sequential_9/gru_18/gru_cell_18/ReadVariableOp_52d
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_60sequential_9/gru_18/gru_cell_18/ReadVariableOp_62d
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_70sequential_9/gru_18/gru_cell_18/ReadVariableOp_72d
0sequential_9/gru_18/gru_cell_18/ReadVariableOp_80sequential_9/gru_18/gru_cell_18/ReadVariableOp_826
sequential_9/gru_18/whilesequential_9/gru_18/while:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameembedding_9_input
õ

G__inference_sequential_9_layer_call_and_return_conditional_losses_74248

inputs%
embedding_9_74232:
Ù2
gru_18_74235:2
gru_18_74237:
gru_18_74239:

dense_7_74242:

dense_7_74244:
identity¢dense_7/StatefulPartitionedCall¢#embedding_9/StatefulPartitionedCall¢gru_18/StatefulPartitionedCall
#embedding_9/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_9_74232*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_9_layer_call_and_return_conditional_losses_736142%
#embedding_9/StatefulPartitionedCall½
gru_18/StatefulPartitionedCallStatefulPartitionedCall,embedding_9/StatefulPartitionedCall:output:0gru_18_74235gru_18_74237gru_18_74239*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_18_layer_call_and_return_conditional_losses_741932 
gru_18/StatefulPartitionedCall­
dense_7/StatefulPartitionedCallStatefulPartitionedCall'gru_18/StatefulPartitionedCall:output:0dense_7_74242dense_7_74244*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_738922!
dense_7/StatefulPartitionedCall
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity·
NoOpNoOp ^dense_7/StatefulPartitionedCall$^embedding_9/StatefulPartitionedCall^gru_18/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2J
#embedding_9/StatefulPartitionedCall#embedding_9/StatefulPartitionedCall2@
gru_18/StatefulPartitionedCallgru_18/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ
¥
while_cond_75349
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_75349___redundant_placeholder03
/while_while_cond_75349___redundant_placeholder13
/while_while_cond_75349___redundant_placeholder23
/while_while_cond_75349___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
¥	

,__inference_sequential_9_layer_call_fn_74360

inputs
unknown:
Ù2
	unknown_0:2
	unknown_1:
	unknown_2:

	unknown_3:

	unknown_4:
identity¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_738992
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
³	
while_body_74055
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
+while_gru_cell_18_readvariableop_resource_0:2;
-while_gru_cell_18_readvariableop_3_resource_0:?
-while_gru_cell_18_readvariableop_6_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
)while_gru_cell_18_readvariableop_resource:29
+while_gru_cell_18_readvariableop_3_resource:=
+while_gru_cell_18_readvariableop_6_resource:
¢ while/gru_cell_18/ReadVariableOp¢"while/gru_cell_18/ReadVariableOp_1¢"while/gru_cell_18/ReadVariableOp_2¢"while/gru_cell_18/ReadVariableOp_3¢"while/gru_cell_18/ReadVariableOp_4¢"while/gru_cell_18/ReadVariableOp_5¢"while/gru_cell_18/ReadVariableOp_6¢"while/gru_cell_18/ReadVariableOp_7¢"while/gru_cell_18/ReadVariableOp_8Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem°
 while/gru_cell_18/ReadVariableOpReadVariableOp+while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02"
 while/gru_cell_18/ReadVariableOp
%while/gru_cell_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_18/strided_slice/stack£
'while/gru_cell_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2)
'while/gru_cell_18/strided_slice/stack_1£
'while/gru_cell_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_18/strided_slice/stack_2è
while/gru_cell_18/strided_sliceStridedSlice(while/gru_cell_18/ReadVariableOp:value:0.while/gru_cell_18/strided_slice/stack:output:00while/gru_cell_18/strided_slice/stack_1:output:00while/gru_cell_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2!
while/gru_cell_18/strided_sliceÌ
while/gru_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0(while/gru_cell_18/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul´
"while/gru_cell_18/ReadVariableOp_1ReadVariableOp+while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02$
"while/gru_cell_18/ReadVariableOp_1£
'while/gru_cell_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2)
'while/gru_cell_18/strided_slice_1/stack§
)while/gru_cell_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/gru_cell_18/strided_slice_1/stack_1§
)while/gru_cell_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_1/stack_2ô
!while/gru_cell_18/strided_slice_1StridedSlice*while/gru_cell_18/ReadVariableOp_1:value:00while/gru_cell_18/strided_slice_1/stack:output:02while/gru_cell_18/strided_slice_1/stack_1:output:02while/gru_cell_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_1Ò
while/gru_cell_18/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0*while/gru_cell_18/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_1´
"while/gru_cell_18/ReadVariableOp_2ReadVariableOp+while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02$
"while/gru_cell_18/ReadVariableOp_2£
'while/gru_cell_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/gru_cell_18/strided_slice_2/stack§
)while/gru_cell_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_18/strided_slice_2/stack_1§
)while/gru_cell_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_2/stack_2ô
!while/gru_cell_18/strided_slice_2StridedSlice*while/gru_cell_18/ReadVariableOp_2:value:00while/gru_cell_18/strided_slice_2/stack:output:02while/gru_cell_18/strided_slice_2/stack_1:output:02while/gru_cell_18/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_2Ò
while/gru_cell_18/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0*while/gru_cell_18/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_2²
"while/gru_cell_18/ReadVariableOp_3ReadVariableOp-while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02$
"while/gru_cell_18/ReadVariableOp_3
'while/gru_cell_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'while/gru_cell_18/strided_slice_3/stack 
)while/gru_cell_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
2+
)while/gru_cell_18/strided_slice_3/stack_1 
)while/gru_cell_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_3/stack_2à
!while/gru_cell_18/strided_slice_3StridedSlice*while/gru_cell_18/ReadVariableOp_3:value:00while/gru_cell_18/strided_slice_3/stack:output:02while/gru_cell_18/strided_slice_3/stack_1:output:02while/gru_cell_18/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask2#
!while/gru_cell_18/strided_slice_3Ã
while/gru_cell_18/BiasAddBiasAdd"while/gru_cell_18/MatMul:product:0*while/gru_cell_18/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/BiasAdd²
"while/gru_cell_18/ReadVariableOp_4ReadVariableOp-while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02$
"while/gru_cell_18/ReadVariableOp_4
'while/gru_cell_18/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
2)
'while/gru_cell_18/strided_slice_4/stack 
)while/gru_cell_18/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_4/stack_1 
)while/gru_cell_18/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_4/stack_2Î
!while/gru_cell_18/strided_slice_4StridedSlice*while/gru_cell_18/ReadVariableOp_4:value:00while/gru_cell_18/strided_slice_4/stack:output:02while/gru_cell_18/strided_slice_4/stack_1:output:02while/gru_cell_18/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
2#
!while/gru_cell_18/strided_slice_4É
while/gru_cell_18/BiasAdd_1BiasAdd$while/gru_cell_18/MatMul_1:product:0*while/gru_cell_18/strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/BiasAdd_1²
"while/gru_cell_18/ReadVariableOp_5ReadVariableOp-while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02$
"while/gru_cell_18/ReadVariableOp_5
'while/gru_cell_18/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'while/gru_cell_18/strided_slice_5/stack 
)while/gru_cell_18/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)while/gru_cell_18/strided_slice_5/stack_1 
)while/gru_cell_18/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_5/stack_2Þ
!while/gru_cell_18/strided_slice_5StridedSlice*while/gru_cell_18/ReadVariableOp_5:value:00while/gru_cell_18/strided_slice_5/stack:output:02while/gru_cell_18/strided_slice_5/stack_1:output:02while/gru_cell_18/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask2#
!while/gru_cell_18/strided_slice_5É
while/gru_cell_18/BiasAdd_2BiasAdd$while/gru_cell_18/MatMul_2:product:0*while/gru_cell_18/strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/BiasAdd_2¶
"while/gru_cell_18/ReadVariableOp_6ReadVariableOp-while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02$
"while/gru_cell_18/ReadVariableOp_6£
'while/gru_cell_18/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/gru_cell_18/strided_slice_6/stack§
)while/gru_cell_18/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2+
)while/gru_cell_18/strided_slice_6/stack_1§
)while/gru_cell_18/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_6/stack_2ô
!while/gru_cell_18/strided_slice_6StridedSlice*while/gru_cell_18/ReadVariableOp_6:value:00while/gru_cell_18/strided_slice_6/stack:output:02while/gru_cell_18/strided_slice_6/stack_1:output:02while/gru_cell_18/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_6µ
while/gru_cell_18/MatMul_3MatMulwhile_placeholder_2*while/gru_cell_18/strided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_3¶
"while/gru_cell_18/ReadVariableOp_7ReadVariableOp-while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02$
"while/gru_cell_18/ReadVariableOp_7£
'while/gru_cell_18/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2)
'while/gru_cell_18/strided_slice_7/stack§
)while/gru_cell_18/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/gru_cell_18/strided_slice_7/stack_1§
)while/gru_cell_18/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_7/stack_2ô
!while/gru_cell_18/strided_slice_7StridedSlice*while/gru_cell_18/ReadVariableOp_7:value:00while/gru_cell_18/strided_slice_7/stack:output:02while/gru_cell_18/strided_slice_7/stack_1:output:02while/gru_cell_18/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_7µ
while/gru_cell_18/MatMul_4MatMulwhile_placeholder_2*while/gru_cell_18/strided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_4³
while/gru_cell_18/addAddV2"while/gru_cell_18/BiasAdd:output:0$while/gru_cell_18/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/addw
while/gru_cell_18/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/gru_cell_18/Const{
while/gru_cell_18/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/gru_cell_18/Const_1¤
while/gru_cell_18/MulMulwhile/gru_cell_18/add:z:0 while/gru_cell_18/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Mul¬
while/gru_cell_18/Add_1AddV2while/gru_cell_18/Mul:z:0"while/gru_cell_18/Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Add_1
)while/gru_cell_18/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)while/gru_cell_18/clip_by_value/Minimum/yà
'while/gru_cell_18/clip_by_value/MinimumMinimumwhile/gru_cell_18/Add_1:z:02while/gru_cell_18/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2)
'while/gru_cell_18/clip_by_value/Minimum
!while/gru_cell_18/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/gru_cell_18/clip_by_value/yØ
while/gru_cell_18/clip_by_valueMaximum+while/gru_cell_18/clip_by_value/Minimum:z:0*while/gru_cell_18/clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2!
while/gru_cell_18/clip_by_value¹
while/gru_cell_18/add_2AddV2$while/gru_cell_18/BiasAdd_1:output:0$while/gru_cell_18/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/add_2{
while/gru_cell_18/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/gru_cell_18/Const_2{
while/gru_cell_18/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/gru_cell_18/Const_3¬
while/gru_cell_18/Mul_1Mulwhile/gru_cell_18/add_2:z:0"while/gru_cell_18/Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Mul_1®
while/gru_cell_18/Add_3AddV2while/gru_cell_18/Mul_1:z:0"while/gru_cell_18/Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Add_3
+while/gru_cell_18/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/gru_cell_18/clip_by_value_1/Minimum/yæ
)while/gru_cell_18/clip_by_value_1/MinimumMinimumwhile/gru_cell_18/Add_3:z:04while/gru_cell_18/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2+
)while/gru_cell_18/clip_by_value_1/Minimum
#while/gru_cell_18/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/gru_cell_18/clip_by_value_1/yà
!while/gru_cell_18/clip_by_value_1Maximum-while/gru_cell_18/clip_by_value_1/Minimum:z:0,while/gru_cell_18/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!while/gru_cell_18/clip_by_value_1§
while/gru_cell_18/mul_2Mul%while/gru_cell_18/clip_by_value_1:z:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/mul_2¶
"while/gru_cell_18/ReadVariableOp_8ReadVariableOp-while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02$
"while/gru_cell_18/ReadVariableOp_8£
'while/gru_cell_18/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/gru_cell_18/strided_slice_8/stack§
)while/gru_cell_18/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_18/strided_slice_8/stack_1§
)while/gru_cell_18/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_8/stack_2ô
!while/gru_cell_18/strided_slice_8StridedSlice*while/gru_cell_18/ReadVariableOp_8:value:00while/gru_cell_18/strided_slice_8/stack:output:02while/gru_cell_18/strided_slice_8/stack_1:output:02while/gru_cell_18/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_8½
while/gru_cell_18/MatMul_5MatMulwhile/gru_cell_18/mul_2:z:0*while/gru_cell_18/strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_5¹
while/gru_cell_18/add_4AddV2$while/gru_cell_18/BiasAdd_2:output:0$while/gru_cell_18/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/add_4
while/gru_cell_18/TanhTanhwhile/gru_cell_18/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Tanh¥
while/gru_cell_18/mul_3Mul#while/gru_cell_18/clip_by_value:z:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/mul_3w
while/gru_cell_18/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_18/sub/x®
while/gru_cell_18/subSub while/gru_cell_18/sub/x:output:0#while/gru_cell_18/clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/sub¢
while/gru_cell_18/mul_4Mulwhile/gru_cell_18/sub:z:0while/gru_cell_18/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/mul_4§
while/gru_cell_18/add_5AddV2while/gru_cell_18/mul_3:z:0while/gru_cell_18/mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/add_5ß
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_18/add_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_18/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/Identity_4¥

while/NoOpNoOp!^while/gru_cell_18/ReadVariableOp#^while/gru_cell_18/ReadVariableOp_1#^while/gru_cell_18/ReadVariableOp_2#^while/gru_cell_18/ReadVariableOp_3#^while/gru_cell_18/ReadVariableOp_4#^while/gru_cell_18/ReadVariableOp_5#^while/gru_cell_18/ReadVariableOp_6#^while/gru_cell_18/ReadVariableOp_7#^while/gru_cell_18/ReadVariableOp_8*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"\
+while_gru_cell_18_readvariableop_3_resource-while_gru_cell_18_readvariableop_3_resource_0"\
+while_gru_cell_18_readvariableop_6_resource-while_gru_cell_18_readvariableop_6_resource_0"X
)while_gru_cell_18_readvariableop_resource+while_gru_cell_18_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : 2D
 while/gru_cell_18/ReadVariableOp while/gru_cell_18/ReadVariableOp2H
"while/gru_cell_18/ReadVariableOp_1"while/gru_cell_18/ReadVariableOp_12H
"while/gru_cell_18/ReadVariableOp_2"while/gru_cell_18/ReadVariableOp_22H
"while/gru_cell_18/ReadVariableOp_3"while/gru_cell_18/ReadVariableOp_32H
"while/gru_cell_18/ReadVariableOp_4"while/gru_cell_18/ReadVariableOp_42H
"while/gru_cell_18/ReadVariableOp_5"while/gru_cell_18/ReadVariableOp_52H
"while/gru_cell_18/ReadVariableOp_6"while/gru_cell_18/ReadVariableOp_62H
"while/gru_cell_18/ReadVariableOp_7"while/gru_cell_18/ReadVariableOp_72H
"while/gru_cell_18/ReadVariableOp_8"while/gru_cell_18/ReadVariableOp_8: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
Æ	

,__inference_sequential_9_layer_call_fn_74280
embedding_9_input
unknown:
Ù2
	unknown_0:2
	unknown_1:
	unknown_2:

	unknown_3:

	unknown_4:
identity¢StatefulPartitionedCall¶
StatefulPartitionedCallStatefulPartitionedCallembedding_9_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_742482
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameembedding_9_input

°
&__inference_gru_18_layer_call_fn_74965

inputs
unknown:2
	unknown_0:
	unknown_1:

identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_18_layer_call_and_return_conditional_losses_738732
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
¸"
 
while_body_73056
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_gru_cell_18_73078_0:2'
while_gru_cell_18_73080_0:+
while_gru_cell_18_73082_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_gru_cell_18_73078:2%
while_gru_cell_18_73080:)
while_gru_cell_18_73082:
¢)while/gru_cell_18/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem­
)while/gru_cell_18/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_18_73078_0while_gru_cell_18_73080_0while_gru_cell_18_73082_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_gru_cell_18_layer_call_and_return_conditional_losses_730432+
)while/gru_cell_18/StatefulPartitionedCallö
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/gru_cell_18/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3£
while/Identity_4Identity2while/gru_cell_18/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/Identity_4

while/NoOpNoOp*^while/gru_cell_18/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"4
while_gru_cell_18_73078while_gru_cell_18_73078_0"4
while_gru_cell_18_73080while_gru_cell_18_73080_0"4
while_gru_cell_18_73082while_gru_cell_18_73082_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : 2V
)while/gru_cell_18/StatefulPartitionedCall)while/gru_cell_18/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
è

Ó
+__inference_gru_cell_18_layer_call_fn_76034

inputs
states_0
unknown:2
	unknown_0:
	unknown_1:

identity

identity_1¢StatefulPartitionedCall¢
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_gru_cell_18_layer_call_and_return_conditional_losses_730432
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/0
¢
³	
while_body_73735
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
+while_gru_cell_18_readvariableop_resource_0:2;
-while_gru_cell_18_readvariableop_3_resource_0:?
-while_gru_cell_18_readvariableop_6_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
)while_gru_cell_18_readvariableop_resource:29
+while_gru_cell_18_readvariableop_3_resource:=
+while_gru_cell_18_readvariableop_6_resource:
¢ while/gru_cell_18/ReadVariableOp¢"while/gru_cell_18/ReadVariableOp_1¢"while/gru_cell_18/ReadVariableOp_2¢"while/gru_cell_18/ReadVariableOp_3¢"while/gru_cell_18/ReadVariableOp_4¢"while/gru_cell_18/ReadVariableOp_5¢"while/gru_cell_18/ReadVariableOp_6¢"while/gru_cell_18/ReadVariableOp_7¢"while/gru_cell_18/ReadVariableOp_8Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem°
 while/gru_cell_18/ReadVariableOpReadVariableOp+while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02"
 while/gru_cell_18/ReadVariableOp
%while/gru_cell_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_18/strided_slice/stack£
'while/gru_cell_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2)
'while/gru_cell_18/strided_slice/stack_1£
'while/gru_cell_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_18/strided_slice/stack_2è
while/gru_cell_18/strided_sliceStridedSlice(while/gru_cell_18/ReadVariableOp:value:0.while/gru_cell_18/strided_slice/stack:output:00while/gru_cell_18/strided_slice/stack_1:output:00while/gru_cell_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2!
while/gru_cell_18/strided_sliceÌ
while/gru_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0(while/gru_cell_18/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul´
"while/gru_cell_18/ReadVariableOp_1ReadVariableOp+while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02$
"while/gru_cell_18/ReadVariableOp_1£
'while/gru_cell_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2)
'while/gru_cell_18/strided_slice_1/stack§
)while/gru_cell_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/gru_cell_18/strided_slice_1/stack_1§
)while/gru_cell_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_1/stack_2ô
!while/gru_cell_18/strided_slice_1StridedSlice*while/gru_cell_18/ReadVariableOp_1:value:00while/gru_cell_18/strided_slice_1/stack:output:02while/gru_cell_18/strided_slice_1/stack_1:output:02while/gru_cell_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_1Ò
while/gru_cell_18/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0*while/gru_cell_18/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_1´
"while/gru_cell_18/ReadVariableOp_2ReadVariableOp+while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02$
"while/gru_cell_18/ReadVariableOp_2£
'while/gru_cell_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/gru_cell_18/strided_slice_2/stack§
)while/gru_cell_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_18/strided_slice_2/stack_1§
)while/gru_cell_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_2/stack_2ô
!while/gru_cell_18/strided_slice_2StridedSlice*while/gru_cell_18/ReadVariableOp_2:value:00while/gru_cell_18/strided_slice_2/stack:output:02while/gru_cell_18/strided_slice_2/stack_1:output:02while/gru_cell_18/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_2Ò
while/gru_cell_18/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0*while/gru_cell_18/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_2²
"while/gru_cell_18/ReadVariableOp_3ReadVariableOp-while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02$
"while/gru_cell_18/ReadVariableOp_3
'while/gru_cell_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'while/gru_cell_18/strided_slice_3/stack 
)while/gru_cell_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
2+
)while/gru_cell_18/strided_slice_3/stack_1 
)while/gru_cell_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_3/stack_2à
!while/gru_cell_18/strided_slice_3StridedSlice*while/gru_cell_18/ReadVariableOp_3:value:00while/gru_cell_18/strided_slice_3/stack:output:02while/gru_cell_18/strided_slice_3/stack_1:output:02while/gru_cell_18/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask2#
!while/gru_cell_18/strided_slice_3Ã
while/gru_cell_18/BiasAddBiasAdd"while/gru_cell_18/MatMul:product:0*while/gru_cell_18/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/BiasAdd²
"while/gru_cell_18/ReadVariableOp_4ReadVariableOp-while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02$
"while/gru_cell_18/ReadVariableOp_4
'while/gru_cell_18/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
2)
'while/gru_cell_18/strided_slice_4/stack 
)while/gru_cell_18/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_4/stack_1 
)while/gru_cell_18/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_4/stack_2Î
!while/gru_cell_18/strided_slice_4StridedSlice*while/gru_cell_18/ReadVariableOp_4:value:00while/gru_cell_18/strided_slice_4/stack:output:02while/gru_cell_18/strided_slice_4/stack_1:output:02while/gru_cell_18/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
2#
!while/gru_cell_18/strided_slice_4É
while/gru_cell_18/BiasAdd_1BiasAdd$while/gru_cell_18/MatMul_1:product:0*while/gru_cell_18/strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/BiasAdd_1²
"while/gru_cell_18/ReadVariableOp_5ReadVariableOp-while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02$
"while/gru_cell_18/ReadVariableOp_5
'while/gru_cell_18/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'while/gru_cell_18/strided_slice_5/stack 
)while/gru_cell_18/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)while/gru_cell_18/strided_slice_5/stack_1 
)while/gru_cell_18/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_5/stack_2Þ
!while/gru_cell_18/strided_slice_5StridedSlice*while/gru_cell_18/ReadVariableOp_5:value:00while/gru_cell_18/strided_slice_5/stack:output:02while/gru_cell_18/strided_slice_5/stack_1:output:02while/gru_cell_18/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask2#
!while/gru_cell_18/strided_slice_5É
while/gru_cell_18/BiasAdd_2BiasAdd$while/gru_cell_18/MatMul_2:product:0*while/gru_cell_18/strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/BiasAdd_2¶
"while/gru_cell_18/ReadVariableOp_6ReadVariableOp-while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02$
"while/gru_cell_18/ReadVariableOp_6£
'while/gru_cell_18/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/gru_cell_18/strided_slice_6/stack§
)while/gru_cell_18/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2+
)while/gru_cell_18/strided_slice_6/stack_1§
)while/gru_cell_18/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_6/stack_2ô
!while/gru_cell_18/strided_slice_6StridedSlice*while/gru_cell_18/ReadVariableOp_6:value:00while/gru_cell_18/strided_slice_6/stack:output:02while/gru_cell_18/strided_slice_6/stack_1:output:02while/gru_cell_18/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_6µ
while/gru_cell_18/MatMul_3MatMulwhile_placeholder_2*while/gru_cell_18/strided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_3¶
"while/gru_cell_18/ReadVariableOp_7ReadVariableOp-while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02$
"while/gru_cell_18/ReadVariableOp_7£
'while/gru_cell_18/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2)
'while/gru_cell_18/strided_slice_7/stack§
)while/gru_cell_18/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/gru_cell_18/strided_slice_7/stack_1§
)while/gru_cell_18/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_7/stack_2ô
!while/gru_cell_18/strided_slice_7StridedSlice*while/gru_cell_18/ReadVariableOp_7:value:00while/gru_cell_18/strided_slice_7/stack:output:02while/gru_cell_18/strided_slice_7/stack_1:output:02while/gru_cell_18/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_7µ
while/gru_cell_18/MatMul_4MatMulwhile_placeholder_2*while/gru_cell_18/strided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_4³
while/gru_cell_18/addAddV2"while/gru_cell_18/BiasAdd:output:0$while/gru_cell_18/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/addw
while/gru_cell_18/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/gru_cell_18/Const{
while/gru_cell_18/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/gru_cell_18/Const_1¤
while/gru_cell_18/MulMulwhile/gru_cell_18/add:z:0 while/gru_cell_18/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Mul¬
while/gru_cell_18/Add_1AddV2while/gru_cell_18/Mul:z:0"while/gru_cell_18/Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Add_1
)while/gru_cell_18/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)while/gru_cell_18/clip_by_value/Minimum/yà
'while/gru_cell_18/clip_by_value/MinimumMinimumwhile/gru_cell_18/Add_1:z:02while/gru_cell_18/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2)
'while/gru_cell_18/clip_by_value/Minimum
!while/gru_cell_18/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/gru_cell_18/clip_by_value/yØ
while/gru_cell_18/clip_by_valueMaximum+while/gru_cell_18/clip_by_value/Minimum:z:0*while/gru_cell_18/clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2!
while/gru_cell_18/clip_by_value¹
while/gru_cell_18/add_2AddV2$while/gru_cell_18/BiasAdd_1:output:0$while/gru_cell_18/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/add_2{
while/gru_cell_18/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/gru_cell_18/Const_2{
while/gru_cell_18/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/gru_cell_18/Const_3¬
while/gru_cell_18/Mul_1Mulwhile/gru_cell_18/add_2:z:0"while/gru_cell_18/Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Mul_1®
while/gru_cell_18/Add_3AddV2while/gru_cell_18/Mul_1:z:0"while/gru_cell_18/Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Add_3
+while/gru_cell_18/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/gru_cell_18/clip_by_value_1/Minimum/yæ
)while/gru_cell_18/clip_by_value_1/MinimumMinimumwhile/gru_cell_18/Add_3:z:04while/gru_cell_18/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2+
)while/gru_cell_18/clip_by_value_1/Minimum
#while/gru_cell_18/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/gru_cell_18/clip_by_value_1/yà
!while/gru_cell_18/clip_by_value_1Maximum-while/gru_cell_18/clip_by_value_1/Minimum:z:0,while/gru_cell_18/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!while/gru_cell_18/clip_by_value_1§
while/gru_cell_18/mul_2Mul%while/gru_cell_18/clip_by_value_1:z:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/mul_2¶
"while/gru_cell_18/ReadVariableOp_8ReadVariableOp-while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02$
"while/gru_cell_18/ReadVariableOp_8£
'while/gru_cell_18/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/gru_cell_18/strided_slice_8/stack§
)while/gru_cell_18/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_18/strided_slice_8/stack_1§
)while/gru_cell_18/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_8/stack_2ô
!while/gru_cell_18/strided_slice_8StridedSlice*while/gru_cell_18/ReadVariableOp_8:value:00while/gru_cell_18/strided_slice_8/stack:output:02while/gru_cell_18/strided_slice_8/stack_1:output:02while/gru_cell_18/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_8½
while/gru_cell_18/MatMul_5MatMulwhile/gru_cell_18/mul_2:z:0*while/gru_cell_18/strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_5¹
while/gru_cell_18/add_4AddV2$while/gru_cell_18/BiasAdd_2:output:0$while/gru_cell_18/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/add_4
while/gru_cell_18/TanhTanhwhile/gru_cell_18/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Tanh¥
while/gru_cell_18/mul_3Mul#while/gru_cell_18/clip_by_value:z:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/mul_3w
while/gru_cell_18/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_18/sub/x®
while/gru_cell_18/subSub while/gru_cell_18/sub/x:output:0#while/gru_cell_18/clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/sub¢
while/gru_cell_18/mul_4Mulwhile/gru_cell_18/sub:z:0while/gru_cell_18/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/mul_4§
while/gru_cell_18/add_5AddV2while/gru_cell_18/mul_3:z:0while/gru_cell_18/mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/add_5ß
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_18/add_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_18/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/Identity_4¥

while/NoOpNoOp!^while/gru_cell_18/ReadVariableOp#^while/gru_cell_18/ReadVariableOp_1#^while/gru_cell_18/ReadVariableOp_2#^while/gru_cell_18/ReadVariableOp_3#^while/gru_cell_18/ReadVariableOp_4#^while/gru_cell_18/ReadVariableOp_5#^while/gru_cell_18/ReadVariableOp_6#^while/gru_cell_18/ReadVariableOp_7#^while/gru_cell_18/ReadVariableOp_8*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"\
+while_gru_cell_18_readvariableop_3_resource-while_gru_cell_18_readvariableop_3_resource_0"\
+while_gru_cell_18_readvariableop_6_resource-while_gru_cell_18_readvariableop_6_resource_0"X
)while_gru_cell_18_readvariableop_resource+while_gru_cell_18_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : 2D
 while/gru_cell_18/ReadVariableOp while/gru_cell_18/ReadVariableOp2H
"while/gru_cell_18/ReadVariableOp_1"while/gru_cell_18/ReadVariableOp_12H
"while/gru_cell_18/ReadVariableOp_2"while/gru_cell_18/ReadVariableOp_22H
"while/gru_cell_18/ReadVariableOp_3"while/gru_cell_18/ReadVariableOp_32H
"while/gru_cell_18/ReadVariableOp_4"while/gru_cell_18/ReadVariableOp_42H
"while/gru_cell_18/ReadVariableOp_5"while/gru_cell_18/ReadVariableOp_52H
"while/gru_cell_18/ReadVariableOp_6"while/gru_cell_18/ReadVariableOp_62H
"while/gru_cell_18/ReadVariableOp_7"while/gru_cell_18/ReadVariableOp_72H
"while/gru_cell_18/ReadVariableOp_8"while/gru_cell_18/ReadVariableOp_8: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
@

__inference__traced_save_76330
file_prefix5
1savev2_embedding_9_embeddings_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_gru_18_gru_cell_18_kernel_read_readvariableopB
>savev2_gru_18_gru_cell_18_recurrent_kernel_read_readvariableop6
2savev2_gru_18_gru_cell_18_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_adam_embedding_9_embeddings_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop?
;savev2_adam_gru_18_gru_cell_18_kernel_m_read_readvariableopI
Esavev2_adam_gru_18_gru_cell_18_recurrent_kernel_m_read_readvariableop=
9savev2_adam_gru_18_gru_cell_18_bias_m_read_readvariableop<
8savev2_adam_embedding_9_embeddings_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop?
;savev2_adam_gru_18_gru_cell_18_kernel_v_read_readvariableopI
Esavev2_adam_gru_18_gru_cell_18_recurrent_kernel_v_read_readvariableop=
9savev2_adam_gru_18_gru_cell_18_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameî
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueöBóB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÀ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_9_embeddings_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_gru_18_gru_cell_18_kernel_read_readvariableop>savev2_gru_18_gru_cell_18_recurrent_kernel_read_readvariableop2savev2_gru_18_gru_cell_18_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_adam_embedding_9_embeddings_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop;savev2_adam_gru_18_gru_cell_18_kernel_m_read_readvariableopEsavev2_adam_gru_18_gru_cell_18_recurrent_kernel_m_read_readvariableop9savev2_adam_gru_18_gru_cell_18_bias_m_read_readvariableop8savev2_adam_embedding_9_embeddings_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableop;savev2_adam_gru_18_gru_cell_18_kernel_v_read_readvariableopEsavev2_adam_gru_18_gru_cell_18_recurrent_kernel_v_read_readvariableop9savev2_adam_gru_18_gru_cell_18_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*Í
_input_shapes»
¸: :
Ù2:
:: : : : : :2:
:: : : : :
Ù2:
::2:
::
Ù2:
::2:
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
Ù2:$ 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$	 

_output_shapes

:2:$
 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
Ù2:$ 

_output_shapes

:
: 

_output_shapes
::$ 

_output_shapes

:2:$ 

_output_shapes

:
: 

_output_shapes
::&"
 
_output_shapes
:
Ù2:$ 

_output_shapes

:
: 

_output_shapes
::$ 

_output_shapes

:2:$ 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: 
¥	

,__inference_sequential_9_layer_call_fn_74377

inputs
unknown:
Ù2
	unknown_0:2
	unknown_1:
	unknown_2:

	unknown_3:

	unknown_4:
identity¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_742482
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ

G__inference_sequential_9_layer_call_and_return_conditional_losses_73899

inputs%
embedding_9_73615:
Ù2
gru_18_73874:2
gru_18_73876:
gru_18_73878:

dense_7_73893:

dense_7_73895:
identity¢dense_7/StatefulPartitionedCall¢#embedding_9/StatefulPartitionedCall¢gru_18/StatefulPartitionedCall
#embedding_9/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_9_73615*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_9_layer_call_and_return_conditional_losses_736142%
#embedding_9/StatefulPartitionedCall½
gru_18/StatefulPartitionedCallStatefulPartitionedCall,embedding_9/StatefulPartitionedCall:output:0gru_18_73874gru_18_73876gru_18_73878*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_18_layer_call_and_return_conditional_losses_738732 
gru_18/StatefulPartitionedCall­
dense_7/StatefulPartitionedCallStatefulPartitionedCall'gru_18/StatefulPartitionedCall:output:0dense_7_73893dense_7_73895*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_738922!
dense_7/StatefulPartitionedCall
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity·
NoOpNoOp ^dense_7/StatefulPartitionedCall$^embedding_9/StatefulPartitionedCall^gru_18/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2J
#embedding_9/StatefulPartitionedCall#embedding_9/StatefulPartitionedCall2@
gru_18/StatefulPartitionedCallgru_18/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó®
¢
A__inference_gru_18_layer_call_and_return_conditional_losses_73873

inputs5
#gru_cell_18_readvariableop_resource:23
%gru_cell_18_readvariableop_3_resource:7
%gru_cell_18_readvariableop_6_resource:

identity¢gru_cell_18/ReadVariableOp¢gru_cell_18/ReadVariableOp_1¢gru_cell_18/ReadVariableOp_2¢gru_cell_18/ReadVariableOp_3¢gru_cell_18/ReadVariableOp_4¢gru_cell_18/ReadVariableOp_5¢gru_cell_18/ReadVariableOp_6¢gru_cell_18/ReadVariableOp_7¢gru_cell_18/ReadVariableOp_8¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2
gru_cell_18/ReadVariableOpReadVariableOp#gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02
gru_cell_18/ReadVariableOp
gru_cell_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_18/strided_slice/stack
!gru_cell_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2#
!gru_cell_18/strided_slice/stack_1
!gru_cell_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_18/strided_slice/stack_2Ä
gru_cell_18/strided_sliceStridedSlice"gru_cell_18/ReadVariableOp:value:0(gru_cell_18/strided_slice/stack:output:0*gru_cell_18/strided_slice/stack_1:output:0*gru_cell_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
gru_cell_18/strided_slice¢
gru_cell_18/MatMulMatMulstrided_slice_2:output:0"gru_cell_18/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul 
gru_cell_18/ReadVariableOp_1ReadVariableOp#gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02
gru_cell_18/ReadVariableOp_1
!gru_cell_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2#
!gru_cell_18/strided_slice_1/stack
#gru_cell_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gru_cell_18/strided_slice_1/stack_1
#gru_cell_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_1/stack_2Ð
gru_cell_18/strided_slice_1StridedSlice$gru_cell_18/ReadVariableOp_1:value:0*gru_cell_18/strided_slice_1/stack:output:0,gru_cell_18/strided_slice_1/stack_1:output:0,gru_cell_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
gru_cell_18/strided_slice_1¨
gru_cell_18/MatMul_1MatMulstrided_slice_2:output:0$gru_cell_18/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_1 
gru_cell_18/ReadVariableOp_2ReadVariableOp#gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02
gru_cell_18/ReadVariableOp_2
!gru_cell_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!gru_cell_18/strided_slice_2/stack
#gru_cell_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_18/strided_slice_2/stack_1
#gru_cell_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_2/stack_2Ð
gru_cell_18/strided_slice_2StridedSlice$gru_cell_18/ReadVariableOp_2:value:0*gru_cell_18/strided_slice_2/stack:output:0,gru_cell_18/strided_slice_2/stack_1:output:0,gru_cell_18/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
gru_cell_18/strided_slice_2¨
gru_cell_18/MatMul_2MatMulstrided_slice_2:output:0$gru_cell_18/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_2
gru_cell_18/ReadVariableOp_3ReadVariableOp%gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02
gru_cell_18/ReadVariableOp_3
!gru_cell_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!gru_cell_18/strided_slice_3/stack
#gru_cell_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
2%
#gru_cell_18/strided_slice_3/stack_1
#gru_cell_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_3/stack_2¼
gru_cell_18/strided_slice_3StridedSlice$gru_cell_18/ReadVariableOp_3:value:0*gru_cell_18/strided_slice_3/stack:output:0,gru_cell_18/strided_slice_3/stack_1:output:0,gru_cell_18/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask2
gru_cell_18/strided_slice_3«
gru_cell_18/BiasAddBiasAddgru_cell_18/MatMul:product:0$gru_cell_18/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/BiasAdd
gru_cell_18/ReadVariableOp_4ReadVariableOp%gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02
gru_cell_18/ReadVariableOp_4
!gru_cell_18/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
2#
!gru_cell_18/strided_slice_4/stack
#gru_cell_18/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_4/stack_1
#gru_cell_18/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_4/stack_2ª
gru_cell_18/strided_slice_4StridedSlice$gru_cell_18/ReadVariableOp_4:value:0*gru_cell_18/strided_slice_4/stack:output:0,gru_cell_18/strided_slice_4/stack_1:output:0,gru_cell_18/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
2
gru_cell_18/strided_slice_4±
gru_cell_18/BiasAdd_1BiasAddgru_cell_18/MatMul_1:product:0$gru_cell_18/strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/BiasAdd_1
gru_cell_18/ReadVariableOp_5ReadVariableOp%gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02
gru_cell_18/ReadVariableOp_5
!gru_cell_18/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!gru_cell_18/strided_slice_5/stack
#gru_cell_18/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#gru_cell_18/strided_slice_5/stack_1
#gru_cell_18/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_5/stack_2º
gru_cell_18/strided_slice_5StridedSlice$gru_cell_18/ReadVariableOp_5:value:0*gru_cell_18/strided_slice_5/stack:output:0,gru_cell_18/strided_slice_5/stack_1:output:0,gru_cell_18/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask2
gru_cell_18/strided_slice_5±
gru_cell_18/BiasAdd_2BiasAddgru_cell_18/MatMul_2:product:0$gru_cell_18/strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/BiasAdd_2¢
gru_cell_18/ReadVariableOp_6ReadVariableOp%gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02
gru_cell_18/ReadVariableOp_6
!gru_cell_18/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gru_cell_18/strided_slice_6/stack
#gru_cell_18/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2%
#gru_cell_18/strided_slice_6/stack_1
#gru_cell_18/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_6/stack_2Ð
gru_cell_18/strided_slice_6StridedSlice$gru_cell_18/ReadVariableOp_6:value:0*gru_cell_18/strided_slice_6/stack:output:0,gru_cell_18/strided_slice_6/stack_1:output:0,gru_cell_18/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
gru_cell_18/strided_slice_6
gru_cell_18/MatMul_3MatMulzeros:output:0$gru_cell_18/strided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_3¢
gru_cell_18/ReadVariableOp_7ReadVariableOp%gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02
gru_cell_18/ReadVariableOp_7
!gru_cell_18/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2#
!gru_cell_18/strided_slice_7/stack
#gru_cell_18/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gru_cell_18/strided_slice_7/stack_1
#gru_cell_18/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_7/stack_2Ð
gru_cell_18/strided_slice_7StridedSlice$gru_cell_18/ReadVariableOp_7:value:0*gru_cell_18/strided_slice_7/stack:output:0,gru_cell_18/strided_slice_7/stack_1:output:0,gru_cell_18/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
gru_cell_18/strided_slice_7
gru_cell_18/MatMul_4MatMulzeros:output:0$gru_cell_18/strided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_4
gru_cell_18/addAddV2gru_cell_18/BiasAdd:output:0gru_cell_18/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/addk
gru_cell_18/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
gru_cell_18/Consto
gru_cell_18/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
gru_cell_18/Const_1
gru_cell_18/MulMulgru_cell_18/add:z:0gru_cell_18/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Mul
gru_cell_18/Add_1AddV2gru_cell_18/Mul:z:0gru_cell_18/Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Add_1
#gru_cell_18/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#gru_cell_18/clip_by_value/Minimum/yÈ
!gru_cell_18/clip_by_value/MinimumMinimumgru_cell_18/Add_1:z:0,gru_cell_18/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!gru_cell_18/clip_by_value/Minimum
gru_cell_18/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_cell_18/clip_by_value/yÀ
gru_cell_18/clip_by_valueMaximum%gru_cell_18/clip_by_value/Minimum:z:0$gru_cell_18/clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/clip_by_value¡
gru_cell_18/add_2AddV2gru_cell_18/BiasAdd_1:output:0gru_cell_18/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/add_2o
gru_cell_18/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
gru_cell_18/Const_2o
gru_cell_18/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
gru_cell_18/Const_3
gru_cell_18/Mul_1Mulgru_cell_18/add_2:z:0gru_cell_18/Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Mul_1
gru_cell_18/Add_3AddV2gru_cell_18/Mul_1:z:0gru_cell_18/Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Add_3
%gru_cell_18/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%gru_cell_18/clip_by_value_1/Minimum/yÎ
#gru_cell_18/clip_by_value_1/MinimumMinimumgru_cell_18/Add_3:z:0.gru_cell_18/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2%
#gru_cell_18/clip_by_value_1/Minimum
gru_cell_18/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_cell_18/clip_by_value_1/yÈ
gru_cell_18/clip_by_value_1Maximum'gru_cell_18/clip_by_value_1/Minimum:z:0&gru_cell_18/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/clip_by_value_1
gru_cell_18/mul_2Mulgru_cell_18/clip_by_value_1:z:0zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/mul_2¢
gru_cell_18/ReadVariableOp_8ReadVariableOp%gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02
gru_cell_18/ReadVariableOp_8
!gru_cell_18/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!gru_cell_18/strided_slice_8/stack
#gru_cell_18/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_18/strided_slice_8/stack_1
#gru_cell_18/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_8/stack_2Ð
gru_cell_18/strided_slice_8StridedSlice$gru_cell_18/ReadVariableOp_8:value:0*gru_cell_18/strided_slice_8/stack:output:0,gru_cell_18/strided_slice_8/stack_1:output:0,gru_cell_18/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
gru_cell_18/strided_slice_8¥
gru_cell_18/MatMul_5MatMulgru_cell_18/mul_2:z:0$gru_cell_18/strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_5¡
gru_cell_18/add_4AddV2gru_cell_18/BiasAdd_2:output:0gru_cell_18/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/add_4u
gru_cell_18/TanhTanhgru_cell_18/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Tanh
gru_cell_18/mul_3Mulgru_cell_18/clip_by_value:z:0zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/mul_3k
gru_cell_18/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_18/sub/x
gru_cell_18/subSubgru_cell_18/sub/x:output:0gru_cell_18/clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/sub
gru_cell_18/mul_4Mulgru_cell_18/sub:z:0gru_cell_18/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/mul_4
gru_cell_18/add_5AddV2gru_cell_18/mul_3:z:0gru_cell_18/mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/add_5
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¹
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0#gru_cell_18_readvariableop_resource%gru_cell_18_readvariableop_3_resource%gru_cell_18_readvariableop_6_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_73735*
condR
while_cond_73734*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
transpose_1s
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityë
NoOpNoOp^gru_cell_18/ReadVariableOp^gru_cell_18/ReadVariableOp_1^gru_cell_18/ReadVariableOp_2^gru_cell_18/ReadVariableOp_3^gru_cell_18/ReadVariableOp_4^gru_cell_18/ReadVariableOp_5^gru_cell_18/ReadVariableOp_6^gru_cell_18/ReadVariableOp_7^gru_cell_18/ReadVariableOp_8^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 28
gru_cell_18/ReadVariableOpgru_cell_18/ReadVariableOp2<
gru_cell_18/ReadVariableOp_1gru_cell_18/ReadVariableOp_12<
gru_cell_18/ReadVariableOp_2gru_cell_18/ReadVariableOp_22<
gru_cell_18/ReadVariableOp_3gru_cell_18/ReadVariableOp_32<
gru_cell_18/ReadVariableOp_4gru_cell_18/ReadVariableOp_42<
gru_cell_18/ReadVariableOp_5gru_cell_18/ReadVariableOp_52<
gru_cell_18/ReadVariableOp_6gru_cell_18/ReadVariableOp_62<
gru_cell_18/ReadVariableOp_7gru_cell_18/ReadVariableOp_72<
gru_cell_18/ReadVariableOp_8gru_cell_18/ReadVariableOp_82
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
é

¤
F__inference_embedding_9_layer_call_and_return_conditional_losses_74932

inputs*
embedding_lookup_74926:
Ù2
identity¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Castû
embedding_lookupResourceGatherembedding_lookup_74926Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/74926*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype02
embedding_lookupì
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/74926*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
a
­
F__inference_gru_cell_18_layer_call_and_return_conditional_losses_76137

inputs
states_0)
readvariableop_resource:2'
readvariableop_3_resource:+
readvariableop_6_resource:

identity

identity_1¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢ReadVariableOp_4¢ReadVariableOp_5¢ReadVariableOp_6¢ReadVariableOp_7¢ReadVariableOp_8x
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:2*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ü
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
strided_slicel
MatMulMatMulinputsstrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
MatMul|
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:2*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
strided_slice_1r
MatMul_1MatMulinputsstrided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

MatMul_1|
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:2*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
strided_slice_2r
MatMul_2MatMulinputsstrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

MatMul_2z
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype02
ReadVariableOp_3x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ô
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask2
strided_slice_3{
BiasAddBiasAddMatMul:product:0strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAddz
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype02
ReadVariableOp_4x
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
2
strided_slice_4/stack|
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_1|
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_2â
strided_slice_4StridedSliceReadVariableOp_4:value:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
2
strided_slice_4
	BiasAdd_1BiasAddMatMul_1:product:0strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
	BiasAdd_1z
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype02
ReadVariableOp_5x
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2ò
strided_slice_5StridedSliceReadVariableOp_5:value:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask2
strided_slice_5
	BiasAdd_2BiasAddMatMul_2:product:0strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
	BiasAdd_2~
ReadVariableOp_6ReadVariableOpreadvariableop_6_resource*
_output_shapes

:
*
dtype02
ReadVariableOp_6
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2
strided_slice_6/stack_1
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2
strided_slice_6StridedSliceReadVariableOp_6:value:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
strided_slice_6t
MatMul_3MatMulstates_0strided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

MatMul_3~
ReadVariableOp_7ReadVariableOpreadvariableop_6_resource*
_output_shapes

:
*
dtype02
ReadVariableOp_7
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2
strided_slice_7/stack
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_7/stack_1
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2
strided_slice_7StridedSliceReadVariableOp_7:value:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
strided_slice_7t
MatMul_4MatMulstates_0strided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1\
MulMuladd:z:0Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Muld
Add_1AddV2Mul:z:0Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value/Minimum/y
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
clip_by_valueq
add_2AddV2BiasAdd_1:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3d
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Mul_1f
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value_1/Minimum/y
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
clip_by_value_1f
mul_2Mulclip_by_value_1:z:0states_0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
mul_2~
ReadVariableOp_8ReadVariableOpreadvariableop_6_resource*
_output_shapes

:
*
dtype02
ReadVariableOp_8
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_8/stack
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_8/stack_1
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_8/stack_2
strided_slice_8StridedSliceReadVariableOp_8:value:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
strided_slice_8u
MatMul_5MatMul	mul_2:z:0strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

MatMul_5q
add_4AddV2BiasAdd_2:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
add_4Q
TanhTanh	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Tanhd
mul_3Mulclip_by_value:z:0states_0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
mul_3S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xf
subSubsub/x:output:0clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
subZ
mul_4Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
mul_4_
add_5AddV2	mul_3:z:0	mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
add_5d
IdentityIdentity	add_5:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityh

Identity_1Identity	add_5:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity_1÷
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6^ReadVariableOp_7^ReadVariableOp_8*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_62$
ReadVariableOp_7ReadVariableOp_72$
ReadVariableOp_8ReadVariableOp_8:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/0
	

#__inference_signature_wrapper_74343
embedding_9_input
unknown:
Ù2
	unknown_0:2
	unknown_1:
	unknown_2:

	unknown_3:

	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallembedding_9_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_729192
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameembedding_9_input
õ
¥
while_cond_74054
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_74054___redundant_placeholder03
/while_while_cond_74054___redundant_placeholder13
/while_while_cond_74054___redundant_placeholder23
/while_while_cond_74054___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:


G__inference_sequential_9_layer_call_and_return_conditional_losses_74299
embedding_9_input%
embedding_9_74283:
Ù2
gru_18_74286:2
gru_18_74288:
gru_18_74290:

dense_7_74293:

dense_7_74295:
identity¢dense_7/StatefulPartitionedCall¢#embedding_9/StatefulPartitionedCall¢gru_18/StatefulPartitionedCall
#embedding_9/StatefulPartitionedCallStatefulPartitionedCallembedding_9_inputembedding_9_74283*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_9_layer_call_and_return_conditional_losses_736142%
#embedding_9/StatefulPartitionedCall½
gru_18/StatefulPartitionedCallStatefulPartitionedCall,embedding_9/StatefulPartitionedCall:output:0gru_18_74286gru_18_74288gru_18_74290*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_18_layer_call_and_return_conditional_losses_738732 
gru_18/StatefulPartitionedCall­
dense_7/StatefulPartitionedCallStatefulPartitionedCall'gru_18/StatefulPartitionedCall:output:0dense_7_74293dense_7_74295*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_738922!
dense_7/StatefulPartitionedCall
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity·
NoOpNoOp ^dense_7/StatefulPartitionedCall$^embedding_9/StatefulPartitionedCall^gru_18/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2J
#embedding_9/StatefulPartitionedCall#embedding_9/StatefulPartitionedCall2@
gru_18/StatefulPartitionedCallgru_18/StatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameembedding_9_input
¢
³	
while_body_75862
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
+while_gru_cell_18_readvariableop_resource_0:2;
-while_gru_cell_18_readvariableop_3_resource_0:?
-while_gru_cell_18_readvariableop_6_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
)while_gru_cell_18_readvariableop_resource:29
+while_gru_cell_18_readvariableop_3_resource:=
+while_gru_cell_18_readvariableop_6_resource:
¢ while/gru_cell_18/ReadVariableOp¢"while/gru_cell_18/ReadVariableOp_1¢"while/gru_cell_18/ReadVariableOp_2¢"while/gru_cell_18/ReadVariableOp_3¢"while/gru_cell_18/ReadVariableOp_4¢"while/gru_cell_18/ReadVariableOp_5¢"while/gru_cell_18/ReadVariableOp_6¢"while/gru_cell_18/ReadVariableOp_7¢"while/gru_cell_18/ReadVariableOp_8Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem°
 while/gru_cell_18/ReadVariableOpReadVariableOp+while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02"
 while/gru_cell_18/ReadVariableOp
%while/gru_cell_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_18/strided_slice/stack£
'while/gru_cell_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2)
'while/gru_cell_18/strided_slice/stack_1£
'while/gru_cell_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_18/strided_slice/stack_2è
while/gru_cell_18/strided_sliceStridedSlice(while/gru_cell_18/ReadVariableOp:value:0.while/gru_cell_18/strided_slice/stack:output:00while/gru_cell_18/strided_slice/stack_1:output:00while/gru_cell_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2!
while/gru_cell_18/strided_sliceÌ
while/gru_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0(while/gru_cell_18/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul´
"while/gru_cell_18/ReadVariableOp_1ReadVariableOp+while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02$
"while/gru_cell_18/ReadVariableOp_1£
'while/gru_cell_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2)
'while/gru_cell_18/strided_slice_1/stack§
)while/gru_cell_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/gru_cell_18/strided_slice_1/stack_1§
)while/gru_cell_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_1/stack_2ô
!while/gru_cell_18/strided_slice_1StridedSlice*while/gru_cell_18/ReadVariableOp_1:value:00while/gru_cell_18/strided_slice_1/stack:output:02while/gru_cell_18/strided_slice_1/stack_1:output:02while/gru_cell_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_1Ò
while/gru_cell_18/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0*while/gru_cell_18/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_1´
"while/gru_cell_18/ReadVariableOp_2ReadVariableOp+while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02$
"while/gru_cell_18/ReadVariableOp_2£
'while/gru_cell_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/gru_cell_18/strided_slice_2/stack§
)while/gru_cell_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_18/strided_slice_2/stack_1§
)while/gru_cell_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_2/stack_2ô
!while/gru_cell_18/strided_slice_2StridedSlice*while/gru_cell_18/ReadVariableOp_2:value:00while/gru_cell_18/strided_slice_2/stack:output:02while/gru_cell_18/strided_slice_2/stack_1:output:02while/gru_cell_18/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_2Ò
while/gru_cell_18/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0*while/gru_cell_18/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_2²
"while/gru_cell_18/ReadVariableOp_3ReadVariableOp-while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02$
"while/gru_cell_18/ReadVariableOp_3
'while/gru_cell_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'while/gru_cell_18/strided_slice_3/stack 
)while/gru_cell_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
2+
)while/gru_cell_18/strided_slice_3/stack_1 
)while/gru_cell_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_3/stack_2à
!while/gru_cell_18/strided_slice_3StridedSlice*while/gru_cell_18/ReadVariableOp_3:value:00while/gru_cell_18/strided_slice_3/stack:output:02while/gru_cell_18/strided_slice_3/stack_1:output:02while/gru_cell_18/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask2#
!while/gru_cell_18/strided_slice_3Ã
while/gru_cell_18/BiasAddBiasAdd"while/gru_cell_18/MatMul:product:0*while/gru_cell_18/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/BiasAdd²
"while/gru_cell_18/ReadVariableOp_4ReadVariableOp-while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02$
"while/gru_cell_18/ReadVariableOp_4
'while/gru_cell_18/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
2)
'while/gru_cell_18/strided_slice_4/stack 
)while/gru_cell_18/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_4/stack_1 
)while/gru_cell_18/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_4/stack_2Î
!while/gru_cell_18/strided_slice_4StridedSlice*while/gru_cell_18/ReadVariableOp_4:value:00while/gru_cell_18/strided_slice_4/stack:output:02while/gru_cell_18/strided_slice_4/stack_1:output:02while/gru_cell_18/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
2#
!while/gru_cell_18/strided_slice_4É
while/gru_cell_18/BiasAdd_1BiasAdd$while/gru_cell_18/MatMul_1:product:0*while/gru_cell_18/strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/BiasAdd_1²
"while/gru_cell_18/ReadVariableOp_5ReadVariableOp-while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02$
"while/gru_cell_18/ReadVariableOp_5
'while/gru_cell_18/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'while/gru_cell_18/strided_slice_5/stack 
)while/gru_cell_18/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)while/gru_cell_18/strided_slice_5/stack_1 
)while/gru_cell_18/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_5/stack_2Þ
!while/gru_cell_18/strided_slice_5StridedSlice*while/gru_cell_18/ReadVariableOp_5:value:00while/gru_cell_18/strided_slice_5/stack:output:02while/gru_cell_18/strided_slice_5/stack_1:output:02while/gru_cell_18/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask2#
!while/gru_cell_18/strided_slice_5É
while/gru_cell_18/BiasAdd_2BiasAdd$while/gru_cell_18/MatMul_2:product:0*while/gru_cell_18/strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/BiasAdd_2¶
"while/gru_cell_18/ReadVariableOp_6ReadVariableOp-while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02$
"while/gru_cell_18/ReadVariableOp_6£
'while/gru_cell_18/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/gru_cell_18/strided_slice_6/stack§
)while/gru_cell_18/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2+
)while/gru_cell_18/strided_slice_6/stack_1§
)while/gru_cell_18/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_6/stack_2ô
!while/gru_cell_18/strided_slice_6StridedSlice*while/gru_cell_18/ReadVariableOp_6:value:00while/gru_cell_18/strided_slice_6/stack:output:02while/gru_cell_18/strided_slice_6/stack_1:output:02while/gru_cell_18/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_6µ
while/gru_cell_18/MatMul_3MatMulwhile_placeholder_2*while/gru_cell_18/strided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_3¶
"while/gru_cell_18/ReadVariableOp_7ReadVariableOp-while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02$
"while/gru_cell_18/ReadVariableOp_7£
'while/gru_cell_18/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2)
'while/gru_cell_18/strided_slice_7/stack§
)while/gru_cell_18/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/gru_cell_18/strided_slice_7/stack_1§
)while/gru_cell_18/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_7/stack_2ô
!while/gru_cell_18/strided_slice_7StridedSlice*while/gru_cell_18/ReadVariableOp_7:value:00while/gru_cell_18/strided_slice_7/stack:output:02while/gru_cell_18/strided_slice_7/stack_1:output:02while/gru_cell_18/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_7µ
while/gru_cell_18/MatMul_4MatMulwhile_placeholder_2*while/gru_cell_18/strided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_4³
while/gru_cell_18/addAddV2"while/gru_cell_18/BiasAdd:output:0$while/gru_cell_18/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/addw
while/gru_cell_18/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/gru_cell_18/Const{
while/gru_cell_18/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/gru_cell_18/Const_1¤
while/gru_cell_18/MulMulwhile/gru_cell_18/add:z:0 while/gru_cell_18/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Mul¬
while/gru_cell_18/Add_1AddV2while/gru_cell_18/Mul:z:0"while/gru_cell_18/Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Add_1
)while/gru_cell_18/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)while/gru_cell_18/clip_by_value/Minimum/yà
'while/gru_cell_18/clip_by_value/MinimumMinimumwhile/gru_cell_18/Add_1:z:02while/gru_cell_18/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2)
'while/gru_cell_18/clip_by_value/Minimum
!while/gru_cell_18/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/gru_cell_18/clip_by_value/yØ
while/gru_cell_18/clip_by_valueMaximum+while/gru_cell_18/clip_by_value/Minimum:z:0*while/gru_cell_18/clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2!
while/gru_cell_18/clip_by_value¹
while/gru_cell_18/add_2AddV2$while/gru_cell_18/BiasAdd_1:output:0$while/gru_cell_18/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/add_2{
while/gru_cell_18/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/gru_cell_18/Const_2{
while/gru_cell_18/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/gru_cell_18/Const_3¬
while/gru_cell_18/Mul_1Mulwhile/gru_cell_18/add_2:z:0"while/gru_cell_18/Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Mul_1®
while/gru_cell_18/Add_3AddV2while/gru_cell_18/Mul_1:z:0"while/gru_cell_18/Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Add_3
+while/gru_cell_18/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/gru_cell_18/clip_by_value_1/Minimum/yæ
)while/gru_cell_18/clip_by_value_1/MinimumMinimumwhile/gru_cell_18/Add_3:z:04while/gru_cell_18/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2+
)while/gru_cell_18/clip_by_value_1/Minimum
#while/gru_cell_18/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/gru_cell_18/clip_by_value_1/yà
!while/gru_cell_18/clip_by_value_1Maximum-while/gru_cell_18/clip_by_value_1/Minimum:z:0,while/gru_cell_18/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!while/gru_cell_18/clip_by_value_1§
while/gru_cell_18/mul_2Mul%while/gru_cell_18/clip_by_value_1:z:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/mul_2¶
"while/gru_cell_18/ReadVariableOp_8ReadVariableOp-while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02$
"while/gru_cell_18/ReadVariableOp_8£
'while/gru_cell_18/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/gru_cell_18/strided_slice_8/stack§
)while/gru_cell_18/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_18/strided_slice_8/stack_1§
)while/gru_cell_18/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_8/stack_2ô
!while/gru_cell_18/strided_slice_8StridedSlice*while/gru_cell_18/ReadVariableOp_8:value:00while/gru_cell_18/strided_slice_8/stack:output:02while/gru_cell_18/strided_slice_8/stack_1:output:02while/gru_cell_18/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_8½
while/gru_cell_18/MatMul_5MatMulwhile/gru_cell_18/mul_2:z:0*while/gru_cell_18/strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_5¹
while/gru_cell_18/add_4AddV2$while/gru_cell_18/BiasAdd_2:output:0$while/gru_cell_18/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/add_4
while/gru_cell_18/TanhTanhwhile/gru_cell_18/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Tanh¥
while/gru_cell_18/mul_3Mul#while/gru_cell_18/clip_by_value:z:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/mul_3w
while/gru_cell_18/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_18/sub/x®
while/gru_cell_18/subSub while/gru_cell_18/sub/x:output:0#while/gru_cell_18/clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/sub¢
while/gru_cell_18/mul_4Mulwhile/gru_cell_18/sub:z:0while/gru_cell_18/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/mul_4§
while/gru_cell_18/add_5AddV2while/gru_cell_18/mul_3:z:0while/gru_cell_18/mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/add_5ß
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_18/add_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_18/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/Identity_4¥

while/NoOpNoOp!^while/gru_cell_18/ReadVariableOp#^while/gru_cell_18/ReadVariableOp_1#^while/gru_cell_18/ReadVariableOp_2#^while/gru_cell_18/ReadVariableOp_3#^while/gru_cell_18/ReadVariableOp_4#^while/gru_cell_18/ReadVariableOp_5#^while/gru_cell_18/ReadVariableOp_6#^while/gru_cell_18/ReadVariableOp_7#^while/gru_cell_18/ReadVariableOp_8*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"\
+while_gru_cell_18_readvariableop_3_resource-while_gru_cell_18_readvariableop_3_resource_0"\
+while_gru_cell_18_readvariableop_6_resource-while_gru_cell_18_readvariableop_6_resource_0"X
)while_gru_cell_18_readvariableop_resource+while_gru_cell_18_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : 2D
 while/gru_cell_18/ReadVariableOp while/gru_cell_18/ReadVariableOp2H
"while/gru_cell_18/ReadVariableOp_1"while/gru_cell_18/ReadVariableOp_12H
"while/gru_cell_18/ReadVariableOp_2"while/gru_cell_18/ReadVariableOp_22H
"while/gru_cell_18/ReadVariableOp_3"while/gru_cell_18/ReadVariableOp_32H
"while/gru_cell_18/ReadVariableOp_4"while/gru_cell_18/ReadVariableOp_42H
"while/gru_cell_18/ReadVariableOp_5"while/gru_cell_18/ReadVariableOp_52H
"while/gru_cell_18/ReadVariableOp_6"while/gru_cell_18/ReadVariableOp_62H
"while/gru_cell_18/ReadVariableOp_7"while/gru_cell_18/ReadVariableOp_72H
"while/gru_cell_18/ReadVariableOp_8"while/gru_cell_18/ReadVariableOp_8: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
×·
¯
gru_18_while_body_74501*
&gru_18_while_gru_18_while_loop_counter0
,gru_18_while_gru_18_while_maximum_iterations
gru_18_while_placeholder
gru_18_while_placeholder_1
gru_18_while_placeholder_2)
%gru_18_while_gru_18_strided_slice_1_0e
agru_18_while_tensorarrayv2read_tensorlistgetitem_gru_18_tensorarrayunstack_tensorlistfromtensor_0D
2gru_18_while_gru_cell_18_readvariableop_resource_0:2B
4gru_18_while_gru_cell_18_readvariableop_3_resource_0:F
4gru_18_while_gru_cell_18_readvariableop_6_resource_0:

gru_18_while_identity
gru_18_while_identity_1
gru_18_while_identity_2
gru_18_while_identity_3
gru_18_while_identity_4'
#gru_18_while_gru_18_strided_slice_1c
_gru_18_while_tensorarrayv2read_tensorlistgetitem_gru_18_tensorarrayunstack_tensorlistfromtensorB
0gru_18_while_gru_cell_18_readvariableop_resource:2@
2gru_18_while_gru_cell_18_readvariableop_3_resource:D
2gru_18_while_gru_cell_18_readvariableop_6_resource:
¢'gru_18/while/gru_cell_18/ReadVariableOp¢)gru_18/while/gru_cell_18/ReadVariableOp_1¢)gru_18/while/gru_cell_18/ReadVariableOp_2¢)gru_18/while/gru_cell_18/ReadVariableOp_3¢)gru_18/while/gru_cell_18/ReadVariableOp_4¢)gru_18/while/gru_cell_18/ReadVariableOp_5¢)gru_18/while/gru_cell_18/ReadVariableOp_6¢)gru_18/while/gru_cell_18/ReadVariableOp_7¢)gru_18/while/gru_cell_18/ReadVariableOp_8Ñ
>gru_18/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2@
>gru_18/while/TensorArrayV2Read/TensorListGetItem/element_shapeý
0gru_18/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemagru_18_while_tensorarrayv2read_tensorlistgetitem_gru_18_tensorarrayunstack_tensorlistfromtensor_0gru_18_while_placeholderGgru_18/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype022
0gru_18/while/TensorArrayV2Read/TensorListGetItemÅ
'gru_18/while/gru_cell_18/ReadVariableOpReadVariableOp2gru_18_while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02)
'gru_18/while/gru_cell_18/ReadVariableOp­
,gru_18/while/gru_cell_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,gru_18/while/gru_cell_18/strided_slice/stack±
.gru_18/while/gru_cell_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   20
.gru_18/while/gru_cell_18/strided_slice/stack_1±
.gru_18/while/gru_cell_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_18/while/gru_cell_18/strided_slice/stack_2
&gru_18/while/gru_cell_18/strided_sliceStridedSlice/gru_18/while/gru_cell_18/ReadVariableOp:value:05gru_18/while/gru_cell_18/strided_slice/stack:output:07gru_18/while/gru_cell_18/strided_slice/stack_1:output:07gru_18/while/gru_cell_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2(
&gru_18/while/gru_cell_18/strided_sliceè
gru_18/while/gru_cell_18/MatMulMatMul7gru_18/while/TensorArrayV2Read/TensorListGetItem:item:0/gru_18/while/gru_cell_18/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2!
gru_18/while/gru_cell_18/MatMulÉ
)gru_18/while/gru_cell_18/ReadVariableOp_1ReadVariableOp2gru_18_while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02+
)gru_18/while/gru_cell_18/ReadVariableOp_1±
.gru_18/while/gru_cell_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   20
.gru_18/while/gru_cell_18/strided_slice_1/stackµ
0gru_18/while/gru_cell_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       22
0gru_18/while/gru_cell_18/strided_slice_1/stack_1µ
0gru_18/while/gru_cell_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_18/while/gru_cell_18/strided_slice_1/stack_2
(gru_18/while/gru_cell_18/strided_slice_1StridedSlice1gru_18/while/gru_cell_18/ReadVariableOp_1:value:07gru_18/while/gru_cell_18/strided_slice_1/stack:output:09gru_18/while/gru_cell_18/strided_slice_1/stack_1:output:09gru_18/while/gru_cell_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2*
(gru_18/while/gru_cell_18/strided_slice_1î
!gru_18/while/gru_cell_18/MatMul_1MatMul7gru_18/while/TensorArrayV2Read/TensorListGetItem:item:01gru_18/while/gru_cell_18/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!gru_18/while/gru_cell_18/MatMul_1É
)gru_18/while/gru_cell_18/ReadVariableOp_2ReadVariableOp2gru_18_while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02+
)gru_18/while/gru_cell_18/ReadVariableOp_2±
.gru_18/while/gru_cell_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       20
.gru_18/while/gru_cell_18/strided_slice_2/stackµ
0gru_18/while/gru_cell_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0gru_18/while/gru_cell_18/strided_slice_2/stack_1µ
0gru_18/while/gru_cell_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_18/while/gru_cell_18/strided_slice_2/stack_2
(gru_18/while/gru_cell_18/strided_slice_2StridedSlice1gru_18/while/gru_cell_18/ReadVariableOp_2:value:07gru_18/while/gru_cell_18/strided_slice_2/stack:output:09gru_18/while/gru_cell_18/strided_slice_2/stack_1:output:09gru_18/while/gru_cell_18/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2*
(gru_18/while/gru_cell_18/strided_slice_2î
!gru_18/while/gru_cell_18/MatMul_2MatMul7gru_18/while/TensorArrayV2Read/TensorListGetItem:item:01gru_18/while/gru_cell_18/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!gru_18/while/gru_cell_18/MatMul_2Ç
)gru_18/while/gru_cell_18/ReadVariableOp_3ReadVariableOp4gru_18_while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02+
)gru_18/while/gru_cell_18/ReadVariableOp_3ª
.gru_18/while/gru_cell_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.gru_18/while/gru_cell_18/strided_slice_3/stack®
0gru_18/while/gru_cell_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
22
0gru_18/while/gru_cell_18/strided_slice_3/stack_1®
0gru_18/while/gru_cell_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0gru_18/while/gru_cell_18/strided_slice_3/stack_2
(gru_18/while/gru_cell_18/strided_slice_3StridedSlice1gru_18/while/gru_cell_18/ReadVariableOp_3:value:07gru_18/while/gru_cell_18/strided_slice_3/stack:output:09gru_18/while/gru_cell_18/strided_slice_3/stack_1:output:09gru_18/while/gru_cell_18/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask2*
(gru_18/while/gru_cell_18/strided_slice_3ß
 gru_18/while/gru_cell_18/BiasAddBiasAdd)gru_18/while/gru_cell_18/MatMul:product:01gru_18/while/gru_cell_18/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2"
 gru_18/while/gru_cell_18/BiasAddÇ
)gru_18/while/gru_cell_18/ReadVariableOp_4ReadVariableOp4gru_18_while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02+
)gru_18/while/gru_cell_18/ReadVariableOp_4ª
.gru_18/while/gru_cell_18/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
20
.gru_18/while/gru_cell_18/strided_slice_4/stack®
0gru_18/while/gru_cell_18/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0gru_18/while/gru_cell_18/strided_slice_4/stack_1®
0gru_18/while/gru_cell_18/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0gru_18/while/gru_cell_18/strided_slice_4/stack_2ø
(gru_18/while/gru_cell_18/strided_slice_4StridedSlice1gru_18/while/gru_cell_18/ReadVariableOp_4:value:07gru_18/while/gru_cell_18/strided_slice_4/stack:output:09gru_18/while/gru_cell_18/strided_slice_4/stack_1:output:09gru_18/while/gru_cell_18/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
2*
(gru_18/while/gru_cell_18/strided_slice_4å
"gru_18/while/gru_cell_18/BiasAdd_1BiasAdd+gru_18/while/gru_cell_18/MatMul_1:product:01gru_18/while/gru_cell_18/strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2$
"gru_18/while/gru_cell_18/BiasAdd_1Ç
)gru_18/while/gru_cell_18/ReadVariableOp_5ReadVariableOp4gru_18_while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02+
)gru_18/while/gru_cell_18/ReadVariableOp_5ª
.gru_18/while/gru_cell_18/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:20
.gru_18/while/gru_cell_18/strided_slice_5/stack®
0gru_18/while/gru_cell_18/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 22
0gru_18/while/gru_cell_18/strided_slice_5/stack_1®
0gru_18/while/gru_cell_18/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0gru_18/while/gru_cell_18/strided_slice_5/stack_2
(gru_18/while/gru_cell_18/strided_slice_5StridedSlice1gru_18/while/gru_cell_18/ReadVariableOp_5:value:07gru_18/while/gru_cell_18/strided_slice_5/stack:output:09gru_18/while/gru_cell_18/strided_slice_5/stack_1:output:09gru_18/while/gru_cell_18/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask2*
(gru_18/while/gru_cell_18/strided_slice_5å
"gru_18/while/gru_cell_18/BiasAdd_2BiasAdd+gru_18/while/gru_cell_18/MatMul_2:product:01gru_18/while/gru_cell_18/strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2$
"gru_18/while/gru_cell_18/BiasAdd_2Ë
)gru_18/while/gru_cell_18/ReadVariableOp_6ReadVariableOp4gru_18_while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02+
)gru_18/while/gru_cell_18/ReadVariableOp_6±
.gru_18/while/gru_cell_18/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.gru_18/while/gru_cell_18/strided_slice_6/stackµ
0gru_18/while/gru_cell_18/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   22
0gru_18/while/gru_cell_18/strided_slice_6/stack_1µ
0gru_18/while/gru_cell_18/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_18/while/gru_cell_18/strided_slice_6/stack_2
(gru_18/while/gru_cell_18/strided_slice_6StridedSlice1gru_18/while/gru_cell_18/ReadVariableOp_6:value:07gru_18/while/gru_cell_18/strided_slice_6/stack:output:09gru_18/while/gru_cell_18/strided_slice_6/stack_1:output:09gru_18/while/gru_cell_18/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2*
(gru_18/while/gru_cell_18/strided_slice_6Ñ
!gru_18/while/gru_cell_18/MatMul_3MatMulgru_18_while_placeholder_21gru_18/while/gru_cell_18/strided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!gru_18/while/gru_cell_18/MatMul_3Ë
)gru_18/while/gru_cell_18/ReadVariableOp_7ReadVariableOp4gru_18_while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02+
)gru_18/while/gru_cell_18/ReadVariableOp_7±
.gru_18/while/gru_cell_18/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   20
.gru_18/while/gru_cell_18/strided_slice_7/stackµ
0gru_18/while/gru_cell_18/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       22
0gru_18/while/gru_cell_18/strided_slice_7/stack_1µ
0gru_18/while/gru_cell_18/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_18/while/gru_cell_18/strided_slice_7/stack_2
(gru_18/while/gru_cell_18/strided_slice_7StridedSlice1gru_18/while/gru_cell_18/ReadVariableOp_7:value:07gru_18/while/gru_cell_18/strided_slice_7/stack:output:09gru_18/while/gru_cell_18/strided_slice_7/stack_1:output:09gru_18/while/gru_cell_18/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2*
(gru_18/while/gru_cell_18/strided_slice_7Ñ
!gru_18/while/gru_cell_18/MatMul_4MatMulgru_18_while_placeholder_21gru_18/while/gru_cell_18/strided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!gru_18/while/gru_cell_18/MatMul_4Ï
gru_18/while/gru_cell_18/addAddV2)gru_18/while/gru_cell_18/BiasAdd:output:0+gru_18/while/gru_cell_18/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/while/gru_cell_18/add
gru_18/while/gru_cell_18/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2 
gru_18/while/gru_cell_18/Const
 gru_18/while/gru_cell_18/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 gru_18/while/gru_cell_18/Const_1À
gru_18/while/gru_cell_18/MulMul gru_18/while/gru_cell_18/add:z:0'gru_18/while/gru_cell_18/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/while/gru_cell_18/MulÈ
gru_18/while/gru_cell_18/Add_1AddV2 gru_18/while/gru_cell_18/Mul:z:0)gru_18/while/gru_cell_18/Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
gru_18/while/gru_cell_18/Add_1©
0gru_18/while/gru_cell_18/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?22
0gru_18/while/gru_cell_18/clip_by_value/Minimum/yü
.gru_18/while/gru_cell_18/clip_by_value/MinimumMinimum"gru_18/while/gru_cell_18/Add_1:z:09gru_18/while/gru_cell_18/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
20
.gru_18/while/gru_cell_18/clip_by_value/Minimum
(gru_18/while/gru_cell_18/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2*
(gru_18/while/gru_cell_18/clip_by_value/yô
&gru_18/while/gru_cell_18/clip_by_valueMaximum2gru_18/while/gru_cell_18/clip_by_value/Minimum:z:01gru_18/while/gru_cell_18/clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2(
&gru_18/while/gru_cell_18/clip_by_valueÕ
gru_18/while/gru_cell_18/add_2AddV2+gru_18/while/gru_cell_18/BiasAdd_1:output:0+gru_18/while/gru_cell_18/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
gru_18/while/gru_cell_18/add_2
 gru_18/while/gru_cell_18/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2"
 gru_18/while/gru_cell_18/Const_2
 gru_18/while/gru_cell_18/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 gru_18/while/gru_cell_18/Const_3È
gru_18/while/gru_cell_18/Mul_1Mul"gru_18/while/gru_cell_18/add_2:z:0)gru_18/while/gru_cell_18/Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
gru_18/while/gru_cell_18/Mul_1Ê
gru_18/while/gru_cell_18/Add_3AddV2"gru_18/while/gru_cell_18/Mul_1:z:0)gru_18/while/gru_cell_18/Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
gru_18/while/gru_cell_18/Add_3­
2gru_18/while/gru_cell_18/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?24
2gru_18/while/gru_cell_18/clip_by_value_1/Minimum/y
0gru_18/while/gru_cell_18/clip_by_value_1/MinimumMinimum"gru_18/while/gru_cell_18/Add_3:z:0;gru_18/while/gru_cell_18/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
22
0gru_18/while/gru_cell_18/clip_by_value_1/Minimum
*gru_18/while/gru_cell_18/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*gru_18/while/gru_cell_18/clip_by_value_1/yü
(gru_18/while/gru_cell_18/clip_by_value_1Maximum4gru_18/while/gru_cell_18/clip_by_value_1/Minimum:z:03gru_18/while/gru_cell_18/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2*
(gru_18/while/gru_cell_18/clip_by_value_1Ã
gru_18/while/gru_cell_18/mul_2Mul,gru_18/while/gru_cell_18/clip_by_value_1:z:0gru_18_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
gru_18/while/gru_cell_18/mul_2Ë
)gru_18/while/gru_cell_18/ReadVariableOp_8ReadVariableOp4gru_18_while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02+
)gru_18/while/gru_cell_18/ReadVariableOp_8±
.gru_18/while/gru_cell_18/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       20
.gru_18/while/gru_cell_18/strided_slice_8/stackµ
0gru_18/while/gru_cell_18/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0gru_18/while/gru_cell_18/strided_slice_8/stack_1µ
0gru_18/while/gru_cell_18/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_18/while/gru_cell_18/strided_slice_8/stack_2
(gru_18/while/gru_cell_18/strided_slice_8StridedSlice1gru_18/while/gru_cell_18/ReadVariableOp_8:value:07gru_18/while/gru_cell_18/strided_slice_8/stack:output:09gru_18/while/gru_cell_18/strided_slice_8/stack_1:output:09gru_18/while/gru_cell_18/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2*
(gru_18/while/gru_cell_18/strided_slice_8Ù
!gru_18/while/gru_cell_18/MatMul_5MatMul"gru_18/while/gru_cell_18/mul_2:z:01gru_18/while/gru_cell_18/strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!gru_18/while/gru_cell_18/MatMul_5Õ
gru_18/while/gru_cell_18/add_4AddV2+gru_18/while/gru_cell_18/BiasAdd_2:output:0+gru_18/while/gru_cell_18/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
gru_18/while/gru_cell_18/add_4
gru_18/while/gru_cell_18/TanhTanh"gru_18/while/gru_cell_18/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/while/gru_cell_18/TanhÁ
gru_18/while/gru_cell_18/mul_3Mul*gru_18/while/gru_cell_18/clip_by_value:z:0gru_18_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
gru_18/while/gru_cell_18/mul_3
gru_18/while/gru_cell_18/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
gru_18/while/gru_cell_18/sub/xÊ
gru_18/while/gru_cell_18/subSub'gru_18/while/gru_cell_18/sub/x:output:0*gru_18/while/gru_cell_18/clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/while/gru_cell_18/sub¾
gru_18/while/gru_cell_18/mul_4Mul gru_18/while/gru_cell_18/sub:z:0!gru_18/while/gru_cell_18/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
gru_18/while/gru_cell_18/mul_4Ã
gru_18/while/gru_cell_18/add_5AddV2"gru_18/while/gru_cell_18/mul_3:z:0"gru_18/while/gru_cell_18/mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
gru_18/while/gru_cell_18/add_5
1gru_18/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_18_while_placeholder_1gru_18_while_placeholder"gru_18/while/gru_cell_18/add_5:z:0*
_output_shapes
: *
element_dtype023
1gru_18/while/TensorArrayV2Write/TensorListSetItemj
gru_18/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_18/while/add/y
gru_18/while/addAddV2gru_18_while_placeholdergru_18/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_18/while/addn
gru_18/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_18/while/add_1/y
gru_18/while/add_1AddV2&gru_18_while_gru_18_while_loop_countergru_18/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_18/while/add_1
gru_18/while/IdentityIdentitygru_18/while/add_1:z:0^gru_18/while/NoOp*
T0*
_output_shapes
: 2
gru_18/while/Identity¡
gru_18/while/Identity_1Identity,gru_18_while_gru_18_while_maximum_iterations^gru_18/while/NoOp*
T0*
_output_shapes
: 2
gru_18/while/Identity_1
gru_18/while/Identity_2Identitygru_18/while/add:z:0^gru_18/while/NoOp*
T0*
_output_shapes
: 2
gru_18/while/Identity_2¶
gru_18/while/Identity_3IdentityAgru_18/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_18/while/NoOp*
T0*
_output_shapes
: 2
gru_18/while/Identity_3¨
gru_18/while/Identity_4Identity"gru_18/while/gru_cell_18/add_5:z:0^gru_18/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/while/Identity_4ò
gru_18/while/NoOpNoOp(^gru_18/while/gru_cell_18/ReadVariableOp*^gru_18/while/gru_cell_18/ReadVariableOp_1*^gru_18/while/gru_cell_18/ReadVariableOp_2*^gru_18/while/gru_cell_18/ReadVariableOp_3*^gru_18/while/gru_cell_18/ReadVariableOp_4*^gru_18/while/gru_cell_18/ReadVariableOp_5*^gru_18/while/gru_cell_18/ReadVariableOp_6*^gru_18/while/gru_cell_18/ReadVariableOp_7*^gru_18/while/gru_cell_18/ReadVariableOp_8*"
_acd_function_control_output(*
_output_shapes
 2
gru_18/while/NoOp"L
#gru_18_while_gru_18_strided_slice_1%gru_18_while_gru_18_strided_slice_1_0"j
2gru_18_while_gru_cell_18_readvariableop_3_resource4gru_18_while_gru_cell_18_readvariableop_3_resource_0"j
2gru_18_while_gru_cell_18_readvariableop_6_resource4gru_18_while_gru_cell_18_readvariableop_6_resource_0"f
0gru_18_while_gru_cell_18_readvariableop_resource2gru_18_while_gru_cell_18_readvariableop_resource_0"7
gru_18_while_identitygru_18/while/Identity:output:0";
gru_18_while_identity_1 gru_18/while/Identity_1:output:0";
gru_18_while_identity_2 gru_18/while/Identity_2:output:0";
gru_18_while_identity_3 gru_18/while/Identity_3:output:0";
gru_18_while_identity_4 gru_18/while/Identity_4:output:0"Ä
_gru_18_while_tensorarrayv2read_tensorlistgetitem_gru_18_tensorarrayunstack_tensorlistfromtensoragru_18_while_tensorarrayv2read_tensorlistgetitem_gru_18_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : 2R
'gru_18/while/gru_cell_18/ReadVariableOp'gru_18/while/gru_cell_18/ReadVariableOp2V
)gru_18/while/gru_cell_18/ReadVariableOp_1)gru_18/while/gru_cell_18/ReadVariableOp_12V
)gru_18/while/gru_cell_18/ReadVariableOp_2)gru_18/while/gru_cell_18/ReadVariableOp_22V
)gru_18/while/gru_cell_18/ReadVariableOp_3)gru_18/while/gru_cell_18/ReadVariableOp_32V
)gru_18/while/gru_cell_18/ReadVariableOp_4)gru_18/while/gru_cell_18/ReadVariableOp_42V
)gru_18/while/gru_cell_18/ReadVariableOp_5)gru_18/while/gru_cell_18/ReadVariableOp_52V
)gru_18/while/gru_cell_18/ReadVariableOp_6)gru_18/while/gru_cell_18/ReadVariableOp_62V
)gru_18/while/gru_cell_18/ReadVariableOp_7)gru_18/while/gru_cell_18/ReadVariableOp_72V
)gru_18/while/gru_cell_18/ReadVariableOp_8)gru_18/while/gru_cell_18/ReadVariableOp_8: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
Ó®
¢
A__inference_gru_18_layer_call_and_return_conditional_losses_75744

inputs5
#gru_cell_18_readvariableop_resource:23
%gru_cell_18_readvariableop_3_resource:7
%gru_cell_18_readvariableop_6_resource:

identity¢gru_cell_18/ReadVariableOp¢gru_cell_18/ReadVariableOp_1¢gru_cell_18/ReadVariableOp_2¢gru_cell_18/ReadVariableOp_3¢gru_cell_18/ReadVariableOp_4¢gru_cell_18/ReadVariableOp_5¢gru_cell_18/ReadVariableOp_6¢gru_cell_18/ReadVariableOp_7¢gru_cell_18/ReadVariableOp_8¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2
gru_cell_18/ReadVariableOpReadVariableOp#gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02
gru_cell_18/ReadVariableOp
gru_cell_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_18/strided_slice/stack
!gru_cell_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2#
!gru_cell_18/strided_slice/stack_1
!gru_cell_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_18/strided_slice/stack_2Ä
gru_cell_18/strided_sliceStridedSlice"gru_cell_18/ReadVariableOp:value:0(gru_cell_18/strided_slice/stack:output:0*gru_cell_18/strided_slice/stack_1:output:0*gru_cell_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
gru_cell_18/strided_slice¢
gru_cell_18/MatMulMatMulstrided_slice_2:output:0"gru_cell_18/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul 
gru_cell_18/ReadVariableOp_1ReadVariableOp#gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02
gru_cell_18/ReadVariableOp_1
!gru_cell_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2#
!gru_cell_18/strided_slice_1/stack
#gru_cell_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gru_cell_18/strided_slice_1/stack_1
#gru_cell_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_1/stack_2Ð
gru_cell_18/strided_slice_1StridedSlice$gru_cell_18/ReadVariableOp_1:value:0*gru_cell_18/strided_slice_1/stack:output:0,gru_cell_18/strided_slice_1/stack_1:output:0,gru_cell_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
gru_cell_18/strided_slice_1¨
gru_cell_18/MatMul_1MatMulstrided_slice_2:output:0$gru_cell_18/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_1 
gru_cell_18/ReadVariableOp_2ReadVariableOp#gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02
gru_cell_18/ReadVariableOp_2
!gru_cell_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!gru_cell_18/strided_slice_2/stack
#gru_cell_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_18/strided_slice_2/stack_1
#gru_cell_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_2/stack_2Ð
gru_cell_18/strided_slice_2StridedSlice$gru_cell_18/ReadVariableOp_2:value:0*gru_cell_18/strided_slice_2/stack:output:0,gru_cell_18/strided_slice_2/stack_1:output:0,gru_cell_18/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
gru_cell_18/strided_slice_2¨
gru_cell_18/MatMul_2MatMulstrided_slice_2:output:0$gru_cell_18/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_2
gru_cell_18/ReadVariableOp_3ReadVariableOp%gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02
gru_cell_18/ReadVariableOp_3
!gru_cell_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!gru_cell_18/strided_slice_3/stack
#gru_cell_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
2%
#gru_cell_18/strided_slice_3/stack_1
#gru_cell_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_3/stack_2¼
gru_cell_18/strided_slice_3StridedSlice$gru_cell_18/ReadVariableOp_3:value:0*gru_cell_18/strided_slice_3/stack:output:0,gru_cell_18/strided_slice_3/stack_1:output:0,gru_cell_18/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask2
gru_cell_18/strided_slice_3«
gru_cell_18/BiasAddBiasAddgru_cell_18/MatMul:product:0$gru_cell_18/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/BiasAdd
gru_cell_18/ReadVariableOp_4ReadVariableOp%gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02
gru_cell_18/ReadVariableOp_4
!gru_cell_18/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
2#
!gru_cell_18/strided_slice_4/stack
#gru_cell_18/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_4/stack_1
#gru_cell_18/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_4/stack_2ª
gru_cell_18/strided_slice_4StridedSlice$gru_cell_18/ReadVariableOp_4:value:0*gru_cell_18/strided_slice_4/stack:output:0,gru_cell_18/strided_slice_4/stack_1:output:0,gru_cell_18/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
2
gru_cell_18/strided_slice_4±
gru_cell_18/BiasAdd_1BiasAddgru_cell_18/MatMul_1:product:0$gru_cell_18/strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/BiasAdd_1
gru_cell_18/ReadVariableOp_5ReadVariableOp%gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02
gru_cell_18/ReadVariableOp_5
!gru_cell_18/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!gru_cell_18/strided_slice_5/stack
#gru_cell_18/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#gru_cell_18/strided_slice_5/stack_1
#gru_cell_18/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_5/stack_2º
gru_cell_18/strided_slice_5StridedSlice$gru_cell_18/ReadVariableOp_5:value:0*gru_cell_18/strided_slice_5/stack:output:0,gru_cell_18/strided_slice_5/stack_1:output:0,gru_cell_18/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask2
gru_cell_18/strided_slice_5±
gru_cell_18/BiasAdd_2BiasAddgru_cell_18/MatMul_2:product:0$gru_cell_18/strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/BiasAdd_2¢
gru_cell_18/ReadVariableOp_6ReadVariableOp%gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02
gru_cell_18/ReadVariableOp_6
!gru_cell_18/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gru_cell_18/strided_slice_6/stack
#gru_cell_18/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2%
#gru_cell_18/strided_slice_6/stack_1
#gru_cell_18/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_6/stack_2Ð
gru_cell_18/strided_slice_6StridedSlice$gru_cell_18/ReadVariableOp_6:value:0*gru_cell_18/strided_slice_6/stack:output:0,gru_cell_18/strided_slice_6/stack_1:output:0,gru_cell_18/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
gru_cell_18/strided_slice_6
gru_cell_18/MatMul_3MatMulzeros:output:0$gru_cell_18/strided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_3¢
gru_cell_18/ReadVariableOp_7ReadVariableOp%gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02
gru_cell_18/ReadVariableOp_7
!gru_cell_18/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2#
!gru_cell_18/strided_slice_7/stack
#gru_cell_18/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gru_cell_18/strided_slice_7/stack_1
#gru_cell_18/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_7/stack_2Ð
gru_cell_18/strided_slice_7StridedSlice$gru_cell_18/ReadVariableOp_7:value:0*gru_cell_18/strided_slice_7/stack:output:0,gru_cell_18/strided_slice_7/stack_1:output:0,gru_cell_18/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
gru_cell_18/strided_slice_7
gru_cell_18/MatMul_4MatMulzeros:output:0$gru_cell_18/strided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_4
gru_cell_18/addAddV2gru_cell_18/BiasAdd:output:0gru_cell_18/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/addk
gru_cell_18/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
gru_cell_18/Consto
gru_cell_18/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
gru_cell_18/Const_1
gru_cell_18/MulMulgru_cell_18/add:z:0gru_cell_18/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Mul
gru_cell_18/Add_1AddV2gru_cell_18/Mul:z:0gru_cell_18/Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Add_1
#gru_cell_18/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#gru_cell_18/clip_by_value/Minimum/yÈ
!gru_cell_18/clip_by_value/MinimumMinimumgru_cell_18/Add_1:z:0,gru_cell_18/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!gru_cell_18/clip_by_value/Minimum
gru_cell_18/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_cell_18/clip_by_value/yÀ
gru_cell_18/clip_by_valueMaximum%gru_cell_18/clip_by_value/Minimum:z:0$gru_cell_18/clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/clip_by_value¡
gru_cell_18/add_2AddV2gru_cell_18/BiasAdd_1:output:0gru_cell_18/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/add_2o
gru_cell_18/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
gru_cell_18/Const_2o
gru_cell_18/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
gru_cell_18/Const_3
gru_cell_18/Mul_1Mulgru_cell_18/add_2:z:0gru_cell_18/Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Mul_1
gru_cell_18/Add_3AddV2gru_cell_18/Mul_1:z:0gru_cell_18/Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Add_3
%gru_cell_18/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%gru_cell_18/clip_by_value_1/Minimum/yÎ
#gru_cell_18/clip_by_value_1/MinimumMinimumgru_cell_18/Add_3:z:0.gru_cell_18/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2%
#gru_cell_18/clip_by_value_1/Minimum
gru_cell_18/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_cell_18/clip_by_value_1/yÈ
gru_cell_18/clip_by_value_1Maximum'gru_cell_18/clip_by_value_1/Minimum:z:0&gru_cell_18/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/clip_by_value_1
gru_cell_18/mul_2Mulgru_cell_18/clip_by_value_1:z:0zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/mul_2¢
gru_cell_18/ReadVariableOp_8ReadVariableOp%gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02
gru_cell_18/ReadVariableOp_8
!gru_cell_18/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!gru_cell_18/strided_slice_8/stack
#gru_cell_18/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_18/strided_slice_8/stack_1
#gru_cell_18/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_8/stack_2Ð
gru_cell_18/strided_slice_8StridedSlice$gru_cell_18/ReadVariableOp_8:value:0*gru_cell_18/strided_slice_8/stack:output:0,gru_cell_18/strided_slice_8/stack_1:output:0,gru_cell_18/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
gru_cell_18/strided_slice_8¥
gru_cell_18/MatMul_5MatMulgru_cell_18/mul_2:z:0$gru_cell_18/strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_5¡
gru_cell_18/add_4AddV2gru_cell_18/BiasAdd_2:output:0gru_cell_18/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/add_4u
gru_cell_18/TanhTanhgru_cell_18/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Tanh
gru_cell_18/mul_3Mulgru_cell_18/clip_by_value:z:0zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/mul_3k
gru_cell_18/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_18/sub/x
gru_cell_18/subSubgru_cell_18/sub/x:output:0gru_cell_18/clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/sub
gru_cell_18/mul_4Mulgru_cell_18/sub:z:0gru_cell_18/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/mul_4
gru_cell_18/add_5AddV2gru_cell_18/mul_3:z:0gru_cell_18/mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/add_5
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¹
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0#gru_cell_18_readvariableop_resource%gru_cell_18_readvariableop_3_resource%gru_cell_18_readvariableop_6_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_75606*
condR
while_cond_75605*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
transpose_1s
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityë
NoOpNoOp^gru_cell_18/ReadVariableOp^gru_cell_18/ReadVariableOp_1^gru_cell_18/ReadVariableOp_2^gru_cell_18/ReadVariableOp_3^gru_cell_18/ReadVariableOp_4^gru_cell_18/ReadVariableOp_5^gru_cell_18/ReadVariableOp_6^gru_cell_18/ReadVariableOp_7^gru_cell_18/ReadVariableOp_8^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 28
gru_cell_18/ReadVariableOpgru_cell_18/ReadVariableOp2<
gru_cell_18/ReadVariableOp_1gru_cell_18/ReadVariableOp_12<
gru_cell_18/ReadVariableOp_2gru_cell_18/ReadVariableOp_22<
gru_cell_18/ReadVariableOp_3gru_cell_18/ReadVariableOp_32<
gru_cell_18/ReadVariableOp_4gru_cell_18/ReadVariableOp_42<
gru_cell_18/ReadVariableOp_5gru_cell_18/ReadVariableOp_52<
gru_cell_18/ReadVariableOp_6gru_cell_18/ReadVariableOp_62<
gru_cell_18/ReadVariableOp_7gru_cell_18/ReadVariableOp_72<
gru_cell_18/ReadVariableOp_8gru_cell_18/ReadVariableOp_82
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs

ó
B__inference_dense_7_layer_call_and_return_conditional_losses_76020

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs

ó
B__inference_dense_7_layer_call_and_return_conditional_losses_73892

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
ØØ

G__inference_sequential_9_layer_call_and_return_conditional_losses_74646

inputs6
"embedding_9_embedding_lookup_74381:
Ù2<
*gru_18_gru_cell_18_readvariableop_resource:2:
,gru_18_gru_cell_18_readvariableop_3_resource:>
,gru_18_gru_cell_18_readvariableop_6_resource:
8
&dense_7_matmul_readvariableop_resource:
5
'dense_7_biasadd_readvariableop_resource:
identity¢dense_7/BiasAdd/ReadVariableOp¢dense_7/MatMul/ReadVariableOp¢embedding_9/embedding_lookup¢!gru_18/gru_cell_18/ReadVariableOp¢#gru_18/gru_cell_18/ReadVariableOp_1¢#gru_18/gru_cell_18/ReadVariableOp_2¢#gru_18/gru_cell_18/ReadVariableOp_3¢#gru_18/gru_cell_18/ReadVariableOp_4¢#gru_18/gru_cell_18/ReadVariableOp_5¢#gru_18/gru_cell_18/ReadVariableOp_6¢#gru_18/gru_cell_18/ReadVariableOp_7¢#gru_18/gru_cell_18/ReadVariableOp_8¢gru_18/whileu
embedding_9/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_9/Cast·
embedding_9/embedding_lookupResourceGather"embedding_9_embedding_lookup_74381embedding_9/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_9/embedding_lookup/74381*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype02
embedding_9/embedding_lookup
%embedding_9/embedding_lookup/IdentityIdentity%embedding_9/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_9/embedding_lookup/74381*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%embedding_9/embedding_lookup/IdentityÄ
'embedding_9/embedding_lookup/Identity_1Identity.embedding_9/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'embedding_9/embedding_lookup/Identity_1|
gru_18/ShapeShape0embedding_9/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
gru_18/Shape
gru_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_18/strided_slice/stack
gru_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_18/strided_slice/stack_1
gru_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_18/strided_slice/stack_2
gru_18/strided_sliceStridedSlicegru_18/Shape:output:0#gru_18/strided_slice/stack:output:0%gru_18/strided_slice/stack_1:output:0%gru_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_18/strided_slicej
gru_18/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
gru_18/zeros/mul/y
gru_18/zeros/mulMulgru_18/strided_slice:output:0gru_18/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_18/zeros/mulm
gru_18/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
gru_18/zeros/Less/y
gru_18/zeros/LessLessgru_18/zeros/mul:z:0gru_18/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_18/zeros/Lessp
gru_18/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
gru_18/zeros/packed/1
gru_18/zeros/packedPackgru_18/strided_slice:output:0gru_18/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_18/zeros/packedm
gru_18/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_18/zeros/Const
gru_18/zerosFillgru_18/zeros/packed:output:0gru_18/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/zeros
gru_18/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_18/transpose/perm¹
gru_18/transpose	Transpose0embedding_9/embedding_lookup/Identity_1:output:0gru_18/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_18/transposed
gru_18/Shape_1Shapegru_18/transpose:y:0*
T0*
_output_shapes
:2
gru_18/Shape_1
gru_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_18/strided_slice_1/stack
gru_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_18/strided_slice_1/stack_1
gru_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_18/strided_slice_1/stack_2
gru_18/strided_slice_1StridedSlicegru_18/Shape_1:output:0%gru_18/strided_slice_1/stack:output:0'gru_18/strided_slice_1/stack_1:output:0'gru_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_18/strided_slice_1
"gru_18/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"gru_18/TensorArrayV2/element_shapeÎ
gru_18/TensorArrayV2TensorListReserve+gru_18/TensorArrayV2/element_shape:output:0gru_18/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_18/TensorArrayV2Í
<gru_18/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2>
<gru_18/TensorArrayUnstack/TensorListFromTensor/element_shape
.gru_18/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_18/transpose:y:0Egru_18/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.gru_18/TensorArrayUnstack/TensorListFromTensor
gru_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_18/strided_slice_2/stack
gru_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_18/strided_slice_2/stack_1
gru_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_18/strided_slice_2/stack_2¦
gru_18/strided_slice_2StridedSlicegru_18/transpose:y:0%gru_18/strided_slice_2/stack:output:0'gru_18/strided_slice_2/stack_1:output:0'gru_18/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
gru_18/strided_slice_2±
!gru_18/gru_cell_18/ReadVariableOpReadVariableOp*gru_18_gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02#
!gru_18/gru_cell_18/ReadVariableOp¡
&gru_18/gru_cell_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&gru_18/gru_cell_18/strided_slice/stack¥
(gru_18/gru_cell_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2*
(gru_18/gru_cell_18/strided_slice/stack_1¥
(gru_18/gru_cell_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_18/gru_cell_18/strided_slice/stack_2î
 gru_18/gru_cell_18/strided_sliceStridedSlice)gru_18/gru_cell_18/ReadVariableOp:value:0/gru_18/gru_cell_18/strided_slice/stack:output:01gru_18/gru_cell_18/strided_slice/stack_1:output:01gru_18/gru_cell_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2"
 gru_18/gru_cell_18/strided_slice¾
gru_18/gru_cell_18/MatMulMatMulgru_18/strided_slice_2:output:0)gru_18/gru_cell_18/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/MatMulµ
#gru_18/gru_cell_18/ReadVariableOp_1ReadVariableOp*gru_18_gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02%
#gru_18/gru_cell_18/ReadVariableOp_1¥
(gru_18/gru_cell_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2*
(gru_18/gru_cell_18/strided_slice_1/stack©
*gru_18/gru_cell_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2,
*gru_18/gru_cell_18/strided_slice_1/stack_1©
*gru_18/gru_cell_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_18/gru_cell_18/strided_slice_1/stack_2ú
"gru_18/gru_cell_18/strided_slice_1StridedSlice+gru_18/gru_cell_18/ReadVariableOp_1:value:01gru_18/gru_cell_18/strided_slice_1/stack:output:03gru_18/gru_cell_18/strided_slice_1/stack_1:output:03gru_18/gru_cell_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2$
"gru_18/gru_cell_18/strided_slice_1Ä
gru_18/gru_cell_18/MatMul_1MatMulgru_18/strided_slice_2:output:0+gru_18/gru_cell_18/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/MatMul_1µ
#gru_18/gru_cell_18/ReadVariableOp_2ReadVariableOp*gru_18_gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02%
#gru_18/gru_cell_18/ReadVariableOp_2¥
(gru_18/gru_cell_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2*
(gru_18/gru_cell_18/strided_slice_2/stack©
*gru_18/gru_cell_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_18/gru_cell_18/strided_slice_2/stack_1©
*gru_18/gru_cell_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_18/gru_cell_18/strided_slice_2/stack_2ú
"gru_18/gru_cell_18/strided_slice_2StridedSlice+gru_18/gru_cell_18/ReadVariableOp_2:value:01gru_18/gru_cell_18/strided_slice_2/stack:output:03gru_18/gru_cell_18/strided_slice_2/stack_1:output:03gru_18/gru_cell_18/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2$
"gru_18/gru_cell_18/strided_slice_2Ä
gru_18/gru_cell_18/MatMul_2MatMulgru_18/strided_slice_2:output:0+gru_18/gru_cell_18/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/MatMul_2³
#gru_18/gru_cell_18/ReadVariableOp_3ReadVariableOp,gru_18_gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02%
#gru_18/gru_cell_18/ReadVariableOp_3
(gru_18/gru_cell_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(gru_18/gru_cell_18/strided_slice_3/stack¢
*gru_18/gru_cell_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
2,
*gru_18/gru_cell_18/strided_slice_3/stack_1¢
*gru_18/gru_cell_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru_18/gru_cell_18/strided_slice_3/stack_2æ
"gru_18/gru_cell_18/strided_slice_3StridedSlice+gru_18/gru_cell_18/ReadVariableOp_3:value:01gru_18/gru_cell_18/strided_slice_3/stack:output:03gru_18/gru_cell_18/strided_slice_3/stack_1:output:03gru_18/gru_cell_18/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask2$
"gru_18/gru_cell_18/strided_slice_3Ç
gru_18/gru_cell_18/BiasAddBiasAdd#gru_18/gru_cell_18/MatMul:product:0+gru_18/gru_cell_18/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/BiasAdd³
#gru_18/gru_cell_18/ReadVariableOp_4ReadVariableOp,gru_18_gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02%
#gru_18/gru_cell_18/ReadVariableOp_4
(gru_18/gru_cell_18/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
2*
(gru_18/gru_cell_18/strided_slice_4/stack¢
*gru_18/gru_cell_18/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru_18/gru_cell_18/strided_slice_4/stack_1¢
*gru_18/gru_cell_18/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru_18/gru_cell_18/strided_slice_4/stack_2Ô
"gru_18/gru_cell_18/strided_slice_4StridedSlice+gru_18/gru_cell_18/ReadVariableOp_4:value:01gru_18/gru_cell_18/strided_slice_4/stack:output:03gru_18/gru_cell_18/strided_slice_4/stack_1:output:03gru_18/gru_cell_18/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
2$
"gru_18/gru_cell_18/strided_slice_4Í
gru_18/gru_cell_18/BiasAdd_1BiasAdd%gru_18/gru_cell_18/MatMul_1:product:0+gru_18/gru_cell_18/strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/BiasAdd_1³
#gru_18/gru_cell_18/ReadVariableOp_5ReadVariableOp,gru_18_gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02%
#gru_18/gru_cell_18/ReadVariableOp_5
(gru_18/gru_cell_18/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(gru_18/gru_cell_18/strided_slice_5/stack¢
*gru_18/gru_cell_18/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2,
*gru_18/gru_cell_18/strided_slice_5/stack_1¢
*gru_18/gru_cell_18/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru_18/gru_cell_18/strided_slice_5/stack_2ä
"gru_18/gru_cell_18/strided_slice_5StridedSlice+gru_18/gru_cell_18/ReadVariableOp_5:value:01gru_18/gru_cell_18/strided_slice_5/stack:output:03gru_18/gru_cell_18/strided_slice_5/stack_1:output:03gru_18/gru_cell_18/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask2$
"gru_18/gru_cell_18/strided_slice_5Í
gru_18/gru_cell_18/BiasAdd_2BiasAdd%gru_18/gru_cell_18/MatMul_2:product:0+gru_18/gru_cell_18/strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/BiasAdd_2·
#gru_18/gru_cell_18/ReadVariableOp_6ReadVariableOp,gru_18_gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02%
#gru_18/gru_cell_18/ReadVariableOp_6¥
(gru_18/gru_cell_18/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(gru_18/gru_cell_18/strided_slice_6/stack©
*gru_18/gru_cell_18/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2,
*gru_18/gru_cell_18/strided_slice_6/stack_1©
*gru_18/gru_cell_18/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_18/gru_cell_18/strided_slice_6/stack_2ú
"gru_18/gru_cell_18/strided_slice_6StridedSlice+gru_18/gru_cell_18/ReadVariableOp_6:value:01gru_18/gru_cell_18/strided_slice_6/stack:output:03gru_18/gru_cell_18/strided_slice_6/stack_1:output:03gru_18/gru_cell_18/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2$
"gru_18/gru_cell_18/strided_slice_6º
gru_18/gru_cell_18/MatMul_3MatMulgru_18/zeros:output:0+gru_18/gru_cell_18/strided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/MatMul_3·
#gru_18/gru_cell_18/ReadVariableOp_7ReadVariableOp,gru_18_gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02%
#gru_18/gru_cell_18/ReadVariableOp_7¥
(gru_18/gru_cell_18/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2*
(gru_18/gru_cell_18/strided_slice_7/stack©
*gru_18/gru_cell_18/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2,
*gru_18/gru_cell_18/strided_slice_7/stack_1©
*gru_18/gru_cell_18/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_18/gru_cell_18/strided_slice_7/stack_2ú
"gru_18/gru_cell_18/strided_slice_7StridedSlice+gru_18/gru_cell_18/ReadVariableOp_7:value:01gru_18/gru_cell_18/strided_slice_7/stack:output:03gru_18/gru_cell_18/strided_slice_7/stack_1:output:03gru_18/gru_cell_18/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2$
"gru_18/gru_cell_18/strided_slice_7º
gru_18/gru_cell_18/MatMul_4MatMulgru_18/zeros:output:0+gru_18/gru_cell_18/strided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/MatMul_4·
gru_18/gru_cell_18/addAddV2#gru_18/gru_cell_18/BiasAdd:output:0%gru_18/gru_cell_18/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/addy
gru_18/gru_cell_18/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
gru_18/gru_cell_18/Const}
gru_18/gru_cell_18/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
gru_18/gru_cell_18/Const_1¨
gru_18/gru_cell_18/MulMulgru_18/gru_cell_18/add:z:0!gru_18/gru_cell_18/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/Mul°
gru_18/gru_cell_18/Add_1AddV2gru_18/gru_cell_18/Mul:z:0#gru_18/gru_cell_18/Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/Add_1
*gru_18/gru_cell_18/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*gru_18/gru_cell_18/clip_by_value/Minimum/yä
(gru_18/gru_cell_18/clip_by_value/MinimumMinimumgru_18/gru_cell_18/Add_1:z:03gru_18/gru_cell_18/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2*
(gru_18/gru_cell_18/clip_by_value/Minimum
"gru_18/gru_cell_18/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"gru_18/gru_cell_18/clip_by_value/yÜ
 gru_18/gru_cell_18/clip_by_valueMaximum,gru_18/gru_cell_18/clip_by_value/Minimum:z:0+gru_18/gru_cell_18/clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2"
 gru_18/gru_cell_18/clip_by_value½
gru_18/gru_cell_18/add_2AddV2%gru_18/gru_cell_18/BiasAdd_1:output:0%gru_18/gru_cell_18/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/add_2}
gru_18/gru_cell_18/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
gru_18/gru_cell_18/Const_2}
gru_18/gru_cell_18/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
gru_18/gru_cell_18/Const_3°
gru_18/gru_cell_18/Mul_1Mulgru_18/gru_cell_18/add_2:z:0#gru_18/gru_cell_18/Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/Mul_1²
gru_18/gru_cell_18/Add_3AddV2gru_18/gru_cell_18/Mul_1:z:0#gru_18/gru_cell_18/Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/Add_3¡
,gru_18/gru_cell_18/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,gru_18/gru_cell_18/clip_by_value_1/Minimum/yê
*gru_18/gru_cell_18/clip_by_value_1/MinimumMinimumgru_18/gru_cell_18/Add_3:z:05gru_18/gru_cell_18/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2,
*gru_18/gru_cell_18/clip_by_value_1/Minimum
$gru_18/gru_cell_18/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$gru_18/gru_cell_18/clip_by_value_1/yä
"gru_18/gru_cell_18/clip_by_value_1Maximum.gru_18/gru_cell_18/clip_by_value_1/Minimum:z:0-gru_18/gru_cell_18/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2$
"gru_18/gru_cell_18/clip_by_value_1¬
gru_18/gru_cell_18/mul_2Mul&gru_18/gru_cell_18/clip_by_value_1:z:0gru_18/zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/mul_2·
#gru_18/gru_cell_18/ReadVariableOp_8ReadVariableOp,gru_18_gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02%
#gru_18/gru_cell_18/ReadVariableOp_8¥
(gru_18/gru_cell_18/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       2*
(gru_18/gru_cell_18/strided_slice_8/stack©
*gru_18/gru_cell_18/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_18/gru_cell_18/strided_slice_8/stack_1©
*gru_18/gru_cell_18/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_18/gru_cell_18/strided_slice_8/stack_2ú
"gru_18/gru_cell_18/strided_slice_8StridedSlice+gru_18/gru_cell_18/ReadVariableOp_8:value:01gru_18/gru_cell_18/strided_slice_8/stack:output:03gru_18/gru_cell_18/strided_slice_8/stack_1:output:03gru_18/gru_cell_18/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2$
"gru_18/gru_cell_18/strided_slice_8Á
gru_18/gru_cell_18/MatMul_5MatMulgru_18/gru_cell_18/mul_2:z:0+gru_18/gru_cell_18/strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/MatMul_5½
gru_18/gru_cell_18/add_4AddV2%gru_18/gru_cell_18/BiasAdd_2:output:0%gru_18/gru_cell_18/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/add_4
gru_18/gru_cell_18/TanhTanhgru_18/gru_cell_18/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/Tanhª
gru_18/gru_cell_18/mul_3Mul$gru_18/gru_cell_18/clip_by_value:z:0gru_18/zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/mul_3y
gru_18/gru_cell_18/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_18/gru_cell_18/sub/x²
gru_18/gru_cell_18/subSub!gru_18/gru_cell_18/sub/x:output:0$gru_18/gru_cell_18/clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/sub¦
gru_18/gru_cell_18/mul_4Mulgru_18/gru_cell_18/sub:z:0gru_18/gru_cell_18/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/mul_4«
gru_18/gru_cell_18/add_5AddV2gru_18/gru_cell_18/mul_3:z:0gru_18/gru_cell_18/mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/add_5
$gru_18/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   2&
$gru_18/TensorArrayV2_1/element_shapeÔ
gru_18/TensorArrayV2_1TensorListReserve-gru_18/TensorArrayV2_1/element_shape:output:0gru_18/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_18/TensorArrayV2_1\
gru_18/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_18/time
gru_18/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
gru_18/while/maximum_iterationsx
gru_18/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_18/while/loop_counter
gru_18/whileWhile"gru_18/while/loop_counter:output:0(gru_18/while/maximum_iterations:output:0gru_18/time:output:0gru_18/TensorArrayV2_1:handle:0gru_18/zeros:output:0gru_18/strided_slice_1:output:0>gru_18/TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_18_gru_cell_18_readvariableop_resource,gru_18_gru_cell_18_readvariableop_3_resource,gru_18_gru_cell_18_readvariableop_6_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *#
bodyR
gru_18_while_body_74501*#
condR
gru_18_while_cond_74500*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 2
gru_18/whileÃ
7gru_18/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   29
7gru_18/TensorArrayV2Stack/TensorListStack/element_shape
)gru_18/TensorArrayV2Stack/TensorListStackTensorListStackgru_18/while:output:3@gru_18/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype02+
)gru_18/TensorArrayV2Stack/TensorListStack
gru_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
gru_18/strided_slice_3/stack
gru_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
gru_18/strided_slice_3/stack_1
gru_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_18/strided_slice_3/stack_2Ä
gru_18/strided_slice_3StridedSlice2gru_18/TensorArrayV2Stack/TensorListStack:tensor:0%gru_18/strided_slice_3/stack:output:0'gru_18/strided_slice_3/stack_1:output:0'gru_18/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask2
gru_18/strided_slice_3
gru_18/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_18/transpose_1/permÁ
gru_18/transpose_1	Transpose2gru_18/TensorArrayV2Stack/TensorListStack:tensor:0 gru_18/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/transpose_1¥
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
dense_7/MatMul/ReadVariableOp¤
dense_7/MatMulMatMulgru_18/strided_slice_3:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_7/MatMul¤
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp¡
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_7/BiasAddy
dense_7/SigmoidSigmoiddense_7/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_7/Sigmoidn
IdentityIdentitydense_7/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^embedding_9/embedding_lookup"^gru_18/gru_cell_18/ReadVariableOp$^gru_18/gru_cell_18/ReadVariableOp_1$^gru_18/gru_cell_18/ReadVariableOp_2$^gru_18/gru_cell_18/ReadVariableOp_3$^gru_18/gru_cell_18/ReadVariableOp_4$^gru_18/gru_cell_18/ReadVariableOp_5$^gru_18/gru_cell_18/ReadVariableOp_6$^gru_18/gru_cell_18/ReadVariableOp_7$^gru_18/gru_cell_18/ReadVariableOp_8^gru_18/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2<
embedding_9/embedding_lookupembedding_9/embedding_lookup2F
!gru_18/gru_cell_18/ReadVariableOp!gru_18/gru_cell_18/ReadVariableOp2J
#gru_18/gru_cell_18/ReadVariableOp_1#gru_18/gru_cell_18/ReadVariableOp_12J
#gru_18/gru_cell_18/ReadVariableOp_2#gru_18/gru_cell_18/ReadVariableOp_22J
#gru_18/gru_cell_18/ReadVariableOp_3#gru_18/gru_cell_18/ReadVariableOp_32J
#gru_18/gru_cell_18/ReadVariableOp_4#gru_18/gru_cell_18/ReadVariableOp_42J
#gru_18/gru_cell_18/ReadVariableOp_5#gru_18/gru_cell_18/ReadVariableOp_52J
#gru_18/gru_cell_18/ReadVariableOp_6#gru_18/gru_cell_18/ReadVariableOp_62J
#gru_18/gru_cell_18/ReadVariableOp_7#gru_18/gru_cell_18/ReadVariableOp_72J
#gru_18/gru_cell_18/ReadVariableOp_8#gru_18/gru_cell_18/ReadVariableOp_82
gru_18/whilegru_18/while:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×

+__inference_embedding_9_layer_call_fn_74922

inputs
unknown:
Ù2
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_9_layer_call_and_return_conditional_losses_736142
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó®
¢
A__inference_gru_18_layer_call_and_return_conditional_losses_76000

inputs5
#gru_cell_18_readvariableop_resource:23
%gru_cell_18_readvariableop_3_resource:7
%gru_cell_18_readvariableop_6_resource:

identity¢gru_cell_18/ReadVariableOp¢gru_cell_18/ReadVariableOp_1¢gru_cell_18/ReadVariableOp_2¢gru_cell_18/ReadVariableOp_3¢gru_cell_18/ReadVariableOp_4¢gru_cell_18/ReadVariableOp_5¢gru_cell_18/ReadVariableOp_6¢gru_cell_18/ReadVariableOp_7¢gru_cell_18/ReadVariableOp_8¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2
gru_cell_18/ReadVariableOpReadVariableOp#gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02
gru_cell_18/ReadVariableOp
gru_cell_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_18/strided_slice/stack
!gru_cell_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2#
!gru_cell_18/strided_slice/stack_1
!gru_cell_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_18/strided_slice/stack_2Ä
gru_cell_18/strided_sliceStridedSlice"gru_cell_18/ReadVariableOp:value:0(gru_cell_18/strided_slice/stack:output:0*gru_cell_18/strided_slice/stack_1:output:0*gru_cell_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
gru_cell_18/strided_slice¢
gru_cell_18/MatMulMatMulstrided_slice_2:output:0"gru_cell_18/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul 
gru_cell_18/ReadVariableOp_1ReadVariableOp#gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02
gru_cell_18/ReadVariableOp_1
!gru_cell_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2#
!gru_cell_18/strided_slice_1/stack
#gru_cell_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gru_cell_18/strided_slice_1/stack_1
#gru_cell_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_1/stack_2Ð
gru_cell_18/strided_slice_1StridedSlice$gru_cell_18/ReadVariableOp_1:value:0*gru_cell_18/strided_slice_1/stack:output:0,gru_cell_18/strided_slice_1/stack_1:output:0,gru_cell_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
gru_cell_18/strided_slice_1¨
gru_cell_18/MatMul_1MatMulstrided_slice_2:output:0$gru_cell_18/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_1 
gru_cell_18/ReadVariableOp_2ReadVariableOp#gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02
gru_cell_18/ReadVariableOp_2
!gru_cell_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!gru_cell_18/strided_slice_2/stack
#gru_cell_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_18/strided_slice_2/stack_1
#gru_cell_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_2/stack_2Ð
gru_cell_18/strided_slice_2StridedSlice$gru_cell_18/ReadVariableOp_2:value:0*gru_cell_18/strided_slice_2/stack:output:0,gru_cell_18/strided_slice_2/stack_1:output:0,gru_cell_18/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
gru_cell_18/strided_slice_2¨
gru_cell_18/MatMul_2MatMulstrided_slice_2:output:0$gru_cell_18/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_2
gru_cell_18/ReadVariableOp_3ReadVariableOp%gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02
gru_cell_18/ReadVariableOp_3
!gru_cell_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!gru_cell_18/strided_slice_3/stack
#gru_cell_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
2%
#gru_cell_18/strided_slice_3/stack_1
#gru_cell_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_3/stack_2¼
gru_cell_18/strided_slice_3StridedSlice$gru_cell_18/ReadVariableOp_3:value:0*gru_cell_18/strided_slice_3/stack:output:0,gru_cell_18/strided_slice_3/stack_1:output:0,gru_cell_18/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask2
gru_cell_18/strided_slice_3«
gru_cell_18/BiasAddBiasAddgru_cell_18/MatMul:product:0$gru_cell_18/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/BiasAdd
gru_cell_18/ReadVariableOp_4ReadVariableOp%gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02
gru_cell_18/ReadVariableOp_4
!gru_cell_18/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
2#
!gru_cell_18/strided_slice_4/stack
#gru_cell_18/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_4/stack_1
#gru_cell_18/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_4/stack_2ª
gru_cell_18/strided_slice_4StridedSlice$gru_cell_18/ReadVariableOp_4:value:0*gru_cell_18/strided_slice_4/stack:output:0,gru_cell_18/strided_slice_4/stack_1:output:0,gru_cell_18/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
2
gru_cell_18/strided_slice_4±
gru_cell_18/BiasAdd_1BiasAddgru_cell_18/MatMul_1:product:0$gru_cell_18/strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/BiasAdd_1
gru_cell_18/ReadVariableOp_5ReadVariableOp%gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02
gru_cell_18/ReadVariableOp_5
!gru_cell_18/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!gru_cell_18/strided_slice_5/stack
#gru_cell_18/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#gru_cell_18/strided_slice_5/stack_1
#gru_cell_18/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_5/stack_2º
gru_cell_18/strided_slice_5StridedSlice$gru_cell_18/ReadVariableOp_5:value:0*gru_cell_18/strided_slice_5/stack:output:0,gru_cell_18/strided_slice_5/stack_1:output:0,gru_cell_18/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask2
gru_cell_18/strided_slice_5±
gru_cell_18/BiasAdd_2BiasAddgru_cell_18/MatMul_2:product:0$gru_cell_18/strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/BiasAdd_2¢
gru_cell_18/ReadVariableOp_6ReadVariableOp%gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02
gru_cell_18/ReadVariableOp_6
!gru_cell_18/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gru_cell_18/strided_slice_6/stack
#gru_cell_18/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2%
#gru_cell_18/strided_slice_6/stack_1
#gru_cell_18/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_6/stack_2Ð
gru_cell_18/strided_slice_6StridedSlice$gru_cell_18/ReadVariableOp_6:value:0*gru_cell_18/strided_slice_6/stack:output:0,gru_cell_18/strided_slice_6/stack_1:output:0,gru_cell_18/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
gru_cell_18/strided_slice_6
gru_cell_18/MatMul_3MatMulzeros:output:0$gru_cell_18/strided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_3¢
gru_cell_18/ReadVariableOp_7ReadVariableOp%gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02
gru_cell_18/ReadVariableOp_7
!gru_cell_18/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2#
!gru_cell_18/strided_slice_7/stack
#gru_cell_18/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gru_cell_18/strided_slice_7/stack_1
#gru_cell_18/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_7/stack_2Ð
gru_cell_18/strided_slice_7StridedSlice$gru_cell_18/ReadVariableOp_7:value:0*gru_cell_18/strided_slice_7/stack:output:0,gru_cell_18/strided_slice_7/stack_1:output:0,gru_cell_18/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
gru_cell_18/strided_slice_7
gru_cell_18/MatMul_4MatMulzeros:output:0$gru_cell_18/strided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_4
gru_cell_18/addAddV2gru_cell_18/BiasAdd:output:0gru_cell_18/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/addk
gru_cell_18/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
gru_cell_18/Consto
gru_cell_18/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
gru_cell_18/Const_1
gru_cell_18/MulMulgru_cell_18/add:z:0gru_cell_18/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Mul
gru_cell_18/Add_1AddV2gru_cell_18/Mul:z:0gru_cell_18/Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Add_1
#gru_cell_18/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#gru_cell_18/clip_by_value/Minimum/yÈ
!gru_cell_18/clip_by_value/MinimumMinimumgru_cell_18/Add_1:z:0,gru_cell_18/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!gru_cell_18/clip_by_value/Minimum
gru_cell_18/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_cell_18/clip_by_value/yÀ
gru_cell_18/clip_by_valueMaximum%gru_cell_18/clip_by_value/Minimum:z:0$gru_cell_18/clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/clip_by_value¡
gru_cell_18/add_2AddV2gru_cell_18/BiasAdd_1:output:0gru_cell_18/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/add_2o
gru_cell_18/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
gru_cell_18/Const_2o
gru_cell_18/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
gru_cell_18/Const_3
gru_cell_18/Mul_1Mulgru_cell_18/add_2:z:0gru_cell_18/Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Mul_1
gru_cell_18/Add_3AddV2gru_cell_18/Mul_1:z:0gru_cell_18/Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Add_3
%gru_cell_18/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%gru_cell_18/clip_by_value_1/Minimum/yÎ
#gru_cell_18/clip_by_value_1/MinimumMinimumgru_cell_18/Add_3:z:0.gru_cell_18/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2%
#gru_cell_18/clip_by_value_1/Minimum
gru_cell_18/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_cell_18/clip_by_value_1/yÈ
gru_cell_18/clip_by_value_1Maximum'gru_cell_18/clip_by_value_1/Minimum:z:0&gru_cell_18/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/clip_by_value_1
gru_cell_18/mul_2Mulgru_cell_18/clip_by_value_1:z:0zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/mul_2¢
gru_cell_18/ReadVariableOp_8ReadVariableOp%gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02
gru_cell_18/ReadVariableOp_8
!gru_cell_18/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!gru_cell_18/strided_slice_8/stack
#gru_cell_18/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_18/strided_slice_8/stack_1
#gru_cell_18/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_8/stack_2Ð
gru_cell_18/strided_slice_8StridedSlice$gru_cell_18/ReadVariableOp_8:value:0*gru_cell_18/strided_slice_8/stack:output:0,gru_cell_18/strided_slice_8/stack_1:output:0,gru_cell_18/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
gru_cell_18/strided_slice_8¥
gru_cell_18/MatMul_5MatMulgru_cell_18/mul_2:z:0$gru_cell_18/strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_5¡
gru_cell_18/add_4AddV2gru_cell_18/BiasAdd_2:output:0gru_cell_18/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/add_4u
gru_cell_18/TanhTanhgru_cell_18/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Tanh
gru_cell_18/mul_3Mulgru_cell_18/clip_by_value:z:0zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/mul_3k
gru_cell_18/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_18/sub/x
gru_cell_18/subSubgru_cell_18/sub/x:output:0gru_cell_18/clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/sub
gru_cell_18/mul_4Mulgru_cell_18/sub:z:0gru_cell_18/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/mul_4
gru_cell_18/add_5AddV2gru_cell_18/mul_3:z:0gru_cell_18/mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/add_5
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¹
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0#gru_cell_18_readvariableop_resource%gru_cell_18_readvariableop_3_resource%gru_cell_18_readvariableop_6_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_75862*
condR
while_cond_75861*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
transpose_1s
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityë
NoOpNoOp^gru_cell_18/ReadVariableOp^gru_cell_18/ReadVariableOp_1^gru_cell_18/ReadVariableOp_2^gru_cell_18/ReadVariableOp_3^gru_cell_18/ReadVariableOp_4^gru_cell_18/ReadVariableOp_5^gru_cell_18/ReadVariableOp_6^gru_cell_18/ReadVariableOp_7^gru_cell_18/ReadVariableOp_8^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 28
gru_cell_18/ReadVariableOpgru_cell_18/ReadVariableOp2<
gru_cell_18/ReadVariableOp_1gru_cell_18/ReadVariableOp_12<
gru_cell_18/ReadVariableOp_2gru_cell_18/ReadVariableOp_22<
gru_cell_18/ReadVariableOp_3gru_cell_18/ReadVariableOp_32<
gru_cell_18/ReadVariableOp_4gru_cell_18/ReadVariableOp_42<
gru_cell_18/ReadVariableOp_5gru_cell_18/ReadVariableOp_52<
gru_cell_18/ReadVariableOp_6gru_cell_18/ReadVariableOp_62<
gru_cell_18/ReadVariableOp_7gru_cell_18/ReadVariableOp_72<
gru_cell_18/ReadVariableOp_8gru_cell_18/ReadVariableOp_82
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
õ
¥
while_cond_75605
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_75605___redundant_placeholder03
/while_while_cond_75605___redundant_placeholder13
/while_while_cond_75605___redundant_placeholder23
/while_while_cond_75605___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
®=
ù
A__inference_gru_18_layer_call_and_return_conditional_losses_73119

inputs#
gru_cell_18_73044:2
gru_cell_18_73046:#
gru_cell_18_73048:

identity¢#gru_cell_18/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2ì
#gru_cell_18/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_18_73044gru_cell_18_73046gru_cell_18_73048*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_gru_cell_18_layer_call_and_return_conditional_losses_730432%
#gru_cell_18/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÿ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_18_73044gru_cell_18_73046gru_cell_18_73048*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_73056*
condR
while_cond_73055*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
transpose_1s
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity|
NoOpNoOp$^gru_cell_18/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2J
#gru_cell_18/StatefulPartitionedCall#gru_cell_18/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ØØ

G__inference_sequential_9_layer_call_and_return_conditional_losses_74915

inputs6
"embedding_9_embedding_lookup_74650:
Ù2<
*gru_18_gru_cell_18_readvariableop_resource:2:
,gru_18_gru_cell_18_readvariableop_3_resource:>
,gru_18_gru_cell_18_readvariableop_6_resource:
8
&dense_7_matmul_readvariableop_resource:
5
'dense_7_biasadd_readvariableop_resource:
identity¢dense_7/BiasAdd/ReadVariableOp¢dense_7/MatMul/ReadVariableOp¢embedding_9/embedding_lookup¢!gru_18/gru_cell_18/ReadVariableOp¢#gru_18/gru_cell_18/ReadVariableOp_1¢#gru_18/gru_cell_18/ReadVariableOp_2¢#gru_18/gru_cell_18/ReadVariableOp_3¢#gru_18/gru_cell_18/ReadVariableOp_4¢#gru_18/gru_cell_18/ReadVariableOp_5¢#gru_18/gru_cell_18/ReadVariableOp_6¢#gru_18/gru_cell_18/ReadVariableOp_7¢#gru_18/gru_cell_18/ReadVariableOp_8¢gru_18/whileu
embedding_9/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_9/Cast·
embedding_9/embedding_lookupResourceGather"embedding_9_embedding_lookup_74650embedding_9/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_9/embedding_lookup/74650*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype02
embedding_9/embedding_lookup
%embedding_9/embedding_lookup/IdentityIdentity%embedding_9/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_9/embedding_lookup/74650*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%embedding_9/embedding_lookup/IdentityÄ
'embedding_9/embedding_lookup/Identity_1Identity.embedding_9/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'embedding_9/embedding_lookup/Identity_1|
gru_18/ShapeShape0embedding_9/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
gru_18/Shape
gru_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_18/strided_slice/stack
gru_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_18/strided_slice/stack_1
gru_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_18/strided_slice/stack_2
gru_18/strided_sliceStridedSlicegru_18/Shape:output:0#gru_18/strided_slice/stack:output:0%gru_18/strided_slice/stack_1:output:0%gru_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_18/strided_slicej
gru_18/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
gru_18/zeros/mul/y
gru_18/zeros/mulMulgru_18/strided_slice:output:0gru_18/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_18/zeros/mulm
gru_18/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
gru_18/zeros/Less/y
gru_18/zeros/LessLessgru_18/zeros/mul:z:0gru_18/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_18/zeros/Lessp
gru_18/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
gru_18/zeros/packed/1
gru_18/zeros/packedPackgru_18/strided_slice:output:0gru_18/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_18/zeros/packedm
gru_18/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_18/zeros/Const
gru_18/zerosFillgru_18/zeros/packed:output:0gru_18/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/zeros
gru_18/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_18/transpose/perm¹
gru_18/transpose	Transpose0embedding_9/embedding_lookup/Identity_1:output:0gru_18/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_18/transposed
gru_18/Shape_1Shapegru_18/transpose:y:0*
T0*
_output_shapes
:2
gru_18/Shape_1
gru_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_18/strided_slice_1/stack
gru_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_18/strided_slice_1/stack_1
gru_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_18/strided_slice_1/stack_2
gru_18/strided_slice_1StridedSlicegru_18/Shape_1:output:0%gru_18/strided_slice_1/stack:output:0'gru_18/strided_slice_1/stack_1:output:0'gru_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_18/strided_slice_1
"gru_18/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"gru_18/TensorArrayV2/element_shapeÎ
gru_18/TensorArrayV2TensorListReserve+gru_18/TensorArrayV2/element_shape:output:0gru_18/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_18/TensorArrayV2Í
<gru_18/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2>
<gru_18/TensorArrayUnstack/TensorListFromTensor/element_shape
.gru_18/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_18/transpose:y:0Egru_18/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.gru_18/TensorArrayUnstack/TensorListFromTensor
gru_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_18/strided_slice_2/stack
gru_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_18/strided_slice_2/stack_1
gru_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_18/strided_slice_2/stack_2¦
gru_18/strided_slice_2StridedSlicegru_18/transpose:y:0%gru_18/strided_slice_2/stack:output:0'gru_18/strided_slice_2/stack_1:output:0'gru_18/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
gru_18/strided_slice_2±
!gru_18/gru_cell_18/ReadVariableOpReadVariableOp*gru_18_gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02#
!gru_18/gru_cell_18/ReadVariableOp¡
&gru_18/gru_cell_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&gru_18/gru_cell_18/strided_slice/stack¥
(gru_18/gru_cell_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2*
(gru_18/gru_cell_18/strided_slice/stack_1¥
(gru_18/gru_cell_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_18/gru_cell_18/strided_slice/stack_2î
 gru_18/gru_cell_18/strided_sliceStridedSlice)gru_18/gru_cell_18/ReadVariableOp:value:0/gru_18/gru_cell_18/strided_slice/stack:output:01gru_18/gru_cell_18/strided_slice/stack_1:output:01gru_18/gru_cell_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2"
 gru_18/gru_cell_18/strided_slice¾
gru_18/gru_cell_18/MatMulMatMulgru_18/strided_slice_2:output:0)gru_18/gru_cell_18/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/MatMulµ
#gru_18/gru_cell_18/ReadVariableOp_1ReadVariableOp*gru_18_gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02%
#gru_18/gru_cell_18/ReadVariableOp_1¥
(gru_18/gru_cell_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2*
(gru_18/gru_cell_18/strided_slice_1/stack©
*gru_18/gru_cell_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2,
*gru_18/gru_cell_18/strided_slice_1/stack_1©
*gru_18/gru_cell_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_18/gru_cell_18/strided_slice_1/stack_2ú
"gru_18/gru_cell_18/strided_slice_1StridedSlice+gru_18/gru_cell_18/ReadVariableOp_1:value:01gru_18/gru_cell_18/strided_slice_1/stack:output:03gru_18/gru_cell_18/strided_slice_1/stack_1:output:03gru_18/gru_cell_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2$
"gru_18/gru_cell_18/strided_slice_1Ä
gru_18/gru_cell_18/MatMul_1MatMulgru_18/strided_slice_2:output:0+gru_18/gru_cell_18/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/MatMul_1µ
#gru_18/gru_cell_18/ReadVariableOp_2ReadVariableOp*gru_18_gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02%
#gru_18/gru_cell_18/ReadVariableOp_2¥
(gru_18/gru_cell_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2*
(gru_18/gru_cell_18/strided_slice_2/stack©
*gru_18/gru_cell_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_18/gru_cell_18/strided_slice_2/stack_1©
*gru_18/gru_cell_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_18/gru_cell_18/strided_slice_2/stack_2ú
"gru_18/gru_cell_18/strided_slice_2StridedSlice+gru_18/gru_cell_18/ReadVariableOp_2:value:01gru_18/gru_cell_18/strided_slice_2/stack:output:03gru_18/gru_cell_18/strided_slice_2/stack_1:output:03gru_18/gru_cell_18/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2$
"gru_18/gru_cell_18/strided_slice_2Ä
gru_18/gru_cell_18/MatMul_2MatMulgru_18/strided_slice_2:output:0+gru_18/gru_cell_18/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/MatMul_2³
#gru_18/gru_cell_18/ReadVariableOp_3ReadVariableOp,gru_18_gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02%
#gru_18/gru_cell_18/ReadVariableOp_3
(gru_18/gru_cell_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(gru_18/gru_cell_18/strided_slice_3/stack¢
*gru_18/gru_cell_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
2,
*gru_18/gru_cell_18/strided_slice_3/stack_1¢
*gru_18/gru_cell_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru_18/gru_cell_18/strided_slice_3/stack_2æ
"gru_18/gru_cell_18/strided_slice_3StridedSlice+gru_18/gru_cell_18/ReadVariableOp_3:value:01gru_18/gru_cell_18/strided_slice_3/stack:output:03gru_18/gru_cell_18/strided_slice_3/stack_1:output:03gru_18/gru_cell_18/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask2$
"gru_18/gru_cell_18/strided_slice_3Ç
gru_18/gru_cell_18/BiasAddBiasAdd#gru_18/gru_cell_18/MatMul:product:0+gru_18/gru_cell_18/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/BiasAdd³
#gru_18/gru_cell_18/ReadVariableOp_4ReadVariableOp,gru_18_gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02%
#gru_18/gru_cell_18/ReadVariableOp_4
(gru_18/gru_cell_18/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
2*
(gru_18/gru_cell_18/strided_slice_4/stack¢
*gru_18/gru_cell_18/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru_18/gru_cell_18/strided_slice_4/stack_1¢
*gru_18/gru_cell_18/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru_18/gru_cell_18/strided_slice_4/stack_2Ô
"gru_18/gru_cell_18/strided_slice_4StridedSlice+gru_18/gru_cell_18/ReadVariableOp_4:value:01gru_18/gru_cell_18/strided_slice_4/stack:output:03gru_18/gru_cell_18/strided_slice_4/stack_1:output:03gru_18/gru_cell_18/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
2$
"gru_18/gru_cell_18/strided_slice_4Í
gru_18/gru_cell_18/BiasAdd_1BiasAdd%gru_18/gru_cell_18/MatMul_1:product:0+gru_18/gru_cell_18/strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/BiasAdd_1³
#gru_18/gru_cell_18/ReadVariableOp_5ReadVariableOp,gru_18_gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02%
#gru_18/gru_cell_18/ReadVariableOp_5
(gru_18/gru_cell_18/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(gru_18/gru_cell_18/strided_slice_5/stack¢
*gru_18/gru_cell_18/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2,
*gru_18/gru_cell_18/strided_slice_5/stack_1¢
*gru_18/gru_cell_18/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru_18/gru_cell_18/strided_slice_5/stack_2ä
"gru_18/gru_cell_18/strided_slice_5StridedSlice+gru_18/gru_cell_18/ReadVariableOp_5:value:01gru_18/gru_cell_18/strided_slice_5/stack:output:03gru_18/gru_cell_18/strided_slice_5/stack_1:output:03gru_18/gru_cell_18/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask2$
"gru_18/gru_cell_18/strided_slice_5Í
gru_18/gru_cell_18/BiasAdd_2BiasAdd%gru_18/gru_cell_18/MatMul_2:product:0+gru_18/gru_cell_18/strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/BiasAdd_2·
#gru_18/gru_cell_18/ReadVariableOp_6ReadVariableOp,gru_18_gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02%
#gru_18/gru_cell_18/ReadVariableOp_6¥
(gru_18/gru_cell_18/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(gru_18/gru_cell_18/strided_slice_6/stack©
*gru_18/gru_cell_18/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2,
*gru_18/gru_cell_18/strided_slice_6/stack_1©
*gru_18/gru_cell_18/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_18/gru_cell_18/strided_slice_6/stack_2ú
"gru_18/gru_cell_18/strided_slice_6StridedSlice+gru_18/gru_cell_18/ReadVariableOp_6:value:01gru_18/gru_cell_18/strided_slice_6/stack:output:03gru_18/gru_cell_18/strided_slice_6/stack_1:output:03gru_18/gru_cell_18/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2$
"gru_18/gru_cell_18/strided_slice_6º
gru_18/gru_cell_18/MatMul_3MatMulgru_18/zeros:output:0+gru_18/gru_cell_18/strided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/MatMul_3·
#gru_18/gru_cell_18/ReadVariableOp_7ReadVariableOp,gru_18_gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02%
#gru_18/gru_cell_18/ReadVariableOp_7¥
(gru_18/gru_cell_18/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2*
(gru_18/gru_cell_18/strided_slice_7/stack©
*gru_18/gru_cell_18/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2,
*gru_18/gru_cell_18/strided_slice_7/stack_1©
*gru_18/gru_cell_18/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_18/gru_cell_18/strided_slice_7/stack_2ú
"gru_18/gru_cell_18/strided_slice_7StridedSlice+gru_18/gru_cell_18/ReadVariableOp_7:value:01gru_18/gru_cell_18/strided_slice_7/stack:output:03gru_18/gru_cell_18/strided_slice_7/stack_1:output:03gru_18/gru_cell_18/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2$
"gru_18/gru_cell_18/strided_slice_7º
gru_18/gru_cell_18/MatMul_4MatMulgru_18/zeros:output:0+gru_18/gru_cell_18/strided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/MatMul_4·
gru_18/gru_cell_18/addAddV2#gru_18/gru_cell_18/BiasAdd:output:0%gru_18/gru_cell_18/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/addy
gru_18/gru_cell_18/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
gru_18/gru_cell_18/Const}
gru_18/gru_cell_18/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
gru_18/gru_cell_18/Const_1¨
gru_18/gru_cell_18/MulMulgru_18/gru_cell_18/add:z:0!gru_18/gru_cell_18/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/Mul°
gru_18/gru_cell_18/Add_1AddV2gru_18/gru_cell_18/Mul:z:0#gru_18/gru_cell_18/Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/Add_1
*gru_18/gru_cell_18/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*gru_18/gru_cell_18/clip_by_value/Minimum/yä
(gru_18/gru_cell_18/clip_by_value/MinimumMinimumgru_18/gru_cell_18/Add_1:z:03gru_18/gru_cell_18/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2*
(gru_18/gru_cell_18/clip_by_value/Minimum
"gru_18/gru_cell_18/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"gru_18/gru_cell_18/clip_by_value/yÜ
 gru_18/gru_cell_18/clip_by_valueMaximum,gru_18/gru_cell_18/clip_by_value/Minimum:z:0+gru_18/gru_cell_18/clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2"
 gru_18/gru_cell_18/clip_by_value½
gru_18/gru_cell_18/add_2AddV2%gru_18/gru_cell_18/BiasAdd_1:output:0%gru_18/gru_cell_18/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/add_2}
gru_18/gru_cell_18/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
gru_18/gru_cell_18/Const_2}
gru_18/gru_cell_18/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
gru_18/gru_cell_18/Const_3°
gru_18/gru_cell_18/Mul_1Mulgru_18/gru_cell_18/add_2:z:0#gru_18/gru_cell_18/Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/Mul_1²
gru_18/gru_cell_18/Add_3AddV2gru_18/gru_cell_18/Mul_1:z:0#gru_18/gru_cell_18/Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/Add_3¡
,gru_18/gru_cell_18/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,gru_18/gru_cell_18/clip_by_value_1/Minimum/yê
*gru_18/gru_cell_18/clip_by_value_1/MinimumMinimumgru_18/gru_cell_18/Add_3:z:05gru_18/gru_cell_18/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2,
*gru_18/gru_cell_18/clip_by_value_1/Minimum
$gru_18/gru_cell_18/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$gru_18/gru_cell_18/clip_by_value_1/yä
"gru_18/gru_cell_18/clip_by_value_1Maximum.gru_18/gru_cell_18/clip_by_value_1/Minimum:z:0-gru_18/gru_cell_18/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2$
"gru_18/gru_cell_18/clip_by_value_1¬
gru_18/gru_cell_18/mul_2Mul&gru_18/gru_cell_18/clip_by_value_1:z:0gru_18/zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/mul_2·
#gru_18/gru_cell_18/ReadVariableOp_8ReadVariableOp,gru_18_gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02%
#gru_18/gru_cell_18/ReadVariableOp_8¥
(gru_18/gru_cell_18/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       2*
(gru_18/gru_cell_18/strided_slice_8/stack©
*gru_18/gru_cell_18/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_18/gru_cell_18/strided_slice_8/stack_1©
*gru_18/gru_cell_18/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_18/gru_cell_18/strided_slice_8/stack_2ú
"gru_18/gru_cell_18/strided_slice_8StridedSlice+gru_18/gru_cell_18/ReadVariableOp_8:value:01gru_18/gru_cell_18/strided_slice_8/stack:output:03gru_18/gru_cell_18/strided_slice_8/stack_1:output:03gru_18/gru_cell_18/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2$
"gru_18/gru_cell_18/strided_slice_8Á
gru_18/gru_cell_18/MatMul_5MatMulgru_18/gru_cell_18/mul_2:z:0+gru_18/gru_cell_18/strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/MatMul_5½
gru_18/gru_cell_18/add_4AddV2%gru_18/gru_cell_18/BiasAdd_2:output:0%gru_18/gru_cell_18/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/add_4
gru_18/gru_cell_18/TanhTanhgru_18/gru_cell_18/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/Tanhª
gru_18/gru_cell_18/mul_3Mul$gru_18/gru_cell_18/clip_by_value:z:0gru_18/zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/mul_3y
gru_18/gru_cell_18/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_18/gru_cell_18/sub/x²
gru_18/gru_cell_18/subSub!gru_18/gru_cell_18/sub/x:output:0$gru_18/gru_cell_18/clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/sub¦
gru_18/gru_cell_18/mul_4Mulgru_18/gru_cell_18/sub:z:0gru_18/gru_cell_18/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/mul_4«
gru_18/gru_cell_18/add_5AddV2gru_18/gru_cell_18/mul_3:z:0gru_18/gru_cell_18/mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/gru_cell_18/add_5
$gru_18/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   2&
$gru_18/TensorArrayV2_1/element_shapeÔ
gru_18/TensorArrayV2_1TensorListReserve-gru_18/TensorArrayV2_1/element_shape:output:0gru_18/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_18/TensorArrayV2_1\
gru_18/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_18/time
gru_18/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
gru_18/while/maximum_iterationsx
gru_18/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_18/while/loop_counter
gru_18/whileWhile"gru_18/while/loop_counter:output:0(gru_18/while/maximum_iterations:output:0gru_18/time:output:0gru_18/TensorArrayV2_1:handle:0gru_18/zeros:output:0gru_18/strided_slice_1:output:0>gru_18/TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_18_gru_cell_18_readvariableop_resource,gru_18_gru_cell_18_readvariableop_3_resource,gru_18_gru_cell_18_readvariableop_6_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *#
bodyR
gru_18_while_body_74770*#
condR
gru_18_while_cond_74769*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 2
gru_18/whileÃ
7gru_18/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   29
7gru_18/TensorArrayV2Stack/TensorListStack/element_shape
)gru_18/TensorArrayV2Stack/TensorListStackTensorListStackgru_18/while:output:3@gru_18/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype02+
)gru_18/TensorArrayV2Stack/TensorListStack
gru_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
gru_18/strided_slice_3/stack
gru_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
gru_18/strided_slice_3/stack_1
gru_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_18/strided_slice_3/stack_2Ä
gru_18/strided_slice_3StridedSlice2gru_18/TensorArrayV2Stack/TensorListStack:tensor:0%gru_18/strided_slice_3/stack:output:0'gru_18/strided_slice_3/stack_1:output:0'gru_18/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask2
gru_18/strided_slice_3
gru_18/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_18/transpose_1/permÁ
gru_18/transpose_1	Transpose2gru_18/TensorArrayV2Stack/TensorListStack:tensor:0 gru_18/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/transpose_1¥
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
dense_7/MatMul/ReadVariableOp¤
dense_7/MatMulMatMulgru_18/strided_slice_3:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_7/MatMul¤
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp¡
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_7/BiasAddy
dense_7/SigmoidSigmoiddense_7/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_7/Sigmoidn
IdentityIdentitydense_7/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^embedding_9/embedding_lookup"^gru_18/gru_cell_18/ReadVariableOp$^gru_18/gru_cell_18/ReadVariableOp_1$^gru_18/gru_cell_18/ReadVariableOp_2$^gru_18/gru_cell_18/ReadVariableOp_3$^gru_18/gru_cell_18/ReadVariableOp_4$^gru_18/gru_cell_18/ReadVariableOp_5$^gru_18/gru_cell_18/ReadVariableOp_6$^gru_18/gru_cell_18/ReadVariableOp_7$^gru_18/gru_cell_18/ReadVariableOp_8^gru_18/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2<
embedding_9/embedding_lookupembedding_9/embedding_lookup2F
!gru_18/gru_cell_18/ReadVariableOp!gru_18/gru_cell_18/ReadVariableOp2J
#gru_18/gru_cell_18/ReadVariableOp_1#gru_18/gru_cell_18/ReadVariableOp_12J
#gru_18/gru_cell_18/ReadVariableOp_2#gru_18/gru_cell_18/ReadVariableOp_22J
#gru_18/gru_cell_18/ReadVariableOp_3#gru_18/gru_cell_18/ReadVariableOp_32J
#gru_18/gru_cell_18/ReadVariableOp_4#gru_18/gru_cell_18/ReadVariableOp_42J
#gru_18/gru_cell_18/ReadVariableOp_5#gru_18/gru_cell_18/ReadVariableOp_52J
#gru_18/gru_cell_18/ReadVariableOp_6#gru_18/gru_cell_18/ReadVariableOp_62J
#gru_18/gru_cell_18/ReadVariableOp_7#gru_18/gru_cell_18/ReadVariableOp_72J
#gru_18/gru_cell_18/ReadVariableOp_8#gru_18/gru_cell_18/ReadVariableOp_82
gru_18/whilegru_18/while:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø`
«
F__inference_gru_cell_18_layer_call_and_return_conditional_losses_73235

inputs

states)
readvariableop_resource:2'
readvariableop_3_resource:+
readvariableop_6_resource:

identity

identity_1¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢ReadVariableOp_4¢ReadVariableOp_5¢ReadVariableOp_6¢ReadVariableOp_7¢ReadVariableOp_8x
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:2*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ü
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
strided_slicel
MatMulMatMulinputsstrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
MatMul|
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:2*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
strided_slice_1r
MatMul_1MatMulinputsstrided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

MatMul_1|
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:2*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
strided_slice_2r
MatMul_2MatMulinputsstrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

MatMul_2z
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype02
ReadVariableOp_3x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ô
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask2
strided_slice_3{
BiasAddBiasAddMatMul:product:0strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAddz
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype02
ReadVariableOp_4x
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
2
strided_slice_4/stack|
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_1|
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_2â
strided_slice_4StridedSliceReadVariableOp_4:value:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
2
strided_slice_4
	BiasAdd_1BiasAddMatMul_1:product:0strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
	BiasAdd_1z
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype02
ReadVariableOp_5x
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2ò
strided_slice_5StridedSliceReadVariableOp_5:value:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask2
strided_slice_5
	BiasAdd_2BiasAddMatMul_2:product:0strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
	BiasAdd_2~
ReadVariableOp_6ReadVariableOpreadvariableop_6_resource*
_output_shapes

:
*
dtype02
ReadVariableOp_6
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2
strided_slice_6/stack_1
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2
strided_slice_6StridedSliceReadVariableOp_6:value:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
strided_slice_6r
MatMul_3MatMulstatesstrided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

MatMul_3~
ReadVariableOp_7ReadVariableOpreadvariableop_6_resource*
_output_shapes

:
*
dtype02
ReadVariableOp_7
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2
strided_slice_7/stack
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_7/stack_1
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2
strided_slice_7StridedSliceReadVariableOp_7:value:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
strided_slice_7r
MatMul_4MatMulstatesstrided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1\
MulMuladd:z:0Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Muld
Add_1AddV2Mul:z:0Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value/Minimum/y
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
clip_by_valueq
add_2AddV2BiasAdd_1:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3d
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Mul_1f
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value_1/Minimum/y
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
clip_by_value_1d
mul_2Mulclip_by_value_1:z:0states*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
mul_2~
ReadVariableOp_8ReadVariableOpreadvariableop_6_resource*
_output_shapes

:
*
dtype02
ReadVariableOp_8
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_8/stack
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_8/stack_1
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_8/stack_2
strided_slice_8StridedSliceReadVariableOp_8:value:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
strided_slice_8u
MatMul_5MatMul	mul_2:z:0strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

MatMul_5q
add_4AddV2BiasAdd_2:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
add_4Q
TanhTanh	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Tanhb
mul_3Mulclip_by_value:z:0states*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
mul_3S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xf
subSubsub/x:output:0clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
subZ
mul_4Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
mul_4_
add_5AddV2	mul_3:z:0	mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
add_5d
IdentityIdentity	add_5:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityh

Identity_1Identity	add_5:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity_1÷
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6^ReadVariableOp_7^ReadVariableOp_8*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_62$
ReadVariableOp_7ReadVariableOp_72$
ReadVariableOp_8ReadVariableOp_8:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_namestates
Á	
ª
gru_18_while_cond_74500*
&gru_18_while_gru_18_while_loop_counter0
,gru_18_while_gru_18_while_maximum_iterations
gru_18_while_placeholder
gru_18_while_placeholder_1
gru_18_while_placeholder_2,
(gru_18_while_less_gru_18_strided_slice_1A
=gru_18_while_gru_18_while_cond_74500___redundant_placeholder0A
=gru_18_while_gru_18_while_cond_74500___redundant_placeholder1A
=gru_18_while_gru_18_while_cond_74500___redundant_placeholder2A
=gru_18_while_gru_18_while_cond_74500___redundant_placeholder3
gru_18_while_identity

gru_18/while/LessLessgru_18_while_placeholder(gru_18_while_less_gru_18_strided_slice_1*
T0*
_output_shapes
: 2
gru_18/while/Lessr
gru_18/while/IdentityIdentitygru_18/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_18/while/Identity"7
gru_18_while_identitygru_18/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
·
²
&__inference_gru_18_layer_call_fn_74943
inputs_0
unknown:2
	unknown_0:
	unknown_1:

identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_18_layer_call_and_return_conditional_losses_731192
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
·
²
&__inference_gru_18_layer_call_fn_74954
inputs_0
unknown:2
	unknown_0:
	unknown_1:

identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_18_layer_call_and_return_conditional_losses_733652
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
ø`
«
F__inference_gru_cell_18_layer_call_and_return_conditional_losses_73043

inputs

states)
readvariableop_resource:2'
readvariableop_3_resource:+
readvariableop_6_resource:

identity

identity_1¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢ReadVariableOp_4¢ReadVariableOp_5¢ReadVariableOp_6¢ReadVariableOp_7¢ReadVariableOp_8x
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:2*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ü
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
strided_slicel
MatMulMatMulinputsstrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
MatMul|
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:2*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
strided_slice_1r
MatMul_1MatMulinputsstrided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

MatMul_1|
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:2*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
strided_slice_2r
MatMul_2MatMulinputsstrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

MatMul_2z
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype02
ReadVariableOp_3x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ô
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask2
strided_slice_3{
BiasAddBiasAddMatMul:product:0strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAddz
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype02
ReadVariableOp_4x
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
2
strided_slice_4/stack|
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_1|
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_2â
strided_slice_4StridedSliceReadVariableOp_4:value:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
2
strided_slice_4
	BiasAdd_1BiasAddMatMul_1:product:0strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
	BiasAdd_1z
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype02
ReadVariableOp_5x
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2ò
strided_slice_5StridedSliceReadVariableOp_5:value:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask2
strided_slice_5
	BiasAdd_2BiasAddMatMul_2:product:0strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
	BiasAdd_2~
ReadVariableOp_6ReadVariableOpreadvariableop_6_resource*
_output_shapes

:
*
dtype02
ReadVariableOp_6
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2
strided_slice_6/stack_1
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2
strided_slice_6StridedSliceReadVariableOp_6:value:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
strided_slice_6r
MatMul_3MatMulstatesstrided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

MatMul_3~
ReadVariableOp_7ReadVariableOpreadvariableop_6_resource*
_output_shapes

:
*
dtype02
ReadVariableOp_7
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2
strided_slice_7/stack
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_7/stack_1
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2
strided_slice_7StridedSliceReadVariableOp_7:value:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
strided_slice_7r
MatMul_4MatMulstatesstrided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1\
MulMuladd:z:0Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Muld
Add_1AddV2Mul:z:0Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value/Minimum/y
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
clip_by_valueq
add_2AddV2BiasAdd_1:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3d
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Mul_1f
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value_1/Minimum/y
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
clip_by_value_1d
mul_2Mulclip_by_value_1:z:0states*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
mul_2~
ReadVariableOp_8ReadVariableOpreadvariableop_6_resource*
_output_shapes

:
*
dtype02
ReadVariableOp_8
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_8/stack
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_8/stack_1
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_8/stack_2
strided_slice_8StridedSliceReadVariableOp_8:value:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
strided_slice_8u
MatMul_5MatMul	mul_2:z:0strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

MatMul_5q
add_4AddV2BiasAdd_2:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
add_4Q
TanhTanh	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Tanhb
mul_3Mulclip_by_value:z:0states*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
mul_3S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xf
subSubsub/x:output:0clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
subZ
mul_4Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
mul_4_
add_5AddV2	mul_3:z:0	mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
add_5d
IdentityIdentity	add_5:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityh

Identity_1Identity	add_5:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity_1÷
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6^ReadVariableOp_7^ReadVariableOp_8*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_62$
ReadVariableOp_7ReadVariableOp_72$
ReadVariableOp_8ReadVariableOp_8:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_namestates
¢
³	
while_body_75606
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
+while_gru_cell_18_readvariableop_resource_0:2;
-while_gru_cell_18_readvariableop_3_resource_0:?
-while_gru_cell_18_readvariableop_6_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
)while_gru_cell_18_readvariableop_resource:29
+while_gru_cell_18_readvariableop_3_resource:=
+while_gru_cell_18_readvariableop_6_resource:
¢ while/gru_cell_18/ReadVariableOp¢"while/gru_cell_18/ReadVariableOp_1¢"while/gru_cell_18/ReadVariableOp_2¢"while/gru_cell_18/ReadVariableOp_3¢"while/gru_cell_18/ReadVariableOp_4¢"while/gru_cell_18/ReadVariableOp_5¢"while/gru_cell_18/ReadVariableOp_6¢"while/gru_cell_18/ReadVariableOp_7¢"while/gru_cell_18/ReadVariableOp_8Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem°
 while/gru_cell_18/ReadVariableOpReadVariableOp+while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02"
 while/gru_cell_18/ReadVariableOp
%while/gru_cell_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_18/strided_slice/stack£
'while/gru_cell_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2)
'while/gru_cell_18/strided_slice/stack_1£
'while/gru_cell_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_18/strided_slice/stack_2è
while/gru_cell_18/strided_sliceStridedSlice(while/gru_cell_18/ReadVariableOp:value:0.while/gru_cell_18/strided_slice/stack:output:00while/gru_cell_18/strided_slice/stack_1:output:00while/gru_cell_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2!
while/gru_cell_18/strided_sliceÌ
while/gru_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0(while/gru_cell_18/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul´
"while/gru_cell_18/ReadVariableOp_1ReadVariableOp+while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02$
"while/gru_cell_18/ReadVariableOp_1£
'while/gru_cell_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2)
'while/gru_cell_18/strided_slice_1/stack§
)while/gru_cell_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/gru_cell_18/strided_slice_1/stack_1§
)while/gru_cell_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_1/stack_2ô
!while/gru_cell_18/strided_slice_1StridedSlice*while/gru_cell_18/ReadVariableOp_1:value:00while/gru_cell_18/strided_slice_1/stack:output:02while/gru_cell_18/strided_slice_1/stack_1:output:02while/gru_cell_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_1Ò
while/gru_cell_18/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0*while/gru_cell_18/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_1´
"while/gru_cell_18/ReadVariableOp_2ReadVariableOp+while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02$
"while/gru_cell_18/ReadVariableOp_2£
'while/gru_cell_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/gru_cell_18/strided_slice_2/stack§
)while/gru_cell_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_18/strided_slice_2/stack_1§
)while/gru_cell_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_2/stack_2ô
!while/gru_cell_18/strided_slice_2StridedSlice*while/gru_cell_18/ReadVariableOp_2:value:00while/gru_cell_18/strided_slice_2/stack:output:02while/gru_cell_18/strided_slice_2/stack_1:output:02while/gru_cell_18/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_2Ò
while/gru_cell_18/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0*while/gru_cell_18/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_2²
"while/gru_cell_18/ReadVariableOp_3ReadVariableOp-while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02$
"while/gru_cell_18/ReadVariableOp_3
'while/gru_cell_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'while/gru_cell_18/strided_slice_3/stack 
)while/gru_cell_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
2+
)while/gru_cell_18/strided_slice_3/stack_1 
)while/gru_cell_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_3/stack_2à
!while/gru_cell_18/strided_slice_3StridedSlice*while/gru_cell_18/ReadVariableOp_3:value:00while/gru_cell_18/strided_slice_3/stack:output:02while/gru_cell_18/strided_slice_3/stack_1:output:02while/gru_cell_18/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask2#
!while/gru_cell_18/strided_slice_3Ã
while/gru_cell_18/BiasAddBiasAdd"while/gru_cell_18/MatMul:product:0*while/gru_cell_18/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/BiasAdd²
"while/gru_cell_18/ReadVariableOp_4ReadVariableOp-while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02$
"while/gru_cell_18/ReadVariableOp_4
'while/gru_cell_18/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
2)
'while/gru_cell_18/strided_slice_4/stack 
)while/gru_cell_18/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_4/stack_1 
)while/gru_cell_18/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_4/stack_2Î
!while/gru_cell_18/strided_slice_4StridedSlice*while/gru_cell_18/ReadVariableOp_4:value:00while/gru_cell_18/strided_slice_4/stack:output:02while/gru_cell_18/strided_slice_4/stack_1:output:02while/gru_cell_18/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
2#
!while/gru_cell_18/strided_slice_4É
while/gru_cell_18/BiasAdd_1BiasAdd$while/gru_cell_18/MatMul_1:product:0*while/gru_cell_18/strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/BiasAdd_1²
"while/gru_cell_18/ReadVariableOp_5ReadVariableOp-while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02$
"while/gru_cell_18/ReadVariableOp_5
'while/gru_cell_18/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'while/gru_cell_18/strided_slice_5/stack 
)while/gru_cell_18/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)while/gru_cell_18/strided_slice_5/stack_1 
)while/gru_cell_18/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_5/stack_2Þ
!while/gru_cell_18/strided_slice_5StridedSlice*while/gru_cell_18/ReadVariableOp_5:value:00while/gru_cell_18/strided_slice_5/stack:output:02while/gru_cell_18/strided_slice_5/stack_1:output:02while/gru_cell_18/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask2#
!while/gru_cell_18/strided_slice_5É
while/gru_cell_18/BiasAdd_2BiasAdd$while/gru_cell_18/MatMul_2:product:0*while/gru_cell_18/strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/BiasAdd_2¶
"while/gru_cell_18/ReadVariableOp_6ReadVariableOp-while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02$
"while/gru_cell_18/ReadVariableOp_6£
'while/gru_cell_18/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/gru_cell_18/strided_slice_6/stack§
)while/gru_cell_18/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2+
)while/gru_cell_18/strided_slice_6/stack_1§
)while/gru_cell_18/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_6/stack_2ô
!while/gru_cell_18/strided_slice_6StridedSlice*while/gru_cell_18/ReadVariableOp_6:value:00while/gru_cell_18/strided_slice_6/stack:output:02while/gru_cell_18/strided_slice_6/stack_1:output:02while/gru_cell_18/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_6µ
while/gru_cell_18/MatMul_3MatMulwhile_placeholder_2*while/gru_cell_18/strided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_3¶
"while/gru_cell_18/ReadVariableOp_7ReadVariableOp-while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02$
"while/gru_cell_18/ReadVariableOp_7£
'while/gru_cell_18/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2)
'while/gru_cell_18/strided_slice_7/stack§
)while/gru_cell_18/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/gru_cell_18/strided_slice_7/stack_1§
)while/gru_cell_18/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_7/stack_2ô
!while/gru_cell_18/strided_slice_7StridedSlice*while/gru_cell_18/ReadVariableOp_7:value:00while/gru_cell_18/strided_slice_7/stack:output:02while/gru_cell_18/strided_slice_7/stack_1:output:02while/gru_cell_18/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_7µ
while/gru_cell_18/MatMul_4MatMulwhile_placeholder_2*while/gru_cell_18/strided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_4³
while/gru_cell_18/addAddV2"while/gru_cell_18/BiasAdd:output:0$while/gru_cell_18/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/addw
while/gru_cell_18/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/gru_cell_18/Const{
while/gru_cell_18/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/gru_cell_18/Const_1¤
while/gru_cell_18/MulMulwhile/gru_cell_18/add:z:0 while/gru_cell_18/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Mul¬
while/gru_cell_18/Add_1AddV2while/gru_cell_18/Mul:z:0"while/gru_cell_18/Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Add_1
)while/gru_cell_18/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)while/gru_cell_18/clip_by_value/Minimum/yà
'while/gru_cell_18/clip_by_value/MinimumMinimumwhile/gru_cell_18/Add_1:z:02while/gru_cell_18/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2)
'while/gru_cell_18/clip_by_value/Minimum
!while/gru_cell_18/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/gru_cell_18/clip_by_value/yØ
while/gru_cell_18/clip_by_valueMaximum+while/gru_cell_18/clip_by_value/Minimum:z:0*while/gru_cell_18/clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2!
while/gru_cell_18/clip_by_value¹
while/gru_cell_18/add_2AddV2$while/gru_cell_18/BiasAdd_1:output:0$while/gru_cell_18/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/add_2{
while/gru_cell_18/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/gru_cell_18/Const_2{
while/gru_cell_18/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/gru_cell_18/Const_3¬
while/gru_cell_18/Mul_1Mulwhile/gru_cell_18/add_2:z:0"while/gru_cell_18/Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Mul_1®
while/gru_cell_18/Add_3AddV2while/gru_cell_18/Mul_1:z:0"while/gru_cell_18/Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Add_3
+while/gru_cell_18/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/gru_cell_18/clip_by_value_1/Minimum/yæ
)while/gru_cell_18/clip_by_value_1/MinimumMinimumwhile/gru_cell_18/Add_3:z:04while/gru_cell_18/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2+
)while/gru_cell_18/clip_by_value_1/Minimum
#while/gru_cell_18/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/gru_cell_18/clip_by_value_1/yà
!while/gru_cell_18/clip_by_value_1Maximum-while/gru_cell_18/clip_by_value_1/Minimum:z:0,while/gru_cell_18/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!while/gru_cell_18/clip_by_value_1§
while/gru_cell_18/mul_2Mul%while/gru_cell_18/clip_by_value_1:z:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/mul_2¶
"while/gru_cell_18/ReadVariableOp_8ReadVariableOp-while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02$
"while/gru_cell_18/ReadVariableOp_8£
'while/gru_cell_18/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/gru_cell_18/strided_slice_8/stack§
)while/gru_cell_18/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_18/strided_slice_8/stack_1§
)while/gru_cell_18/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_8/stack_2ô
!while/gru_cell_18/strided_slice_8StridedSlice*while/gru_cell_18/ReadVariableOp_8:value:00while/gru_cell_18/strided_slice_8/stack:output:02while/gru_cell_18/strided_slice_8/stack_1:output:02while/gru_cell_18/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_8½
while/gru_cell_18/MatMul_5MatMulwhile/gru_cell_18/mul_2:z:0*while/gru_cell_18/strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_5¹
while/gru_cell_18/add_4AddV2$while/gru_cell_18/BiasAdd_2:output:0$while/gru_cell_18/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/add_4
while/gru_cell_18/TanhTanhwhile/gru_cell_18/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Tanh¥
while/gru_cell_18/mul_3Mul#while/gru_cell_18/clip_by_value:z:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/mul_3w
while/gru_cell_18/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_18/sub/x®
while/gru_cell_18/subSub while/gru_cell_18/sub/x:output:0#while/gru_cell_18/clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/sub¢
while/gru_cell_18/mul_4Mulwhile/gru_cell_18/sub:z:0while/gru_cell_18/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/mul_4§
while/gru_cell_18/add_5AddV2while/gru_cell_18/mul_3:z:0while/gru_cell_18/mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/add_5ß
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_18/add_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_18/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/Identity_4¥

while/NoOpNoOp!^while/gru_cell_18/ReadVariableOp#^while/gru_cell_18/ReadVariableOp_1#^while/gru_cell_18/ReadVariableOp_2#^while/gru_cell_18/ReadVariableOp_3#^while/gru_cell_18/ReadVariableOp_4#^while/gru_cell_18/ReadVariableOp_5#^while/gru_cell_18/ReadVariableOp_6#^while/gru_cell_18/ReadVariableOp_7#^while/gru_cell_18/ReadVariableOp_8*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"\
+while_gru_cell_18_readvariableop_3_resource-while_gru_cell_18_readvariableop_3_resource_0"\
+while_gru_cell_18_readvariableop_6_resource-while_gru_cell_18_readvariableop_6_resource_0"X
)while_gru_cell_18_readvariableop_resource+while_gru_cell_18_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : 2D
 while/gru_cell_18/ReadVariableOp while/gru_cell_18/ReadVariableOp2H
"while/gru_cell_18/ReadVariableOp_1"while/gru_cell_18/ReadVariableOp_12H
"while/gru_cell_18/ReadVariableOp_2"while/gru_cell_18/ReadVariableOp_22H
"while/gru_cell_18/ReadVariableOp_3"while/gru_cell_18/ReadVariableOp_32H
"while/gru_cell_18/ReadVariableOp_4"while/gru_cell_18/ReadVariableOp_42H
"while/gru_cell_18/ReadVariableOp_5"while/gru_cell_18/ReadVariableOp_52H
"while/gru_cell_18/ReadVariableOp_6"while/gru_cell_18/ReadVariableOp_62H
"while/gru_cell_18/ReadVariableOp_7"while/gru_cell_18/ReadVariableOp_72H
"while/gru_cell_18/ReadVariableOp_8"while/gru_cell_18/ReadVariableOp_8: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 

°
&__inference_gru_18_layer_call_fn_74976

inputs
unknown:2
	unknown_0:
	unknown_1:

identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_18_layer_call_and_return_conditional_losses_741932
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
í

'__inference_dense_7_layer_call_fn_76009

inputs
unknown:

	unknown_0:
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_738922
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
µw

!__inference__traced_restore_76421
file_prefix;
'assignvariableop_embedding_9_embeddings:
Ù23
!assignvariableop_1_dense_7_kernel:
-
assignvariableop_2_dense_7_bias:&
assignvariableop_3_adam_iter:	 (
assignvariableop_4_adam_beta_1: (
assignvariableop_5_adam_beta_2: '
assignvariableop_6_adam_decay: /
%assignvariableop_7_adam_learning_rate: >
,assignvariableop_8_gru_18_gru_cell_18_kernel:2H
6assignvariableop_9_gru_18_gru_cell_18_recurrent_kernel:
9
+assignvariableop_10_gru_18_gru_cell_18_bias:#
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: E
1assignvariableop_15_adam_embedding_9_embeddings_m:
Ù2;
)assignvariableop_16_adam_dense_7_kernel_m:
5
'assignvariableop_17_adam_dense_7_bias_m:F
4assignvariableop_18_adam_gru_18_gru_cell_18_kernel_m:2P
>assignvariableop_19_adam_gru_18_gru_cell_18_recurrent_kernel_m:
@
2assignvariableop_20_adam_gru_18_gru_cell_18_bias_m:E
1assignvariableop_21_adam_embedding_9_embeddings_v:
Ù2;
)assignvariableop_22_adam_dense_7_kernel_v:
5
'assignvariableop_23_adam_dense_7_bias_v:F
4assignvariableop_24_adam_gru_18_gru_cell_18_kernel_v:2P
>assignvariableop_25_adam_gru_18_gru_cell_18_recurrent_kernel_v:
@
2assignvariableop_26_adam_gru_18_gru_cell_18_bias_v:
identity_28¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ô
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueöBóB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÆ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices¸
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¦
AssignVariableOpAssignVariableOp'assignvariableop_embedding_9_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_7_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¤
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_7_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_3¡
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4£
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5£
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¢
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7ª
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8±
AssignVariableOp_8AssignVariableOp,assignvariableop_8_gru_18_gru_cell_18_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9»
AssignVariableOp_9AssignVariableOp6assignvariableop_9_gru_18_gru_cell_18_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10³
AssignVariableOp_10AssignVariableOp+assignvariableop_10_gru_18_gru_cell_18_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¡
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¡
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13£
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14£
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¹
AssignVariableOp_15AssignVariableOp1assignvariableop_15_adam_embedding_9_embeddings_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16±
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_7_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¯
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_7_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¼
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_gru_18_gru_cell_18_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Æ
AssignVariableOp_19AssignVariableOp>assignvariableop_19_adam_gru_18_gru_cell_18_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20º
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_gru_18_gru_cell_18_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¹
AssignVariableOp_21AssignVariableOp1assignvariableop_21_adam_embedding_9_embeddings_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22±
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_7_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23¯
AssignVariableOp_23AssignVariableOp'assignvariableop_23_adam_dense_7_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24¼
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_gru_18_gru_cell_18_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Æ
AssignVariableOp_25AssignVariableOp>assignvariableop_25_adam_gru_18_gru_cell_18_recurrent_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26º
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_gru_18_gru_cell_18_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp°
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27f
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_28
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ó®
¢
A__inference_gru_18_layer_call_and_return_conditional_losses_74193

inputs5
#gru_cell_18_readvariableop_resource:23
%gru_cell_18_readvariableop_3_resource:7
%gru_cell_18_readvariableop_6_resource:

identity¢gru_cell_18/ReadVariableOp¢gru_cell_18/ReadVariableOp_1¢gru_cell_18/ReadVariableOp_2¢gru_cell_18/ReadVariableOp_3¢gru_cell_18/ReadVariableOp_4¢gru_cell_18/ReadVariableOp_5¢gru_cell_18/ReadVariableOp_6¢gru_cell_18/ReadVariableOp_7¢gru_cell_18/ReadVariableOp_8¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2
gru_cell_18/ReadVariableOpReadVariableOp#gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02
gru_cell_18/ReadVariableOp
gru_cell_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_18/strided_slice/stack
!gru_cell_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2#
!gru_cell_18/strided_slice/stack_1
!gru_cell_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_18/strided_slice/stack_2Ä
gru_cell_18/strided_sliceStridedSlice"gru_cell_18/ReadVariableOp:value:0(gru_cell_18/strided_slice/stack:output:0*gru_cell_18/strided_slice/stack_1:output:0*gru_cell_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
gru_cell_18/strided_slice¢
gru_cell_18/MatMulMatMulstrided_slice_2:output:0"gru_cell_18/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul 
gru_cell_18/ReadVariableOp_1ReadVariableOp#gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02
gru_cell_18/ReadVariableOp_1
!gru_cell_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2#
!gru_cell_18/strided_slice_1/stack
#gru_cell_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gru_cell_18/strided_slice_1/stack_1
#gru_cell_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_1/stack_2Ð
gru_cell_18/strided_slice_1StridedSlice$gru_cell_18/ReadVariableOp_1:value:0*gru_cell_18/strided_slice_1/stack:output:0,gru_cell_18/strided_slice_1/stack_1:output:0,gru_cell_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
gru_cell_18/strided_slice_1¨
gru_cell_18/MatMul_1MatMulstrided_slice_2:output:0$gru_cell_18/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_1 
gru_cell_18/ReadVariableOp_2ReadVariableOp#gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02
gru_cell_18/ReadVariableOp_2
!gru_cell_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!gru_cell_18/strided_slice_2/stack
#gru_cell_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_18/strided_slice_2/stack_1
#gru_cell_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_2/stack_2Ð
gru_cell_18/strided_slice_2StridedSlice$gru_cell_18/ReadVariableOp_2:value:0*gru_cell_18/strided_slice_2/stack:output:0,gru_cell_18/strided_slice_2/stack_1:output:0,gru_cell_18/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
gru_cell_18/strided_slice_2¨
gru_cell_18/MatMul_2MatMulstrided_slice_2:output:0$gru_cell_18/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_2
gru_cell_18/ReadVariableOp_3ReadVariableOp%gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02
gru_cell_18/ReadVariableOp_3
!gru_cell_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!gru_cell_18/strided_slice_3/stack
#gru_cell_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
2%
#gru_cell_18/strided_slice_3/stack_1
#gru_cell_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_3/stack_2¼
gru_cell_18/strided_slice_3StridedSlice$gru_cell_18/ReadVariableOp_3:value:0*gru_cell_18/strided_slice_3/stack:output:0,gru_cell_18/strided_slice_3/stack_1:output:0,gru_cell_18/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask2
gru_cell_18/strided_slice_3«
gru_cell_18/BiasAddBiasAddgru_cell_18/MatMul:product:0$gru_cell_18/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/BiasAdd
gru_cell_18/ReadVariableOp_4ReadVariableOp%gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02
gru_cell_18/ReadVariableOp_4
!gru_cell_18/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
2#
!gru_cell_18/strided_slice_4/stack
#gru_cell_18/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_4/stack_1
#gru_cell_18/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_4/stack_2ª
gru_cell_18/strided_slice_4StridedSlice$gru_cell_18/ReadVariableOp_4:value:0*gru_cell_18/strided_slice_4/stack:output:0,gru_cell_18/strided_slice_4/stack_1:output:0,gru_cell_18/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
2
gru_cell_18/strided_slice_4±
gru_cell_18/BiasAdd_1BiasAddgru_cell_18/MatMul_1:product:0$gru_cell_18/strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/BiasAdd_1
gru_cell_18/ReadVariableOp_5ReadVariableOp%gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02
gru_cell_18/ReadVariableOp_5
!gru_cell_18/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!gru_cell_18/strided_slice_5/stack
#gru_cell_18/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#gru_cell_18/strided_slice_5/stack_1
#gru_cell_18/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_5/stack_2º
gru_cell_18/strided_slice_5StridedSlice$gru_cell_18/ReadVariableOp_5:value:0*gru_cell_18/strided_slice_5/stack:output:0,gru_cell_18/strided_slice_5/stack_1:output:0,gru_cell_18/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask2
gru_cell_18/strided_slice_5±
gru_cell_18/BiasAdd_2BiasAddgru_cell_18/MatMul_2:product:0$gru_cell_18/strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/BiasAdd_2¢
gru_cell_18/ReadVariableOp_6ReadVariableOp%gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02
gru_cell_18/ReadVariableOp_6
!gru_cell_18/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gru_cell_18/strided_slice_6/stack
#gru_cell_18/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2%
#gru_cell_18/strided_slice_6/stack_1
#gru_cell_18/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_6/stack_2Ð
gru_cell_18/strided_slice_6StridedSlice$gru_cell_18/ReadVariableOp_6:value:0*gru_cell_18/strided_slice_6/stack:output:0,gru_cell_18/strided_slice_6/stack_1:output:0,gru_cell_18/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
gru_cell_18/strided_slice_6
gru_cell_18/MatMul_3MatMulzeros:output:0$gru_cell_18/strided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_3¢
gru_cell_18/ReadVariableOp_7ReadVariableOp%gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02
gru_cell_18/ReadVariableOp_7
!gru_cell_18/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2#
!gru_cell_18/strided_slice_7/stack
#gru_cell_18/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gru_cell_18/strided_slice_7/stack_1
#gru_cell_18/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_7/stack_2Ð
gru_cell_18/strided_slice_7StridedSlice$gru_cell_18/ReadVariableOp_7:value:0*gru_cell_18/strided_slice_7/stack:output:0,gru_cell_18/strided_slice_7/stack_1:output:0,gru_cell_18/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
gru_cell_18/strided_slice_7
gru_cell_18/MatMul_4MatMulzeros:output:0$gru_cell_18/strided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_4
gru_cell_18/addAddV2gru_cell_18/BiasAdd:output:0gru_cell_18/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/addk
gru_cell_18/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
gru_cell_18/Consto
gru_cell_18/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
gru_cell_18/Const_1
gru_cell_18/MulMulgru_cell_18/add:z:0gru_cell_18/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Mul
gru_cell_18/Add_1AddV2gru_cell_18/Mul:z:0gru_cell_18/Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Add_1
#gru_cell_18/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#gru_cell_18/clip_by_value/Minimum/yÈ
!gru_cell_18/clip_by_value/MinimumMinimumgru_cell_18/Add_1:z:0,gru_cell_18/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!gru_cell_18/clip_by_value/Minimum
gru_cell_18/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_cell_18/clip_by_value/yÀ
gru_cell_18/clip_by_valueMaximum%gru_cell_18/clip_by_value/Minimum:z:0$gru_cell_18/clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/clip_by_value¡
gru_cell_18/add_2AddV2gru_cell_18/BiasAdd_1:output:0gru_cell_18/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/add_2o
gru_cell_18/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
gru_cell_18/Const_2o
gru_cell_18/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
gru_cell_18/Const_3
gru_cell_18/Mul_1Mulgru_cell_18/add_2:z:0gru_cell_18/Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Mul_1
gru_cell_18/Add_3AddV2gru_cell_18/Mul_1:z:0gru_cell_18/Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Add_3
%gru_cell_18/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%gru_cell_18/clip_by_value_1/Minimum/yÎ
#gru_cell_18/clip_by_value_1/MinimumMinimumgru_cell_18/Add_3:z:0.gru_cell_18/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2%
#gru_cell_18/clip_by_value_1/Minimum
gru_cell_18/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_cell_18/clip_by_value_1/yÈ
gru_cell_18/clip_by_value_1Maximum'gru_cell_18/clip_by_value_1/Minimum:z:0&gru_cell_18/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/clip_by_value_1
gru_cell_18/mul_2Mulgru_cell_18/clip_by_value_1:z:0zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/mul_2¢
gru_cell_18/ReadVariableOp_8ReadVariableOp%gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02
gru_cell_18/ReadVariableOp_8
!gru_cell_18/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!gru_cell_18/strided_slice_8/stack
#gru_cell_18/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_18/strided_slice_8/stack_1
#gru_cell_18/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_8/stack_2Ð
gru_cell_18/strided_slice_8StridedSlice$gru_cell_18/ReadVariableOp_8:value:0*gru_cell_18/strided_slice_8/stack:output:0,gru_cell_18/strided_slice_8/stack_1:output:0,gru_cell_18/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
gru_cell_18/strided_slice_8¥
gru_cell_18/MatMul_5MatMulgru_cell_18/mul_2:z:0$gru_cell_18/strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_5¡
gru_cell_18/add_4AddV2gru_cell_18/BiasAdd_2:output:0gru_cell_18/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/add_4u
gru_cell_18/TanhTanhgru_cell_18/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Tanh
gru_cell_18/mul_3Mulgru_cell_18/clip_by_value:z:0zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/mul_3k
gru_cell_18/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_18/sub/x
gru_cell_18/subSubgru_cell_18/sub/x:output:0gru_cell_18/clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/sub
gru_cell_18/mul_4Mulgru_cell_18/sub:z:0gru_cell_18/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/mul_4
gru_cell_18/add_5AddV2gru_cell_18/mul_3:z:0gru_cell_18/mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/add_5
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¹
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0#gru_cell_18_readvariableop_resource%gru_cell_18_readvariableop_3_resource%gru_cell_18_readvariableop_6_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_74055*
condR
while_cond_74054*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
transpose_1s
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityë
NoOpNoOp^gru_cell_18/ReadVariableOp^gru_cell_18/ReadVariableOp_1^gru_cell_18/ReadVariableOp_2^gru_cell_18/ReadVariableOp_3^gru_cell_18/ReadVariableOp_4^gru_cell_18/ReadVariableOp_5^gru_cell_18/ReadVariableOp_6^gru_cell_18/ReadVariableOp_7^gru_cell_18/ReadVariableOp_8^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 28
gru_cell_18/ReadVariableOpgru_cell_18/ReadVariableOp2<
gru_cell_18/ReadVariableOp_1gru_cell_18/ReadVariableOp_12<
gru_cell_18/ReadVariableOp_2gru_cell_18/ReadVariableOp_22<
gru_cell_18/ReadVariableOp_3gru_cell_18/ReadVariableOp_32<
gru_cell_18/ReadVariableOp_4gru_cell_18/ReadVariableOp_42<
gru_cell_18/ReadVariableOp_5gru_cell_18/ReadVariableOp_52<
gru_cell_18/ReadVariableOp_6gru_cell_18/ReadVariableOp_62<
gru_cell_18/ReadVariableOp_7gru_cell_18/ReadVariableOp_72<
gru_cell_18/ReadVariableOp_8gru_cell_18/ReadVariableOp_82
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Á	
ª
gru_18_while_cond_74769*
&gru_18_while_gru_18_while_loop_counter0
,gru_18_while_gru_18_while_maximum_iterations
gru_18_while_placeholder
gru_18_while_placeholder_1
gru_18_while_placeholder_2,
(gru_18_while_less_gru_18_strided_slice_1A
=gru_18_while_gru_18_while_cond_74769___redundant_placeholder0A
=gru_18_while_gru_18_while_cond_74769___redundant_placeholder1A
=gru_18_while_gru_18_while_cond_74769___redundant_placeholder2A
=gru_18_while_gru_18_while_cond_74769___redundant_placeholder3
gru_18_while_identity

gru_18/while/LessLessgru_18_while_placeholder(gru_18_while_less_gru_18_strided_slice_1*
T0*
_output_shapes
: 2
gru_18/while/Lessr
gru_18/while/IdentityIdentitygru_18/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_18/while/Identity"7
gru_18_while_identitygru_18/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
¸"
 
while_body_73302
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_gru_cell_18_73324_0:2'
while_gru_cell_18_73326_0:+
while_gru_cell_18_73328_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_gru_cell_18_73324:2%
while_gru_cell_18_73326:)
while_gru_cell_18_73328:
¢)while/gru_cell_18/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem­
)while/gru_cell_18/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_18_73324_0while_gru_cell_18_73326_0while_gru_cell_18_73328_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_gru_cell_18_layer_call_and_return_conditional_losses_732352+
)while/gru_cell_18/StatefulPartitionedCallö
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/gru_cell_18/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3£
while/Identity_4Identity2while/gru_cell_18/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/Identity_4

while/NoOpNoOp*^while/gru_cell_18/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"4
while_gru_cell_18_73324while_gru_cell_18_73324_0"4
while_gru_cell_18_73326while_gru_cell_18_73326_0"4
while_gru_cell_18_73328while_gru_cell_18_73328_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : 2V
)while/gru_cell_18/StatefulPartitionedCall)while/gru_cell_18/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
õ
¥
while_cond_73055
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_73055___redundant_placeholder03
/while_while_cond_73055___redundant_placeholder13
/while_while_cond_73055___redundant_placeholder23
/while_while_cond_73055___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
¢
³	
while_body_75350
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
+while_gru_cell_18_readvariableop_resource_0:2;
-while_gru_cell_18_readvariableop_3_resource_0:?
-while_gru_cell_18_readvariableop_6_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
)while_gru_cell_18_readvariableop_resource:29
+while_gru_cell_18_readvariableop_3_resource:=
+while_gru_cell_18_readvariableop_6_resource:
¢ while/gru_cell_18/ReadVariableOp¢"while/gru_cell_18/ReadVariableOp_1¢"while/gru_cell_18/ReadVariableOp_2¢"while/gru_cell_18/ReadVariableOp_3¢"while/gru_cell_18/ReadVariableOp_4¢"while/gru_cell_18/ReadVariableOp_5¢"while/gru_cell_18/ReadVariableOp_6¢"while/gru_cell_18/ReadVariableOp_7¢"while/gru_cell_18/ReadVariableOp_8Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem°
 while/gru_cell_18/ReadVariableOpReadVariableOp+while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02"
 while/gru_cell_18/ReadVariableOp
%while/gru_cell_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_18/strided_slice/stack£
'while/gru_cell_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2)
'while/gru_cell_18/strided_slice/stack_1£
'while/gru_cell_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_18/strided_slice/stack_2è
while/gru_cell_18/strided_sliceStridedSlice(while/gru_cell_18/ReadVariableOp:value:0.while/gru_cell_18/strided_slice/stack:output:00while/gru_cell_18/strided_slice/stack_1:output:00while/gru_cell_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2!
while/gru_cell_18/strided_sliceÌ
while/gru_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0(while/gru_cell_18/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul´
"while/gru_cell_18/ReadVariableOp_1ReadVariableOp+while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02$
"while/gru_cell_18/ReadVariableOp_1£
'while/gru_cell_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2)
'while/gru_cell_18/strided_slice_1/stack§
)while/gru_cell_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/gru_cell_18/strided_slice_1/stack_1§
)while/gru_cell_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_1/stack_2ô
!while/gru_cell_18/strided_slice_1StridedSlice*while/gru_cell_18/ReadVariableOp_1:value:00while/gru_cell_18/strided_slice_1/stack:output:02while/gru_cell_18/strided_slice_1/stack_1:output:02while/gru_cell_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_1Ò
while/gru_cell_18/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0*while/gru_cell_18/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_1´
"while/gru_cell_18/ReadVariableOp_2ReadVariableOp+while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02$
"while/gru_cell_18/ReadVariableOp_2£
'while/gru_cell_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/gru_cell_18/strided_slice_2/stack§
)while/gru_cell_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_18/strided_slice_2/stack_1§
)while/gru_cell_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_2/stack_2ô
!while/gru_cell_18/strided_slice_2StridedSlice*while/gru_cell_18/ReadVariableOp_2:value:00while/gru_cell_18/strided_slice_2/stack:output:02while/gru_cell_18/strided_slice_2/stack_1:output:02while/gru_cell_18/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_2Ò
while/gru_cell_18/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0*while/gru_cell_18/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_2²
"while/gru_cell_18/ReadVariableOp_3ReadVariableOp-while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02$
"while/gru_cell_18/ReadVariableOp_3
'while/gru_cell_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'while/gru_cell_18/strided_slice_3/stack 
)while/gru_cell_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
2+
)while/gru_cell_18/strided_slice_3/stack_1 
)while/gru_cell_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_3/stack_2à
!while/gru_cell_18/strided_slice_3StridedSlice*while/gru_cell_18/ReadVariableOp_3:value:00while/gru_cell_18/strided_slice_3/stack:output:02while/gru_cell_18/strided_slice_3/stack_1:output:02while/gru_cell_18/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask2#
!while/gru_cell_18/strided_slice_3Ã
while/gru_cell_18/BiasAddBiasAdd"while/gru_cell_18/MatMul:product:0*while/gru_cell_18/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/BiasAdd²
"while/gru_cell_18/ReadVariableOp_4ReadVariableOp-while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02$
"while/gru_cell_18/ReadVariableOp_4
'while/gru_cell_18/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
2)
'while/gru_cell_18/strided_slice_4/stack 
)while/gru_cell_18/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_4/stack_1 
)while/gru_cell_18/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_4/stack_2Î
!while/gru_cell_18/strided_slice_4StridedSlice*while/gru_cell_18/ReadVariableOp_4:value:00while/gru_cell_18/strided_slice_4/stack:output:02while/gru_cell_18/strided_slice_4/stack_1:output:02while/gru_cell_18/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
2#
!while/gru_cell_18/strided_slice_4É
while/gru_cell_18/BiasAdd_1BiasAdd$while/gru_cell_18/MatMul_1:product:0*while/gru_cell_18/strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/BiasAdd_1²
"while/gru_cell_18/ReadVariableOp_5ReadVariableOp-while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02$
"while/gru_cell_18/ReadVariableOp_5
'while/gru_cell_18/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'while/gru_cell_18/strided_slice_5/stack 
)while/gru_cell_18/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)while/gru_cell_18/strided_slice_5/stack_1 
)while/gru_cell_18/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_18/strided_slice_5/stack_2Þ
!while/gru_cell_18/strided_slice_5StridedSlice*while/gru_cell_18/ReadVariableOp_5:value:00while/gru_cell_18/strided_slice_5/stack:output:02while/gru_cell_18/strided_slice_5/stack_1:output:02while/gru_cell_18/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask2#
!while/gru_cell_18/strided_slice_5É
while/gru_cell_18/BiasAdd_2BiasAdd$while/gru_cell_18/MatMul_2:product:0*while/gru_cell_18/strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/BiasAdd_2¶
"while/gru_cell_18/ReadVariableOp_6ReadVariableOp-while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02$
"while/gru_cell_18/ReadVariableOp_6£
'while/gru_cell_18/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/gru_cell_18/strided_slice_6/stack§
)while/gru_cell_18/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2+
)while/gru_cell_18/strided_slice_6/stack_1§
)while/gru_cell_18/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_6/stack_2ô
!while/gru_cell_18/strided_slice_6StridedSlice*while/gru_cell_18/ReadVariableOp_6:value:00while/gru_cell_18/strided_slice_6/stack:output:02while/gru_cell_18/strided_slice_6/stack_1:output:02while/gru_cell_18/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_6µ
while/gru_cell_18/MatMul_3MatMulwhile_placeholder_2*while/gru_cell_18/strided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_3¶
"while/gru_cell_18/ReadVariableOp_7ReadVariableOp-while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02$
"while/gru_cell_18/ReadVariableOp_7£
'while/gru_cell_18/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2)
'while/gru_cell_18/strided_slice_7/stack§
)while/gru_cell_18/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/gru_cell_18/strided_slice_7/stack_1§
)while/gru_cell_18/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_7/stack_2ô
!while/gru_cell_18/strided_slice_7StridedSlice*while/gru_cell_18/ReadVariableOp_7:value:00while/gru_cell_18/strided_slice_7/stack:output:02while/gru_cell_18/strided_slice_7/stack_1:output:02while/gru_cell_18/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_7µ
while/gru_cell_18/MatMul_4MatMulwhile_placeholder_2*while/gru_cell_18/strided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_4³
while/gru_cell_18/addAddV2"while/gru_cell_18/BiasAdd:output:0$while/gru_cell_18/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/addw
while/gru_cell_18/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/gru_cell_18/Const{
while/gru_cell_18/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/gru_cell_18/Const_1¤
while/gru_cell_18/MulMulwhile/gru_cell_18/add:z:0 while/gru_cell_18/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Mul¬
while/gru_cell_18/Add_1AddV2while/gru_cell_18/Mul:z:0"while/gru_cell_18/Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Add_1
)while/gru_cell_18/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)while/gru_cell_18/clip_by_value/Minimum/yà
'while/gru_cell_18/clip_by_value/MinimumMinimumwhile/gru_cell_18/Add_1:z:02while/gru_cell_18/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2)
'while/gru_cell_18/clip_by_value/Minimum
!while/gru_cell_18/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/gru_cell_18/clip_by_value/yØ
while/gru_cell_18/clip_by_valueMaximum+while/gru_cell_18/clip_by_value/Minimum:z:0*while/gru_cell_18/clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2!
while/gru_cell_18/clip_by_value¹
while/gru_cell_18/add_2AddV2$while/gru_cell_18/BiasAdd_1:output:0$while/gru_cell_18/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/add_2{
while/gru_cell_18/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/gru_cell_18/Const_2{
while/gru_cell_18/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/gru_cell_18/Const_3¬
while/gru_cell_18/Mul_1Mulwhile/gru_cell_18/add_2:z:0"while/gru_cell_18/Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Mul_1®
while/gru_cell_18/Add_3AddV2while/gru_cell_18/Mul_1:z:0"while/gru_cell_18/Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Add_3
+while/gru_cell_18/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/gru_cell_18/clip_by_value_1/Minimum/yæ
)while/gru_cell_18/clip_by_value_1/MinimumMinimumwhile/gru_cell_18/Add_3:z:04while/gru_cell_18/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2+
)while/gru_cell_18/clip_by_value_1/Minimum
#while/gru_cell_18/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/gru_cell_18/clip_by_value_1/yà
!while/gru_cell_18/clip_by_value_1Maximum-while/gru_cell_18/clip_by_value_1/Minimum:z:0,while/gru_cell_18/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!while/gru_cell_18/clip_by_value_1§
while/gru_cell_18/mul_2Mul%while/gru_cell_18/clip_by_value_1:z:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/mul_2¶
"while/gru_cell_18/ReadVariableOp_8ReadVariableOp-while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02$
"while/gru_cell_18/ReadVariableOp_8£
'while/gru_cell_18/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/gru_cell_18/strided_slice_8/stack§
)while/gru_cell_18/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_18/strided_slice_8/stack_1§
)while/gru_cell_18/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_18/strided_slice_8/stack_2ô
!while/gru_cell_18/strided_slice_8StridedSlice*while/gru_cell_18/ReadVariableOp_8:value:00while/gru_cell_18/strided_slice_8/stack:output:02while/gru_cell_18/strided_slice_8/stack_1:output:02while/gru_cell_18/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2#
!while/gru_cell_18/strided_slice_8½
while/gru_cell_18/MatMul_5MatMulwhile/gru_cell_18/mul_2:z:0*while/gru_cell_18/strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/MatMul_5¹
while/gru_cell_18/add_4AddV2$while/gru_cell_18/BiasAdd_2:output:0$while/gru_cell_18/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/add_4
while/gru_cell_18/TanhTanhwhile/gru_cell_18/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/Tanh¥
while/gru_cell_18/mul_3Mul#while/gru_cell_18/clip_by_value:z:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/mul_3w
while/gru_cell_18/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_18/sub/x®
while/gru_cell_18/subSub while/gru_cell_18/sub/x:output:0#while/gru_cell_18/clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/sub¢
while/gru_cell_18/mul_4Mulwhile/gru_cell_18/sub:z:0while/gru_cell_18/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/mul_4§
while/gru_cell_18/add_5AddV2while/gru_cell_18/mul_3:z:0while/gru_cell_18/mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/gru_cell_18/add_5ß
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_18/add_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_18/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
while/Identity_4¥

while/NoOpNoOp!^while/gru_cell_18/ReadVariableOp#^while/gru_cell_18/ReadVariableOp_1#^while/gru_cell_18/ReadVariableOp_2#^while/gru_cell_18/ReadVariableOp_3#^while/gru_cell_18/ReadVariableOp_4#^while/gru_cell_18/ReadVariableOp_5#^while/gru_cell_18/ReadVariableOp_6#^while/gru_cell_18/ReadVariableOp_7#^while/gru_cell_18/ReadVariableOp_8*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"\
+while_gru_cell_18_readvariableop_3_resource-while_gru_cell_18_readvariableop_3_resource_0"\
+while_gru_cell_18_readvariableop_6_resource-while_gru_cell_18_readvariableop_6_resource_0"X
)while_gru_cell_18_readvariableop_resource+while_gru_cell_18_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : 2D
 while/gru_cell_18/ReadVariableOp while/gru_cell_18/ReadVariableOp2H
"while/gru_cell_18/ReadVariableOp_1"while/gru_cell_18/ReadVariableOp_12H
"while/gru_cell_18/ReadVariableOp_2"while/gru_cell_18/ReadVariableOp_22H
"while/gru_cell_18/ReadVariableOp_3"while/gru_cell_18/ReadVariableOp_32H
"while/gru_cell_18/ReadVariableOp_4"while/gru_cell_18/ReadVariableOp_42H
"while/gru_cell_18/ReadVariableOp_5"while/gru_cell_18/ReadVariableOp_52H
"while/gru_cell_18/ReadVariableOp_6"while/gru_cell_18/ReadVariableOp_62H
"while/gru_cell_18/ReadVariableOp_7"while/gru_cell_18/ReadVariableOp_72H
"while/gru_cell_18/ReadVariableOp_8"while/gru_cell_18/ReadVariableOp_8: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
a
­
F__inference_gru_cell_18_layer_call_and_return_conditional_losses_76226

inputs
states_0)
readvariableop_resource:2'
readvariableop_3_resource:+
readvariableop_6_resource:

identity

identity_1¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢ReadVariableOp_4¢ReadVariableOp_5¢ReadVariableOp_6¢ReadVariableOp_7¢ReadVariableOp_8x
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:2*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ü
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
strided_slicel
MatMulMatMulinputsstrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
MatMul|
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:2*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
strided_slice_1r
MatMul_1MatMulinputsstrided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

MatMul_1|
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:2*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
strided_slice_2r
MatMul_2MatMulinputsstrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

MatMul_2z
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype02
ReadVariableOp_3x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ô
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask2
strided_slice_3{
BiasAddBiasAddMatMul:product:0strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAddz
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype02
ReadVariableOp_4x
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
2
strided_slice_4/stack|
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_1|
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_2â
strided_slice_4StridedSliceReadVariableOp_4:value:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
2
strided_slice_4
	BiasAdd_1BiasAddMatMul_1:product:0strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
	BiasAdd_1z
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype02
ReadVariableOp_5x
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2ò
strided_slice_5StridedSliceReadVariableOp_5:value:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask2
strided_slice_5
	BiasAdd_2BiasAddMatMul_2:product:0strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
	BiasAdd_2~
ReadVariableOp_6ReadVariableOpreadvariableop_6_resource*
_output_shapes

:
*
dtype02
ReadVariableOp_6
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2
strided_slice_6/stack_1
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2
strided_slice_6StridedSliceReadVariableOp_6:value:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
strided_slice_6t
MatMul_3MatMulstates_0strided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

MatMul_3~
ReadVariableOp_7ReadVariableOpreadvariableop_6_resource*
_output_shapes

:
*
dtype02
ReadVariableOp_7
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2
strided_slice_7/stack
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_7/stack_1
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2
strided_slice_7StridedSliceReadVariableOp_7:value:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
strided_slice_7t
MatMul_4MatMulstates_0strided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1\
MulMuladd:z:0Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Muld
Add_1AddV2Mul:z:0Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value/Minimum/y
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
clip_by_valueq
add_2AddV2BiasAdd_1:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3d
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Mul_1f
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value_1/Minimum/y
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
clip_by_value_1f
mul_2Mulclip_by_value_1:z:0states_0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
mul_2~
ReadVariableOp_8ReadVariableOpreadvariableop_6_resource*
_output_shapes

:
*
dtype02
ReadVariableOp_8
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_8/stack
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_8/stack_1
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_8/stack_2
strided_slice_8StridedSliceReadVariableOp_8:value:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
strided_slice_8u
MatMul_5MatMul	mul_2:z:0strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

MatMul_5q
add_4AddV2BiasAdd_2:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
add_4Q
TanhTanh	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Tanhd
mul_3Mulclip_by_value:z:0states_0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
mul_3S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xf
subSubsub/x:output:0clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
subZ
mul_4Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
mul_4_
add_5AddV2	mul_3:z:0	mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
add_5d
IdentityIdentity	add_5:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityh

Identity_1Identity	add_5:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity_1÷
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6^ReadVariableOp_7^ReadVariableOp_8*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_62$
ReadVariableOp_7ReadVariableOp_72$
ReadVariableOp_8ReadVariableOp_8:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/0
õ
¥
while_cond_75861
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_75861___redundant_placeholder03
/while_while_cond_75861___redundant_placeholder13
/while_while_cond_75861___redundant_placeholder23
/while_while_cond_75861___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
õ
¥
while_cond_75093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_75093___redundant_placeholder03
/while_while_cond_75093___redundant_placeholder13
/while_while_cond_75093___redundant_placeholder23
/while_while_cond_75093___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
õ
¥
while_cond_73301
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_73301___redundant_placeholder03
/while_while_cond_73301___redundant_placeholder13
/while_while_cond_73301___redundant_placeholder23
/while_while_cond_73301___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
é

¤
F__inference_embedding_9_layer_call_and_return_conditional_losses_73614

inputs*
embedding_lookup_73608:
Ù2
identity¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Castû
embedding_lookupResourceGatherembedding_lookup_73608Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/73608*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype02
embedding_lookupì
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/73608*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯
¤
A__inference_gru_18_layer_call_and_return_conditional_losses_75488
inputs_05
#gru_cell_18_readvariableop_resource:23
%gru_cell_18_readvariableop_3_resource:7
%gru_cell_18_readvariableop_6_resource:

identity¢gru_cell_18/ReadVariableOp¢gru_cell_18/ReadVariableOp_1¢gru_cell_18/ReadVariableOp_2¢gru_cell_18/ReadVariableOp_3¢gru_cell_18/ReadVariableOp_4¢gru_cell_18/ReadVariableOp_5¢gru_cell_18/ReadVariableOp_6¢gru_cell_18/ReadVariableOp_7¢gru_cell_18/ReadVariableOp_8¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2
gru_cell_18/ReadVariableOpReadVariableOp#gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02
gru_cell_18/ReadVariableOp
gru_cell_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_18/strided_slice/stack
!gru_cell_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2#
!gru_cell_18/strided_slice/stack_1
!gru_cell_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_18/strided_slice/stack_2Ä
gru_cell_18/strided_sliceStridedSlice"gru_cell_18/ReadVariableOp:value:0(gru_cell_18/strided_slice/stack:output:0*gru_cell_18/strided_slice/stack_1:output:0*gru_cell_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
gru_cell_18/strided_slice¢
gru_cell_18/MatMulMatMulstrided_slice_2:output:0"gru_cell_18/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul 
gru_cell_18/ReadVariableOp_1ReadVariableOp#gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02
gru_cell_18/ReadVariableOp_1
!gru_cell_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2#
!gru_cell_18/strided_slice_1/stack
#gru_cell_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gru_cell_18/strided_slice_1/stack_1
#gru_cell_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_1/stack_2Ð
gru_cell_18/strided_slice_1StridedSlice$gru_cell_18/ReadVariableOp_1:value:0*gru_cell_18/strided_slice_1/stack:output:0,gru_cell_18/strided_slice_1/stack_1:output:0,gru_cell_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
gru_cell_18/strided_slice_1¨
gru_cell_18/MatMul_1MatMulstrided_slice_2:output:0$gru_cell_18/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_1 
gru_cell_18/ReadVariableOp_2ReadVariableOp#gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02
gru_cell_18/ReadVariableOp_2
!gru_cell_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!gru_cell_18/strided_slice_2/stack
#gru_cell_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_18/strided_slice_2/stack_1
#gru_cell_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_2/stack_2Ð
gru_cell_18/strided_slice_2StridedSlice$gru_cell_18/ReadVariableOp_2:value:0*gru_cell_18/strided_slice_2/stack:output:0,gru_cell_18/strided_slice_2/stack_1:output:0,gru_cell_18/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
gru_cell_18/strided_slice_2¨
gru_cell_18/MatMul_2MatMulstrided_slice_2:output:0$gru_cell_18/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_2
gru_cell_18/ReadVariableOp_3ReadVariableOp%gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02
gru_cell_18/ReadVariableOp_3
!gru_cell_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!gru_cell_18/strided_slice_3/stack
#gru_cell_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
2%
#gru_cell_18/strided_slice_3/stack_1
#gru_cell_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_3/stack_2¼
gru_cell_18/strided_slice_3StridedSlice$gru_cell_18/ReadVariableOp_3:value:0*gru_cell_18/strided_slice_3/stack:output:0,gru_cell_18/strided_slice_3/stack_1:output:0,gru_cell_18/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask2
gru_cell_18/strided_slice_3«
gru_cell_18/BiasAddBiasAddgru_cell_18/MatMul:product:0$gru_cell_18/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/BiasAdd
gru_cell_18/ReadVariableOp_4ReadVariableOp%gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02
gru_cell_18/ReadVariableOp_4
!gru_cell_18/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
2#
!gru_cell_18/strided_slice_4/stack
#gru_cell_18/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_4/stack_1
#gru_cell_18/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_4/stack_2ª
gru_cell_18/strided_slice_4StridedSlice$gru_cell_18/ReadVariableOp_4:value:0*gru_cell_18/strided_slice_4/stack:output:0,gru_cell_18/strided_slice_4/stack_1:output:0,gru_cell_18/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
2
gru_cell_18/strided_slice_4±
gru_cell_18/BiasAdd_1BiasAddgru_cell_18/MatMul_1:product:0$gru_cell_18/strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/BiasAdd_1
gru_cell_18/ReadVariableOp_5ReadVariableOp%gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02
gru_cell_18/ReadVariableOp_5
!gru_cell_18/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!gru_cell_18/strided_slice_5/stack
#gru_cell_18/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#gru_cell_18/strided_slice_5/stack_1
#gru_cell_18/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_5/stack_2º
gru_cell_18/strided_slice_5StridedSlice$gru_cell_18/ReadVariableOp_5:value:0*gru_cell_18/strided_slice_5/stack:output:0,gru_cell_18/strided_slice_5/stack_1:output:0,gru_cell_18/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask2
gru_cell_18/strided_slice_5±
gru_cell_18/BiasAdd_2BiasAddgru_cell_18/MatMul_2:product:0$gru_cell_18/strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/BiasAdd_2¢
gru_cell_18/ReadVariableOp_6ReadVariableOp%gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02
gru_cell_18/ReadVariableOp_6
!gru_cell_18/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gru_cell_18/strided_slice_6/stack
#gru_cell_18/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2%
#gru_cell_18/strided_slice_6/stack_1
#gru_cell_18/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_6/stack_2Ð
gru_cell_18/strided_slice_6StridedSlice$gru_cell_18/ReadVariableOp_6:value:0*gru_cell_18/strided_slice_6/stack:output:0,gru_cell_18/strided_slice_6/stack_1:output:0,gru_cell_18/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
gru_cell_18/strided_slice_6
gru_cell_18/MatMul_3MatMulzeros:output:0$gru_cell_18/strided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_3¢
gru_cell_18/ReadVariableOp_7ReadVariableOp%gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02
gru_cell_18/ReadVariableOp_7
!gru_cell_18/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2#
!gru_cell_18/strided_slice_7/stack
#gru_cell_18/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gru_cell_18/strided_slice_7/stack_1
#gru_cell_18/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_7/stack_2Ð
gru_cell_18/strided_slice_7StridedSlice$gru_cell_18/ReadVariableOp_7:value:0*gru_cell_18/strided_slice_7/stack:output:0,gru_cell_18/strided_slice_7/stack_1:output:0,gru_cell_18/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
gru_cell_18/strided_slice_7
gru_cell_18/MatMul_4MatMulzeros:output:0$gru_cell_18/strided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_4
gru_cell_18/addAddV2gru_cell_18/BiasAdd:output:0gru_cell_18/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/addk
gru_cell_18/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
gru_cell_18/Consto
gru_cell_18/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
gru_cell_18/Const_1
gru_cell_18/MulMulgru_cell_18/add:z:0gru_cell_18/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Mul
gru_cell_18/Add_1AddV2gru_cell_18/Mul:z:0gru_cell_18/Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Add_1
#gru_cell_18/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#gru_cell_18/clip_by_value/Minimum/yÈ
!gru_cell_18/clip_by_value/MinimumMinimumgru_cell_18/Add_1:z:0,gru_cell_18/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!gru_cell_18/clip_by_value/Minimum
gru_cell_18/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_cell_18/clip_by_value/yÀ
gru_cell_18/clip_by_valueMaximum%gru_cell_18/clip_by_value/Minimum:z:0$gru_cell_18/clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/clip_by_value¡
gru_cell_18/add_2AddV2gru_cell_18/BiasAdd_1:output:0gru_cell_18/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/add_2o
gru_cell_18/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
gru_cell_18/Const_2o
gru_cell_18/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
gru_cell_18/Const_3
gru_cell_18/Mul_1Mulgru_cell_18/add_2:z:0gru_cell_18/Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Mul_1
gru_cell_18/Add_3AddV2gru_cell_18/Mul_1:z:0gru_cell_18/Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Add_3
%gru_cell_18/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%gru_cell_18/clip_by_value_1/Minimum/yÎ
#gru_cell_18/clip_by_value_1/MinimumMinimumgru_cell_18/Add_3:z:0.gru_cell_18/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2%
#gru_cell_18/clip_by_value_1/Minimum
gru_cell_18/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_cell_18/clip_by_value_1/yÈ
gru_cell_18/clip_by_value_1Maximum'gru_cell_18/clip_by_value_1/Minimum:z:0&gru_cell_18/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/clip_by_value_1
gru_cell_18/mul_2Mulgru_cell_18/clip_by_value_1:z:0zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/mul_2¢
gru_cell_18/ReadVariableOp_8ReadVariableOp%gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02
gru_cell_18/ReadVariableOp_8
!gru_cell_18/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!gru_cell_18/strided_slice_8/stack
#gru_cell_18/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_18/strided_slice_8/stack_1
#gru_cell_18/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_8/stack_2Ð
gru_cell_18/strided_slice_8StridedSlice$gru_cell_18/ReadVariableOp_8:value:0*gru_cell_18/strided_slice_8/stack:output:0,gru_cell_18/strided_slice_8/stack_1:output:0,gru_cell_18/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
gru_cell_18/strided_slice_8¥
gru_cell_18/MatMul_5MatMulgru_cell_18/mul_2:z:0$gru_cell_18/strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_5¡
gru_cell_18/add_4AddV2gru_cell_18/BiasAdd_2:output:0gru_cell_18/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/add_4u
gru_cell_18/TanhTanhgru_cell_18/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Tanh
gru_cell_18/mul_3Mulgru_cell_18/clip_by_value:z:0zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/mul_3k
gru_cell_18/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_18/sub/x
gru_cell_18/subSubgru_cell_18/sub/x:output:0gru_cell_18/clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/sub
gru_cell_18/mul_4Mulgru_cell_18/sub:z:0gru_cell_18/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/mul_4
gru_cell_18/add_5AddV2gru_cell_18/mul_3:z:0gru_cell_18/mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/add_5
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¹
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0#gru_cell_18_readvariableop_resource%gru_cell_18_readvariableop_3_resource%gru_cell_18_readvariableop_6_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_75350*
condR
while_cond_75349*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
transpose_1s
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityë
NoOpNoOp^gru_cell_18/ReadVariableOp^gru_cell_18/ReadVariableOp_1^gru_cell_18/ReadVariableOp_2^gru_cell_18/ReadVariableOp_3^gru_cell_18/ReadVariableOp_4^gru_cell_18/ReadVariableOp_5^gru_cell_18/ReadVariableOp_6^gru_cell_18/ReadVariableOp_7^gru_cell_18/ReadVariableOp_8^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 28
gru_cell_18/ReadVariableOpgru_cell_18/ReadVariableOp2<
gru_cell_18/ReadVariableOp_1gru_cell_18/ReadVariableOp_12<
gru_cell_18/ReadVariableOp_2gru_cell_18/ReadVariableOp_22<
gru_cell_18/ReadVariableOp_3gru_cell_18/ReadVariableOp_32<
gru_cell_18/ReadVariableOp_4gru_cell_18/ReadVariableOp_42<
gru_cell_18/ReadVariableOp_5gru_cell_18/ReadVariableOp_52<
gru_cell_18/ReadVariableOp_6gru_cell_18/ReadVariableOp_62<
gru_cell_18/ReadVariableOp_7gru_cell_18/ReadVariableOp_72<
gru_cell_18/ReadVariableOp_8gru_cell_18/ReadVariableOp_82
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
õ
¥
while_cond_73734
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_73734___redundant_placeholder03
/while_while_cond_73734___redundant_placeholder13
/while_while_cond_73734___redundant_placeholder23
/while_while_cond_73734___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
¯
¤
A__inference_gru_18_layer_call_and_return_conditional_losses_75232
inputs_05
#gru_cell_18_readvariableop_resource:23
%gru_cell_18_readvariableop_3_resource:7
%gru_cell_18_readvariableop_6_resource:

identity¢gru_cell_18/ReadVariableOp¢gru_cell_18/ReadVariableOp_1¢gru_cell_18/ReadVariableOp_2¢gru_cell_18/ReadVariableOp_3¢gru_cell_18/ReadVariableOp_4¢gru_cell_18/ReadVariableOp_5¢gru_cell_18/ReadVariableOp_6¢gru_cell_18/ReadVariableOp_7¢gru_cell_18/ReadVariableOp_8¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2
gru_cell_18/ReadVariableOpReadVariableOp#gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02
gru_cell_18/ReadVariableOp
gru_cell_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_18/strided_slice/stack
!gru_cell_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2#
!gru_cell_18/strided_slice/stack_1
!gru_cell_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_18/strided_slice/stack_2Ä
gru_cell_18/strided_sliceStridedSlice"gru_cell_18/ReadVariableOp:value:0(gru_cell_18/strided_slice/stack:output:0*gru_cell_18/strided_slice/stack_1:output:0*gru_cell_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
gru_cell_18/strided_slice¢
gru_cell_18/MatMulMatMulstrided_slice_2:output:0"gru_cell_18/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul 
gru_cell_18/ReadVariableOp_1ReadVariableOp#gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02
gru_cell_18/ReadVariableOp_1
!gru_cell_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2#
!gru_cell_18/strided_slice_1/stack
#gru_cell_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gru_cell_18/strided_slice_1/stack_1
#gru_cell_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_1/stack_2Ð
gru_cell_18/strided_slice_1StridedSlice$gru_cell_18/ReadVariableOp_1:value:0*gru_cell_18/strided_slice_1/stack:output:0,gru_cell_18/strided_slice_1/stack_1:output:0,gru_cell_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
gru_cell_18/strided_slice_1¨
gru_cell_18/MatMul_1MatMulstrided_slice_2:output:0$gru_cell_18/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_1 
gru_cell_18/ReadVariableOp_2ReadVariableOp#gru_cell_18_readvariableop_resource*
_output_shapes

:2*
dtype02
gru_cell_18/ReadVariableOp_2
!gru_cell_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!gru_cell_18/strided_slice_2/stack
#gru_cell_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_18/strided_slice_2/stack_1
#gru_cell_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_2/stack_2Ð
gru_cell_18/strided_slice_2StridedSlice$gru_cell_18/ReadVariableOp_2:value:0*gru_cell_18/strided_slice_2/stack:output:0,gru_cell_18/strided_slice_2/stack_1:output:0,gru_cell_18/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2
gru_cell_18/strided_slice_2¨
gru_cell_18/MatMul_2MatMulstrided_slice_2:output:0$gru_cell_18/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_2
gru_cell_18/ReadVariableOp_3ReadVariableOp%gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02
gru_cell_18/ReadVariableOp_3
!gru_cell_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!gru_cell_18/strided_slice_3/stack
#gru_cell_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
2%
#gru_cell_18/strided_slice_3/stack_1
#gru_cell_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_3/stack_2¼
gru_cell_18/strided_slice_3StridedSlice$gru_cell_18/ReadVariableOp_3:value:0*gru_cell_18/strided_slice_3/stack:output:0,gru_cell_18/strided_slice_3/stack_1:output:0,gru_cell_18/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask2
gru_cell_18/strided_slice_3«
gru_cell_18/BiasAddBiasAddgru_cell_18/MatMul:product:0$gru_cell_18/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/BiasAdd
gru_cell_18/ReadVariableOp_4ReadVariableOp%gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02
gru_cell_18/ReadVariableOp_4
!gru_cell_18/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
2#
!gru_cell_18/strided_slice_4/stack
#gru_cell_18/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_4/stack_1
#gru_cell_18/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_4/stack_2ª
gru_cell_18/strided_slice_4StridedSlice$gru_cell_18/ReadVariableOp_4:value:0*gru_cell_18/strided_slice_4/stack:output:0,gru_cell_18/strided_slice_4/stack_1:output:0,gru_cell_18/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
2
gru_cell_18/strided_slice_4±
gru_cell_18/BiasAdd_1BiasAddgru_cell_18/MatMul_1:product:0$gru_cell_18/strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/BiasAdd_1
gru_cell_18/ReadVariableOp_5ReadVariableOp%gru_cell_18_readvariableop_3_resource*
_output_shapes
:*
dtype02
gru_cell_18/ReadVariableOp_5
!gru_cell_18/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!gru_cell_18/strided_slice_5/stack
#gru_cell_18/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#gru_cell_18/strided_slice_5/stack_1
#gru_cell_18/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_18/strided_slice_5/stack_2º
gru_cell_18/strided_slice_5StridedSlice$gru_cell_18/ReadVariableOp_5:value:0*gru_cell_18/strided_slice_5/stack:output:0,gru_cell_18/strided_slice_5/stack_1:output:0,gru_cell_18/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask2
gru_cell_18/strided_slice_5±
gru_cell_18/BiasAdd_2BiasAddgru_cell_18/MatMul_2:product:0$gru_cell_18/strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/BiasAdd_2¢
gru_cell_18/ReadVariableOp_6ReadVariableOp%gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02
gru_cell_18/ReadVariableOp_6
!gru_cell_18/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gru_cell_18/strided_slice_6/stack
#gru_cell_18/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2%
#gru_cell_18/strided_slice_6/stack_1
#gru_cell_18/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_6/stack_2Ð
gru_cell_18/strided_slice_6StridedSlice$gru_cell_18/ReadVariableOp_6:value:0*gru_cell_18/strided_slice_6/stack:output:0,gru_cell_18/strided_slice_6/stack_1:output:0,gru_cell_18/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
gru_cell_18/strided_slice_6
gru_cell_18/MatMul_3MatMulzeros:output:0$gru_cell_18/strided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_3¢
gru_cell_18/ReadVariableOp_7ReadVariableOp%gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02
gru_cell_18/ReadVariableOp_7
!gru_cell_18/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2#
!gru_cell_18/strided_slice_7/stack
#gru_cell_18/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gru_cell_18/strided_slice_7/stack_1
#gru_cell_18/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_7/stack_2Ð
gru_cell_18/strided_slice_7StridedSlice$gru_cell_18/ReadVariableOp_7:value:0*gru_cell_18/strided_slice_7/stack:output:0,gru_cell_18/strided_slice_7/stack_1:output:0,gru_cell_18/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
gru_cell_18/strided_slice_7
gru_cell_18/MatMul_4MatMulzeros:output:0$gru_cell_18/strided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_4
gru_cell_18/addAddV2gru_cell_18/BiasAdd:output:0gru_cell_18/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/addk
gru_cell_18/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
gru_cell_18/Consto
gru_cell_18/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
gru_cell_18/Const_1
gru_cell_18/MulMulgru_cell_18/add:z:0gru_cell_18/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Mul
gru_cell_18/Add_1AddV2gru_cell_18/Mul:z:0gru_cell_18/Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Add_1
#gru_cell_18/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#gru_cell_18/clip_by_value/Minimum/yÈ
!gru_cell_18/clip_by_value/MinimumMinimumgru_cell_18/Add_1:z:0,gru_cell_18/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!gru_cell_18/clip_by_value/Minimum
gru_cell_18/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_cell_18/clip_by_value/yÀ
gru_cell_18/clip_by_valueMaximum%gru_cell_18/clip_by_value/Minimum:z:0$gru_cell_18/clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/clip_by_value¡
gru_cell_18/add_2AddV2gru_cell_18/BiasAdd_1:output:0gru_cell_18/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/add_2o
gru_cell_18/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
gru_cell_18/Const_2o
gru_cell_18/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
gru_cell_18/Const_3
gru_cell_18/Mul_1Mulgru_cell_18/add_2:z:0gru_cell_18/Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Mul_1
gru_cell_18/Add_3AddV2gru_cell_18/Mul_1:z:0gru_cell_18/Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Add_3
%gru_cell_18/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%gru_cell_18/clip_by_value_1/Minimum/yÎ
#gru_cell_18/clip_by_value_1/MinimumMinimumgru_cell_18/Add_3:z:0.gru_cell_18/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2%
#gru_cell_18/clip_by_value_1/Minimum
gru_cell_18/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_cell_18/clip_by_value_1/yÈ
gru_cell_18/clip_by_value_1Maximum'gru_cell_18/clip_by_value_1/Minimum:z:0&gru_cell_18/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/clip_by_value_1
gru_cell_18/mul_2Mulgru_cell_18/clip_by_value_1:z:0zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/mul_2¢
gru_cell_18/ReadVariableOp_8ReadVariableOp%gru_cell_18_readvariableop_6_resource*
_output_shapes

:
*
dtype02
gru_cell_18/ReadVariableOp_8
!gru_cell_18/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!gru_cell_18/strided_slice_8/stack
#gru_cell_18/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_18/strided_slice_8/stack_1
#gru_cell_18/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_18/strided_slice_8/stack_2Ð
gru_cell_18/strided_slice_8StridedSlice$gru_cell_18/ReadVariableOp_8:value:0*gru_cell_18/strided_slice_8/stack:output:0,gru_cell_18/strided_slice_8/stack_1:output:0,gru_cell_18/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2
gru_cell_18/strided_slice_8¥
gru_cell_18/MatMul_5MatMulgru_cell_18/mul_2:z:0$gru_cell_18/strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/MatMul_5¡
gru_cell_18/add_4AddV2gru_cell_18/BiasAdd_2:output:0gru_cell_18/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/add_4u
gru_cell_18/TanhTanhgru_cell_18/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/Tanh
gru_cell_18/mul_3Mulgru_cell_18/clip_by_value:z:0zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/mul_3k
gru_cell_18/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_18/sub/x
gru_cell_18/subSubgru_cell_18/sub/x:output:0gru_cell_18/clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/sub
gru_cell_18/mul_4Mulgru_cell_18/sub:z:0gru_cell_18/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/mul_4
gru_cell_18/add_5AddV2gru_cell_18/mul_3:z:0gru_cell_18/mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_cell_18/add_5
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¹
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0#gru_cell_18_readvariableop_resource%gru_cell_18_readvariableop_3_resource%gru_cell_18_readvariableop_6_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_75094*
condR
while_cond_75093*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
transpose_1s
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityë
NoOpNoOp^gru_cell_18/ReadVariableOp^gru_cell_18/ReadVariableOp_1^gru_cell_18/ReadVariableOp_2^gru_cell_18/ReadVariableOp_3^gru_cell_18/ReadVariableOp_4^gru_cell_18/ReadVariableOp_5^gru_cell_18/ReadVariableOp_6^gru_cell_18/ReadVariableOp_7^gru_cell_18/ReadVariableOp_8^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 28
gru_cell_18/ReadVariableOpgru_cell_18/ReadVariableOp2<
gru_cell_18/ReadVariableOp_1gru_cell_18/ReadVariableOp_12<
gru_cell_18/ReadVariableOp_2gru_cell_18/ReadVariableOp_22<
gru_cell_18/ReadVariableOp_3gru_cell_18/ReadVariableOp_32<
gru_cell_18/ReadVariableOp_4gru_cell_18/ReadVariableOp_42<
gru_cell_18/ReadVariableOp_5gru_cell_18/ReadVariableOp_52<
gru_cell_18/ReadVariableOp_6gru_cell_18/ReadVariableOp_62<
gru_cell_18/ReadVariableOp_7gru_cell_18/ReadVariableOp_72<
gru_cell_18/ReadVariableOp_8gru_cell_18/ReadVariableOp_82
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
Æ	

,__inference_sequential_9_layer_call_fn_73914
embedding_9_input
unknown:
Ù2
	unknown_0:2
	unknown_1:
	unknown_2:

	unknown_3:

	unknown_4:
identity¢StatefulPartitionedCall¶
StatefulPartitionedCallStatefulPartitionedCallembedding_9_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_738992
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameembedding_9_input
è

Ó
+__inference_gru_cell_18_layer_call_fn_76048

inputs
states_0
unknown:2
	unknown_0:
	unknown_1:

identity

identity_1¢StatefulPartitionedCall¢
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_gru_cell_18_layer_call_and_return_conditional_losses_732352
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/0
×·
¯
gru_18_while_body_74770*
&gru_18_while_gru_18_while_loop_counter0
,gru_18_while_gru_18_while_maximum_iterations
gru_18_while_placeholder
gru_18_while_placeholder_1
gru_18_while_placeholder_2)
%gru_18_while_gru_18_strided_slice_1_0e
agru_18_while_tensorarrayv2read_tensorlistgetitem_gru_18_tensorarrayunstack_tensorlistfromtensor_0D
2gru_18_while_gru_cell_18_readvariableop_resource_0:2B
4gru_18_while_gru_cell_18_readvariableop_3_resource_0:F
4gru_18_while_gru_cell_18_readvariableop_6_resource_0:

gru_18_while_identity
gru_18_while_identity_1
gru_18_while_identity_2
gru_18_while_identity_3
gru_18_while_identity_4'
#gru_18_while_gru_18_strided_slice_1c
_gru_18_while_tensorarrayv2read_tensorlistgetitem_gru_18_tensorarrayunstack_tensorlistfromtensorB
0gru_18_while_gru_cell_18_readvariableop_resource:2@
2gru_18_while_gru_cell_18_readvariableop_3_resource:D
2gru_18_while_gru_cell_18_readvariableop_6_resource:
¢'gru_18/while/gru_cell_18/ReadVariableOp¢)gru_18/while/gru_cell_18/ReadVariableOp_1¢)gru_18/while/gru_cell_18/ReadVariableOp_2¢)gru_18/while/gru_cell_18/ReadVariableOp_3¢)gru_18/while/gru_cell_18/ReadVariableOp_4¢)gru_18/while/gru_cell_18/ReadVariableOp_5¢)gru_18/while/gru_cell_18/ReadVariableOp_6¢)gru_18/while/gru_cell_18/ReadVariableOp_7¢)gru_18/while/gru_cell_18/ReadVariableOp_8Ñ
>gru_18/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2@
>gru_18/while/TensorArrayV2Read/TensorListGetItem/element_shapeý
0gru_18/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemagru_18_while_tensorarrayv2read_tensorlistgetitem_gru_18_tensorarrayunstack_tensorlistfromtensor_0gru_18_while_placeholderGgru_18/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype022
0gru_18/while/TensorArrayV2Read/TensorListGetItemÅ
'gru_18/while/gru_cell_18/ReadVariableOpReadVariableOp2gru_18_while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02)
'gru_18/while/gru_cell_18/ReadVariableOp­
,gru_18/while/gru_cell_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,gru_18/while/gru_cell_18/strided_slice/stack±
.gru_18/while/gru_cell_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   20
.gru_18/while/gru_cell_18/strided_slice/stack_1±
.gru_18/while/gru_cell_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_18/while/gru_cell_18/strided_slice/stack_2
&gru_18/while/gru_cell_18/strided_sliceStridedSlice/gru_18/while/gru_cell_18/ReadVariableOp:value:05gru_18/while/gru_cell_18/strided_slice/stack:output:07gru_18/while/gru_cell_18/strided_slice/stack_1:output:07gru_18/while/gru_cell_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2(
&gru_18/while/gru_cell_18/strided_sliceè
gru_18/while/gru_cell_18/MatMulMatMul7gru_18/while/TensorArrayV2Read/TensorListGetItem:item:0/gru_18/while/gru_cell_18/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2!
gru_18/while/gru_cell_18/MatMulÉ
)gru_18/while/gru_cell_18/ReadVariableOp_1ReadVariableOp2gru_18_while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02+
)gru_18/while/gru_cell_18/ReadVariableOp_1±
.gru_18/while/gru_cell_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   20
.gru_18/while/gru_cell_18/strided_slice_1/stackµ
0gru_18/while/gru_cell_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       22
0gru_18/while/gru_cell_18/strided_slice_1/stack_1µ
0gru_18/while/gru_cell_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_18/while/gru_cell_18/strided_slice_1/stack_2
(gru_18/while/gru_cell_18/strided_slice_1StridedSlice1gru_18/while/gru_cell_18/ReadVariableOp_1:value:07gru_18/while/gru_cell_18/strided_slice_1/stack:output:09gru_18/while/gru_cell_18/strided_slice_1/stack_1:output:09gru_18/while/gru_cell_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2*
(gru_18/while/gru_cell_18/strided_slice_1î
!gru_18/while/gru_cell_18/MatMul_1MatMul7gru_18/while/TensorArrayV2Read/TensorListGetItem:item:01gru_18/while/gru_cell_18/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!gru_18/while/gru_cell_18/MatMul_1É
)gru_18/while/gru_cell_18/ReadVariableOp_2ReadVariableOp2gru_18_while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype02+
)gru_18/while/gru_cell_18/ReadVariableOp_2±
.gru_18/while/gru_cell_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       20
.gru_18/while/gru_cell_18/strided_slice_2/stackµ
0gru_18/while/gru_cell_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0gru_18/while/gru_cell_18/strided_slice_2/stack_1µ
0gru_18/while/gru_cell_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_18/while/gru_cell_18/strided_slice_2/stack_2
(gru_18/while/gru_cell_18/strided_slice_2StridedSlice1gru_18/while/gru_cell_18/ReadVariableOp_2:value:07gru_18/while/gru_cell_18/strided_slice_2/stack:output:09gru_18/while/gru_cell_18/strided_slice_2/stack_1:output:09gru_18/while/gru_cell_18/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask2*
(gru_18/while/gru_cell_18/strided_slice_2î
!gru_18/while/gru_cell_18/MatMul_2MatMul7gru_18/while/TensorArrayV2Read/TensorListGetItem:item:01gru_18/while/gru_cell_18/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!gru_18/while/gru_cell_18/MatMul_2Ç
)gru_18/while/gru_cell_18/ReadVariableOp_3ReadVariableOp4gru_18_while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02+
)gru_18/while/gru_cell_18/ReadVariableOp_3ª
.gru_18/while/gru_cell_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.gru_18/while/gru_cell_18/strided_slice_3/stack®
0gru_18/while/gru_cell_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
22
0gru_18/while/gru_cell_18/strided_slice_3/stack_1®
0gru_18/while/gru_cell_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0gru_18/while/gru_cell_18/strided_slice_3/stack_2
(gru_18/while/gru_cell_18/strided_slice_3StridedSlice1gru_18/while/gru_cell_18/ReadVariableOp_3:value:07gru_18/while/gru_cell_18/strided_slice_3/stack:output:09gru_18/while/gru_cell_18/strided_slice_3/stack_1:output:09gru_18/while/gru_cell_18/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask2*
(gru_18/while/gru_cell_18/strided_slice_3ß
 gru_18/while/gru_cell_18/BiasAddBiasAdd)gru_18/while/gru_cell_18/MatMul:product:01gru_18/while/gru_cell_18/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2"
 gru_18/while/gru_cell_18/BiasAddÇ
)gru_18/while/gru_cell_18/ReadVariableOp_4ReadVariableOp4gru_18_while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02+
)gru_18/while/gru_cell_18/ReadVariableOp_4ª
.gru_18/while/gru_cell_18/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
20
.gru_18/while/gru_cell_18/strided_slice_4/stack®
0gru_18/while/gru_cell_18/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0gru_18/while/gru_cell_18/strided_slice_4/stack_1®
0gru_18/while/gru_cell_18/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0gru_18/while/gru_cell_18/strided_slice_4/stack_2ø
(gru_18/while/gru_cell_18/strided_slice_4StridedSlice1gru_18/while/gru_cell_18/ReadVariableOp_4:value:07gru_18/while/gru_cell_18/strided_slice_4/stack:output:09gru_18/while/gru_cell_18/strided_slice_4/stack_1:output:09gru_18/while/gru_cell_18/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
2*
(gru_18/while/gru_cell_18/strided_slice_4å
"gru_18/while/gru_cell_18/BiasAdd_1BiasAdd+gru_18/while/gru_cell_18/MatMul_1:product:01gru_18/while/gru_cell_18/strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2$
"gru_18/while/gru_cell_18/BiasAdd_1Ç
)gru_18/while/gru_cell_18/ReadVariableOp_5ReadVariableOp4gru_18_while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype02+
)gru_18/while/gru_cell_18/ReadVariableOp_5ª
.gru_18/while/gru_cell_18/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:20
.gru_18/while/gru_cell_18/strided_slice_5/stack®
0gru_18/while/gru_cell_18/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 22
0gru_18/while/gru_cell_18/strided_slice_5/stack_1®
0gru_18/while/gru_cell_18/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0gru_18/while/gru_cell_18/strided_slice_5/stack_2
(gru_18/while/gru_cell_18/strided_slice_5StridedSlice1gru_18/while/gru_cell_18/ReadVariableOp_5:value:07gru_18/while/gru_cell_18/strided_slice_5/stack:output:09gru_18/while/gru_cell_18/strided_slice_5/stack_1:output:09gru_18/while/gru_cell_18/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask2*
(gru_18/while/gru_cell_18/strided_slice_5å
"gru_18/while/gru_cell_18/BiasAdd_2BiasAdd+gru_18/while/gru_cell_18/MatMul_2:product:01gru_18/while/gru_cell_18/strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2$
"gru_18/while/gru_cell_18/BiasAdd_2Ë
)gru_18/while/gru_cell_18/ReadVariableOp_6ReadVariableOp4gru_18_while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02+
)gru_18/while/gru_cell_18/ReadVariableOp_6±
.gru_18/while/gru_cell_18/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.gru_18/while/gru_cell_18/strided_slice_6/stackµ
0gru_18/while/gru_cell_18/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   22
0gru_18/while/gru_cell_18/strided_slice_6/stack_1µ
0gru_18/while/gru_cell_18/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_18/while/gru_cell_18/strided_slice_6/stack_2
(gru_18/while/gru_cell_18/strided_slice_6StridedSlice1gru_18/while/gru_cell_18/ReadVariableOp_6:value:07gru_18/while/gru_cell_18/strided_slice_6/stack:output:09gru_18/while/gru_cell_18/strided_slice_6/stack_1:output:09gru_18/while/gru_cell_18/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2*
(gru_18/while/gru_cell_18/strided_slice_6Ñ
!gru_18/while/gru_cell_18/MatMul_3MatMulgru_18_while_placeholder_21gru_18/while/gru_cell_18/strided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!gru_18/while/gru_cell_18/MatMul_3Ë
)gru_18/while/gru_cell_18/ReadVariableOp_7ReadVariableOp4gru_18_while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02+
)gru_18/while/gru_cell_18/ReadVariableOp_7±
.gru_18/while/gru_cell_18/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   20
.gru_18/while/gru_cell_18/strided_slice_7/stackµ
0gru_18/while/gru_cell_18/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       22
0gru_18/while/gru_cell_18/strided_slice_7/stack_1µ
0gru_18/while/gru_cell_18/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_18/while/gru_cell_18/strided_slice_7/stack_2
(gru_18/while/gru_cell_18/strided_slice_7StridedSlice1gru_18/while/gru_cell_18/ReadVariableOp_7:value:07gru_18/while/gru_cell_18/strided_slice_7/stack:output:09gru_18/while/gru_cell_18/strided_slice_7/stack_1:output:09gru_18/while/gru_cell_18/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2*
(gru_18/while/gru_cell_18/strided_slice_7Ñ
!gru_18/while/gru_cell_18/MatMul_4MatMulgru_18_while_placeholder_21gru_18/while/gru_cell_18/strided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!gru_18/while/gru_cell_18/MatMul_4Ï
gru_18/while/gru_cell_18/addAddV2)gru_18/while/gru_cell_18/BiasAdd:output:0+gru_18/while/gru_cell_18/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/while/gru_cell_18/add
gru_18/while/gru_cell_18/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2 
gru_18/while/gru_cell_18/Const
 gru_18/while/gru_cell_18/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 gru_18/while/gru_cell_18/Const_1À
gru_18/while/gru_cell_18/MulMul gru_18/while/gru_cell_18/add:z:0'gru_18/while/gru_cell_18/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/while/gru_cell_18/MulÈ
gru_18/while/gru_cell_18/Add_1AddV2 gru_18/while/gru_cell_18/Mul:z:0)gru_18/while/gru_cell_18/Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
gru_18/while/gru_cell_18/Add_1©
0gru_18/while/gru_cell_18/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?22
0gru_18/while/gru_cell_18/clip_by_value/Minimum/yü
.gru_18/while/gru_cell_18/clip_by_value/MinimumMinimum"gru_18/while/gru_cell_18/Add_1:z:09gru_18/while/gru_cell_18/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
20
.gru_18/while/gru_cell_18/clip_by_value/Minimum
(gru_18/while/gru_cell_18/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2*
(gru_18/while/gru_cell_18/clip_by_value/yô
&gru_18/while/gru_cell_18/clip_by_valueMaximum2gru_18/while/gru_cell_18/clip_by_value/Minimum:z:01gru_18/while/gru_cell_18/clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2(
&gru_18/while/gru_cell_18/clip_by_valueÕ
gru_18/while/gru_cell_18/add_2AddV2+gru_18/while/gru_cell_18/BiasAdd_1:output:0+gru_18/while/gru_cell_18/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
gru_18/while/gru_cell_18/add_2
 gru_18/while/gru_cell_18/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2"
 gru_18/while/gru_cell_18/Const_2
 gru_18/while/gru_cell_18/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 gru_18/while/gru_cell_18/Const_3È
gru_18/while/gru_cell_18/Mul_1Mul"gru_18/while/gru_cell_18/add_2:z:0)gru_18/while/gru_cell_18/Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
gru_18/while/gru_cell_18/Mul_1Ê
gru_18/while/gru_cell_18/Add_3AddV2"gru_18/while/gru_cell_18/Mul_1:z:0)gru_18/while/gru_cell_18/Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
gru_18/while/gru_cell_18/Add_3­
2gru_18/while/gru_cell_18/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?24
2gru_18/while/gru_cell_18/clip_by_value_1/Minimum/y
0gru_18/while/gru_cell_18/clip_by_value_1/MinimumMinimum"gru_18/while/gru_cell_18/Add_3:z:0;gru_18/while/gru_cell_18/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
22
0gru_18/while/gru_cell_18/clip_by_value_1/Minimum
*gru_18/while/gru_cell_18/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*gru_18/while/gru_cell_18/clip_by_value_1/yü
(gru_18/while/gru_cell_18/clip_by_value_1Maximum4gru_18/while/gru_cell_18/clip_by_value_1/Minimum:z:03gru_18/while/gru_cell_18/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2*
(gru_18/while/gru_cell_18/clip_by_value_1Ã
gru_18/while/gru_cell_18/mul_2Mul,gru_18/while/gru_cell_18/clip_by_value_1:z:0gru_18_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
gru_18/while/gru_cell_18/mul_2Ë
)gru_18/while/gru_cell_18/ReadVariableOp_8ReadVariableOp4gru_18_while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype02+
)gru_18/while/gru_cell_18/ReadVariableOp_8±
.gru_18/while/gru_cell_18/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       20
.gru_18/while/gru_cell_18/strided_slice_8/stackµ
0gru_18/while/gru_cell_18/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0gru_18/while/gru_cell_18/strided_slice_8/stack_1µ
0gru_18/while/gru_cell_18/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_18/while/gru_cell_18/strided_slice_8/stack_2
(gru_18/while/gru_cell_18/strided_slice_8StridedSlice1gru_18/while/gru_cell_18/ReadVariableOp_8:value:07gru_18/while/gru_cell_18/strided_slice_8/stack:output:09gru_18/while/gru_cell_18/strided_slice_8/stack_1:output:09gru_18/while/gru_cell_18/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask2*
(gru_18/while/gru_cell_18/strided_slice_8Ù
!gru_18/while/gru_cell_18/MatMul_5MatMul"gru_18/while/gru_cell_18/mul_2:z:01gru_18/while/gru_cell_18/strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2#
!gru_18/while/gru_cell_18/MatMul_5Õ
gru_18/while/gru_cell_18/add_4AddV2+gru_18/while/gru_cell_18/BiasAdd_2:output:0+gru_18/while/gru_cell_18/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
gru_18/while/gru_cell_18/add_4
gru_18/while/gru_cell_18/TanhTanh"gru_18/while/gru_cell_18/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/while/gru_cell_18/TanhÁ
gru_18/while/gru_cell_18/mul_3Mul*gru_18/while/gru_cell_18/clip_by_value:z:0gru_18_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
gru_18/while/gru_cell_18/mul_3
gru_18/while/gru_cell_18/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
gru_18/while/gru_cell_18/sub/xÊ
gru_18/while/gru_cell_18/subSub'gru_18/while/gru_cell_18/sub/x:output:0*gru_18/while/gru_cell_18/clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/while/gru_cell_18/sub¾
gru_18/while/gru_cell_18/mul_4Mul gru_18/while/gru_cell_18/sub:z:0!gru_18/while/gru_cell_18/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
gru_18/while/gru_cell_18/mul_4Ã
gru_18/while/gru_cell_18/add_5AddV2"gru_18/while/gru_cell_18/mul_3:z:0"gru_18/while/gru_cell_18/mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
gru_18/while/gru_cell_18/add_5
1gru_18/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_18_while_placeholder_1gru_18_while_placeholder"gru_18/while/gru_cell_18/add_5:z:0*
_output_shapes
: *
element_dtype023
1gru_18/while/TensorArrayV2Write/TensorListSetItemj
gru_18/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_18/while/add/y
gru_18/while/addAddV2gru_18_while_placeholdergru_18/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_18/while/addn
gru_18/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_18/while/add_1/y
gru_18/while/add_1AddV2&gru_18_while_gru_18_while_loop_countergru_18/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_18/while/add_1
gru_18/while/IdentityIdentitygru_18/while/add_1:z:0^gru_18/while/NoOp*
T0*
_output_shapes
: 2
gru_18/while/Identity¡
gru_18/while/Identity_1Identity,gru_18_while_gru_18_while_maximum_iterations^gru_18/while/NoOp*
T0*
_output_shapes
: 2
gru_18/while/Identity_1
gru_18/while/Identity_2Identitygru_18/while/add:z:0^gru_18/while/NoOp*
T0*
_output_shapes
: 2
gru_18/while/Identity_2¶
gru_18/while/Identity_3IdentityAgru_18/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_18/while/NoOp*
T0*
_output_shapes
: 2
gru_18/while/Identity_3¨
gru_18/while/Identity_4Identity"gru_18/while/gru_cell_18/add_5:z:0^gru_18/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
gru_18/while/Identity_4ò
gru_18/while/NoOpNoOp(^gru_18/while/gru_cell_18/ReadVariableOp*^gru_18/while/gru_cell_18/ReadVariableOp_1*^gru_18/while/gru_cell_18/ReadVariableOp_2*^gru_18/while/gru_cell_18/ReadVariableOp_3*^gru_18/while/gru_cell_18/ReadVariableOp_4*^gru_18/while/gru_cell_18/ReadVariableOp_5*^gru_18/while/gru_cell_18/ReadVariableOp_6*^gru_18/while/gru_cell_18/ReadVariableOp_7*^gru_18/while/gru_cell_18/ReadVariableOp_8*"
_acd_function_control_output(*
_output_shapes
 2
gru_18/while/NoOp"L
#gru_18_while_gru_18_strided_slice_1%gru_18_while_gru_18_strided_slice_1_0"j
2gru_18_while_gru_cell_18_readvariableop_3_resource4gru_18_while_gru_cell_18_readvariableop_3_resource_0"j
2gru_18_while_gru_cell_18_readvariableop_6_resource4gru_18_while_gru_cell_18_readvariableop_6_resource_0"f
0gru_18_while_gru_cell_18_readvariableop_resource2gru_18_while_gru_cell_18_readvariableop_resource_0"7
gru_18_while_identitygru_18/while/Identity:output:0";
gru_18_while_identity_1 gru_18/while/Identity_1:output:0";
gru_18_while_identity_2 gru_18/while/Identity_2:output:0";
gru_18_while_identity_3 gru_18/while/Identity_3:output:0";
gru_18_while_identity_4 gru_18/while/Identity_4:output:0"Ä
_gru_18_while_tensorarrayv2read_tensorlistgetitem_gru_18_tensorarrayunstack_tensorlistfromtensoragru_18_while_tensorarrayv2read_tensorlistgetitem_gru_18_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : 2R
'gru_18/while/gru_cell_18/ReadVariableOp'gru_18/while/gru_cell_18/ReadVariableOp2V
)gru_18/while/gru_cell_18/ReadVariableOp_1)gru_18/while/gru_cell_18/ReadVariableOp_12V
)gru_18/while/gru_cell_18/ReadVariableOp_2)gru_18/while/gru_cell_18/ReadVariableOp_22V
)gru_18/while/gru_cell_18/ReadVariableOp_3)gru_18/while/gru_cell_18/ReadVariableOp_32V
)gru_18/while/gru_cell_18/ReadVariableOp_4)gru_18/while/gru_cell_18/ReadVariableOp_42V
)gru_18/while/gru_cell_18/ReadVariableOp_5)gru_18/while/gru_cell_18/ReadVariableOp_52V
)gru_18/while/gru_cell_18/ReadVariableOp_6)gru_18/while/gru_cell_18/ReadVariableOp_62V
)gru_18/while/gru_cell_18/ReadVariableOp_7)gru_18/while/gru_cell_18/ReadVariableOp_72V
)gru_18/while/gru_cell_18/ReadVariableOp_8)gru_18/while/gru_cell_18/ReadVariableOp_8: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
Åß

$sequential_9_gru_18_while_body_72774D
@sequential_9_gru_18_while_sequential_9_gru_18_while_loop_counterJ
Fsequential_9_gru_18_while_sequential_9_gru_18_while_maximum_iterations)
%sequential_9_gru_18_while_placeholder+
'sequential_9_gru_18_while_placeholder_1+
'sequential_9_gru_18_while_placeholder_2C
?sequential_9_gru_18_while_sequential_9_gru_18_strided_slice_1_0
{sequential_9_gru_18_while_tensorarrayv2read_tensorlistgetitem_sequential_9_gru_18_tensorarrayunstack_tensorlistfromtensor_0Q
?sequential_9_gru_18_while_gru_cell_18_readvariableop_resource_0:2O
Asequential_9_gru_18_while_gru_cell_18_readvariableop_3_resource_0:S
Asequential_9_gru_18_while_gru_cell_18_readvariableop_6_resource_0:
&
"sequential_9_gru_18_while_identity(
$sequential_9_gru_18_while_identity_1(
$sequential_9_gru_18_while_identity_2(
$sequential_9_gru_18_while_identity_3(
$sequential_9_gru_18_while_identity_4A
=sequential_9_gru_18_while_sequential_9_gru_18_strided_slice_1}
ysequential_9_gru_18_while_tensorarrayv2read_tensorlistgetitem_sequential_9_gru_18_tensorarrayunstack_tensorlistfromtensorO
=sequential_9_gru_18_while_gru_cell_18_readvariableop_resource:2M
?sequential_9_gru_18_while_gru_cell_18_readvariableop_3_resource:Q
?sequential_9_gru_18_while_gru_cell_18_readvariableop_6_resource:
¢4sequential_9/gru_18/while/gru_cell_18/ReadVariableOp¢6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_1¢6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_2¢6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_3¢6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_4¢6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_5¢6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_6¢6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_7¢6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_8ë
Ksequential_9/gru_18/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2M
Ksequential_9/gru_18/while/TensorArrayV2Read/TensorListGetItem/element_shapeË
=sequential_9/gru_18/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_9_gru_18_while_tensorarrayv2read_tensorlistgetitem_sequential_9_gru_18_tensorarrayunstack_tensorlistfromtensor_0%sequential_9_gru_18_while_placeholderTsequential_9/gru_18/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02?
=sequential_9/gru_18/while/TensorArrayV2Read/TensorListGetItemì
4sequential_9/gru_18/while/gru_cell_18/ReadVariableOpReadVariableOp?sequential_9_gru_18_while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype026
4sequential_9/gru_18/while/gru_cell_18/ReadVariableOpÇ
9sequential_9/gru_18/while/gru_cell_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9sequential_9/gru_18/while/gru_cell_18/strided_slice/stackË
;sequential_9/gru_18/while/gru_cell_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2=
;sequential_9/gru_18/while/gru_cell_18/strided_slice/stack_1Ë
;sequential_9/gru_18/while/gru_cell_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;sequential_9/gru_18/while/gru_cell_18/strided_slice/stack_2à
3sequential_9/gru_18/while/gru_cell_18/strided_sliceStridedSlice<sequential_9/gru_18/while/gru_cell_18/ReadVariableOp:value:0Bsequential_9/gru_18/while/gru_cell_18/strided_slice/stack:output:0Dsequential_9/gru_18/while/gru_cell_18/strided_slice/stack_1:output:0Dsequential_9/gru_18/while/gru_cell_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask25
3sequential_9/gru_18/while/gru_cell_18/strided_slice
,sequential_9/gru_18/while/gru_cell_18/MatMulMatMulDsequential_9/gru_18/while/TensorArrayV2Read/TensorListGetItem:item:0<sequential_9/gru_18/while/gru_cell_18/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2.
,sequential_9/gru_18/while/gru_cell_18/MatMulð
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_1ReadVariableOp?sequential_9_gru_18_while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype028
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_1Ë
;sequential_9/gru_18/while/gru_cell_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2=
;sequential_9/gru_18/while/gru_cell_18/strided_slice_1/stackÏ
=sequential_9/gru_18/while/gru_cell_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2?
=sequential_9/gru_18/while/gru_cell_18/strided_slice_1/stack_1Ï
=sequential_9/gru_18/while/gru_cell_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_9/gru_18/while/gru_cell_18/strided_slice_1/stack_2ì
5sequential_9/gru_18/while/gru_cell_18/strided_slice_1StridedSlice>sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_1:value:0Dsequential_9/gru_18/while/gru_cell_18/strided_slice_1/stack:output:0Fsequential_9/gru_18/while/gru_cell_18/strided_slice_1/stack_1:output:0Fsequential_9/gru_18/while/gru_cell_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask27
5sequential_9/gru_18/while/gru_cell_18/strided_slice_1¢
.sequential_9/gru_18/while/gru_cell_18/MatMul_1MatMulDsequential_9/gru_18/while/TensorArrayV2Read/TensorListGetItem:item:0>sequential_9/gru_18/while/gru_cell_18/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
20
.sequential_9/gru_18/while/gru_cell_18/MatMul_1ð
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_2ReadVariableOp?sequential_9_gru_18_while_gru_cell_18_readvariableop_resource_0*
_output_shapes

:2*
dtype028
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_2Ë
;sequential_9/gru_18/while/gru_cell_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2=
;sequential_9/gru_18/while/gru_cell_18/strided_slice_2/stackÏ
=sequential_9/gru_18/while/gru_cell_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2?
=sequential_9/gru_18/while/gru_cell_18/strided_slice_2/stack_1Ï
=sequential_9/gru_18/while/gru_cell_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_9/gru_18/while/gru_cell_18/strided_slice_2/stack_2ì
5sequential_9/gru_18/while/gru_cell_18/strided_slice_2StridedSlice>sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_2:value:0Dsequential_9/gru_18/while/gru_cell_18/strided_slice_2/stack:output:0Fsequential_9/gru_18/while/gru_cell_18/strided_slice_2/stack_1:output:0Fsequential_9/gru_18/while/gru_cell_18/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2
*

begin_mask*
end_mask27
5sequential_9/gru_18/while/gru_cell_18/strided_slice_2¢
.sequential_9/gru_18/while/gru_cell_18/MatMul_2MatMulDsequential_9/gru_18/while/TensorArrayV2Read/TensorListGetItem:item:0>sequential_9/gru_18/while/gru_cell_18/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
20
.sequential_9/gru_18/while/gru_cell_18/MatMul_2î
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_3ReadVariableOpAsequential_9_gru_18_while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype028
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_3Ä
;sequential_9/gru_18/while/gru_cell_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;sequential_9/gru_18/while/gru_cell_18/strided_slice_3/stackÈ
=sequential_9/gru_18/while/gru_cell_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
2?
=sequential_9/gru_18/while/gru_cell_18/strided_slice_3/stack_1È
=sequential_9/gru_18/while/gru_cell_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=sequential_9/gru_18/while/gru_cell_18/strided_slice_3/stack_2Ø
5sequential_9/gru_18/while/gru_cell_18/strided_slice_3StridedSlice>sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_3:value:0Dsequential_9/gru_18/while/gru_cell_18/strided_slice_3/stack:output:0Fsequential_9/gru_18/while/gru_cell_18/strided_slice_3/stack_1:output:0Fsequential_9/gru_18/while/gru_cell_18/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*

begin_mask27
5sequential_9/gru_18/while/gru_cell_18/strided_slice_3
-sequential_9/gru_18/while/gru_cell_18/BiasAddBiasAdd6sequential_9/gru_18/while/gru_cell_18/MatMul:product:0>sequential_9/gru_18/while/gru_cell_18/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2/
-sequential_9/gru_18/while/gru_cell_18/BiasAddî
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_4ReadVariableOpAsequential_9_gru_18_while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype028
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_4Ä
;sequential_9/gru_18/while/gru_cell_18/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
2=
;sequential_9/gru_18/while/gru_cell_18/strided_slice_4/stackÈ
=sequential_9/gru_18/while/gru_cell_18/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=sequential_9/gru_18/while/gru_cell_18/strided_slice_4/stack_1È
=sequential_9/gru_18/while/gru_cell_18/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=sequential_9/gru_18/while/gru_cell_18/strided_slice_4/stack_2Æ
5sequential_9/gru_18/while/gru_cell_18/strided_slice_4StridedSlice>sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_4:value:0Dsequential_9/gru_18/while/gru_cell_18/strided_slice_4/stack:output:0Fsequential_9/gru_18/while/gru_cell_18/strided_slice_4/stack_1:output:0Fsequential_9/gru_18/while/gru_cell_18/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
:
27
5sequential_9/gru_18/while/gru_cell_18/strided_slice_4
/sequential_9/gru_18/while/gru_cell_18/BiasAdd_1BiasAdd8sequential_9/gru_18/while/gru_cell_18/MatMul_1:product:0>sequential_9/gru_18/while/gru_cell_18/strided_slice_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
21
/sequential_9/gru_18/while/gru_cell_18/BiasAdd_1î
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_5ReadVariableOpAsequential_9_gru_18_while_gru_cell_18_readvariableop_3_resource_0*
_output_shapes
:*
dtype028
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_5Ä
;sequential_9/gru_18/while/gru_cell_18/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2=
;sequential_9/gru_18/while/gru_cell_18/strided_slice_5/stackÈ
=sequential_9/gru_18/while/gru_cell_18/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2?
=sequential_9/gru_18/while/gru_cell_18/strided_slice_5/stack_1È
=sequential_9/gru_18/while/gru_cell_18/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=sequential_9/gru_18/while/gru_cell_18/strided_slice_5/stack_2Ö
5sequential_9/gru_18/while/gru_cell_18/strided_slice_5StridedSlice>sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_5:value:0Dsequential_9/gru_18/while/gru_cell_18/strided_slice_5/stack:output:0Fsequential_9/gru_18/while/gru_cell_18/strided_slice_5/stack_1:output:0Fsequential_9/gru_18/while/gru_cell_18/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:
*
end_mask27
5sequential_9/gru_18/while/gru_cell_18/strided_slice_5
/sequential_9/gru_18/while/gru_cell_18/BiasAdd_2BiasAdd8sequential_9/gru_18/while/gru_cell_18/MatMul_2:product:0>sequential_9/gru_18/while/gru_cell_18/strided_slice_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
21
/sequential_9/gru_18/while/gru_cell_18/BiasAdd_2ò
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_6ReadVariableOpAsequential_9_gru_18_while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype028
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_6Ë
;sequential_9/gru_18/while/gru_cell_18/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2=
;sequential_9/gru_18/while/gru_cell_18/strided_slice_6/stackÏ
=sequential_9/gru_18/while/gru_cell_18/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   2?
=sequential_9/gru_18/while/gru_cell_18/strided_slice_6/stack_1Ï
=sequential_9/gru_18/while/gru_cell_18/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_9/gru_18/while/gru_cell_18/strided_slice_6/stack_2ì
5sequential_9/gru_18/while/gru_cell_18/strided_slice_6StridedSlice>sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_6:value:0Dsequential_9/gru_18/while/gru_cell_18/strided_slice_6/stack:output:0Fsequential_9/gru_18/while/gru_cell_18/strided_slice_6/stack_1:output:0Fsequential_9/gru_18/while/gru_cell_18/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask27
5sequential_9/gru_18/while/gru_cell_18/strided_slice_6
.sequential_9/gru_18/while/gru_cell_18/MatMul_3MatMul'sequential_9_gru_18_while_placeholder_2>sequential_9/gru_18/while/gru_cell_18/strided_slice_6:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
20
.sequential_9/gru_18/while/gru_cell_18/MatMul_3ò
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_7ReadVariableOpAsequential_9_gru_18_while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype028
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_7Ë
;sequential_9/gru_18/while/gru_cell_18/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   2=
;sequential_9/gru_18/while/gru_cell_18/strided_slice_7/stackÏ
=sequential_9/gru_18/while/gru_cell_18/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2?
=sequential_9/gru_18/while/gru_cell_18/strided_slice_7/stack_1Ï
=sequential_9/gru_18/while/gru_cell_18/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_9/gru_18/while/gru_cell_18/strided_slice_7/stack_2ì
5sequential_9/gru_18/while/gru_cell_18/strided_slice_7StridedSlice>sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_7:value:0Dsequential_9/gru_18/while/gru_cell_18/strided_slice_7/stack:output:0Fsequential_9/gru_18/while/gru_cell_18/strided_slice_7/stack_1:output:0Fsequential_9/gru_18/while/gru_cell_18/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask27
5sequential_9/gru_18/while/gru_cell_18/strided_slice_7
.sequential_9/gru_18/while/gru_cell_18/MatMul_4MatMul'sequential_9_gru_18_while_placeholder_2>sequential_9/gru_18/while/gru_cell_18/strided_slice_7:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
20
.sequential_9/gru_18/while/gru_cell_18/MatMul_4
)sequential_9/gru_18/while/gru_cell_18/addAddV26sequential_9/gru_18/while/gru_cell_18/BiasAdd:output:08sequential_9/gru_18/while/gru_cell_18/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2+
)sequential_9/gru_18/while/gru_cell_18/add
+sequential_9/gru_18/while/gru_cell_18/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+sequential_9/gru_18/while/gru_cell_18/Const£
-sequential_9/gru_18/while/gru_cell_18/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2/
-sequential_9/gru_18/while/gru_cell_18/Const_1ô
)sequential_9/gru_18/while/gru_cell_18/MulMul-sequential_9/gru_18/while/gru_cell_18/add:z:04sequential_9/gru_18/while/gru_cell_18/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2+
)sequential_9/gru_18/while/gru_cell_18/Mulü
+sequential_9/gru_18/while/gru_cell_18/Add_1AddV2-sequential_9/gru_18/while/gru_cell_18/Mul:z:06sequential_9/gru_18/while/gru_cell_18/Const_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2-
+sequential_9/gru_18/while/gru_cell_18/Add_1Ã
=sequential_9/gru_18/while/gru_cell_18/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2?
=sequential_9/gru_18/while/gru_cell_18/clip_by_value/Minimum/y°
;sequential_9/gru_18/while/gru_cell_18/clip_by_value/MinimumMinimum/sequential_9/gru_18/while/gru_cell_18/Add_1:z:0Fsequential_9/gru_18/while/gru_cell_18/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2=
;sequential_9/gru_18/while/gru_cell_18/clip_by_value/Minimum³
5sequential_9/gru_18/while/gru_cell_18/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5sequential_9/gru_18/while/gru_cell_18/clip_by_value/y¨
3sequential_9/gru_18/while/gru_cell_18/clip_by_valueMaximum?sequential_9/gru_18/while/gru_cell_18/clip_by_value/Minimum:z:0>sequential_9/gru_18/while/gru_cell_18/clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
25
3sequential_9/gru_18/while/gru_cell_18/clip_by_value
+sequential_9/gru_18/while/gru_cell_18/add_2AddV28sequential_9/gru_18/while/gru_cell_18/BiasAdd_1:output:08sequential_9/gru_18/while/gru_cell_18/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2-
+sequential_9/gru_18/while/gru_cell_18/add_2£
-sequential_9/gru_18/while/gru_cell_18/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2/
-sequential_9/gru_18/while/gru_cell_18/Const_2£
-sequential_9/gru_18/while/gru_cell_18/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2/
-sequential_9/gru_18/while/gru_cell_18/Const_3ü
+sequential_9/gru_18/while/gru_cell_18/Mul_1Mul/sequential_9/gru_18/while/gru_cell_18/add_2:z:06sequential_9/gru_18/while/gru_cell_18/Const_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2-
+sequential_9/gru_18/while/gru_cell_18/Mul_1þ
+sequential_9/gru_18/while/gru_cell_18/Add_3AddV2/sequential_9/gru_18/while/gru_cell_18/Mul_1:z:06sequential_9/gru_18/while/gru_cell_18/Const_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2-
+sequential_9/gru_18/while/gru_cell_18/Add_3Ç
?sequential_9/gru_18/while/gru_cell_18/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2A
?sequential_9/gru_18/while/gru_cell_18/clip_by_value_1/Minimum/y¶
=sequential_9/gru_18/while/gru_cell_18/clip_by_value_1/MinimumMinimum/sequential_9/gru_18/while/gru_cell_18/Add_3:z:0Hsequential_9/gru_18/while/gru_cell_18/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2?
=sequential_9/gru_18/while/gru_cell_18/clip_by_value_1/Minimum·
7sequential_9/gru_18/while/gru_cell_18/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7sequential_9/gru_18/while/gru_cell_18/clip_by_value_1/y°
5sequential_9/gru_18/while/gru_cell_18/clip_by_value_1MaximumAsequential_9/gru_18/while/gru_cell_18/clip_by_value_1/Minimum:z:0@sequential_9/gru_18/while/gru_cell_18/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
27
5sequential_9/gru_18/while/gru_cell_18/clip_by_value_1÷
+sequential_9/gru_18/while/gru_cell_18/mul_2Mul9sequential_9/gru_18/while/gru_cell_18/clip_by_value_1:z:0'sequential_9_gru_18_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2-
+sequential_9/gru_18/while/gru_cell_18/mul_2ò
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_8ReadVariableOpAsequential_9_gru_18_while_gru_cell_18_readvariableop_6_resource_0*
_output_shapes

:
*
dtype028
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_8Ë
;sequential_9/gru_18/while/gru_cell_18/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       2=
;sequential_9/gru_18/while/gru_cell_18/strided_slice_8/stackÏ
=sequential_9/gru_18/while/gru_cell_18/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2?
=sequential_9/gru_18/while/gru_cell_18/strided_slice_8/stack_1Ï
=sequential_9/gru_18/while/gru_cell_18/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_9/gru_18/while/gru_cell_18/strided_slice_8/stack_2ì
5sequential_9/gru_18/while/gru_cell_18/strided_slice_8StridedSlice>sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_8:value:0Dsequential_9/gru_18/while/gru_cell_18/strided_slice_8/stack:output:0Fsequential_9/gru_18/while/gru_cell_18/strided_slice_8/stack_1:output:0Fsequential_9/gru_18/while/gru_cell_18/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes

:

*

begin_mask*
end_mask27
5sequential_9/gru_18/while/gru_cell_18/strided_slice_8
.sequential_9/gru_18/while/gru_cell_18/MatMul_5MatMul/sequential_9/gru_18/while/gru_cell_18/mul_2:z:0>sequential_9/gru_18/while/gru_cell_18/strided_slice_8:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
20
.sequential_9/gru_18/while/gru_cell_18/MatMul_5
+sequential_9/gru_18/while/gru_cell_18/add_4AddV28sequential_9/gru_18/while/gru_cell_18/BiasAdd_2:output:08sequential_9/gru_18/while/gru_cell_18/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2-
+sequential_9/gru_18/while/gru_cell_18/add_4Ã
*sequential_9/gru_18/while/gru_cell_18/TanhTanh/sequential_9/gru_18/while/gru_cell_18/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2,
*sequential_9/gru_18/while/gru_cell_18/Tanhõ
+sequential_9/gru_18/while/gru_cell_18/mul_3Mul7sequential_9/gru_18/while/gru_cell_18/clip_by_value:z:0'sequential_9_gru_18_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2-
+sequential_9/gru_18/while/gru_cell_18/mul_3
+sequential_9/gru_18/while/gru_cell_18/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+sequential_9/gru_18/while/gru_cell_18/sub/xþ
)sequential_9/gru_18/while/gru_cell_18/subSub4sequential_9/gru_18/while/gru_cell_18/sub/x:output:07sequential_9/gru_18/while/gru_cell_18/clip_by_value:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2+
)sequential_9/gru_18/while/gru_cell_18/subò
+sequential_9/gru_18/while/gru_cell_18/mul_4Mul-sequential_9/gru_18/while/gru_cell_18/sub:z:0.sequential_9/gru_18/while/gru_cell_18/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2-
+sequential_9/gru_18/while/gru_cell_18/mul_4÷
+sequential_9/gru_18/while/gru_cell_18/add_5AddV2/sequential_9/gru_18/while/gru_cell_18/mul_3:z:0/sequential_9/gru_18/while/gru_cell_18/mul_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2-
+sequential_9/gru_18/while/gru_cell_18/add_5Ã
>sequential_9/gru_18/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_9_gru_18_while_placeholder_1%sequential_9_gru_18_while_placeholder/sequential_9/gru_18/while/gru_cell_18/add_5:z:0*
_output_shapes
: *
element_dtype02@
>sequential_9/gru_18/while/TensorArrayV2Write/TensorListSetItem
sequential_9/gru_18/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_9/gru_18/while/add/y¹
sequential_9/gru_18/while/addAddV2%sequential_9_gru_18_while_placeholder(sequential_9/gru_18/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_9/gru_18/while/add
!sequential_9/gru_18/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_9/gru_18/while/add_1/yÚ
sequential_9/gru_18/while/add_1AddV2@sequential_9_gru_18_while_sequential_9_gru_18_while_loop_counter*sequential_9/gru_18/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_9/gru_18/while/add_1»
"sequential_9/gru_18/while/IdentityIdentity#sequential_9/gru_18/while/add_1:z:0^sequential_9/gru_18/while/NoOp*
T0*
_output_shapes
: 2$
"sequential_9/gru_18/while/Identityâ
$sequential_9/gru_18/while/Identity_1IdentityFsequential_9_gru_18_while_sequential_9_gru_18_while_maximum_iterations^sequential_9/gru_18/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_9/gru_18/while/Identity_1½
$sequential_9/gru_18/while/Identity_2Identity!sequential_9/gru_18/while/add:z:0^sequential_9/gru_18/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_9/gru_18/while/Identity_2ê
$sequential_9/gru_18/while/Identity_3IdentityNsequential_9/gru_18/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_9/gru_18/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_9/gru_18/while/Identity_3Ü
$sequential_9/gru_18/while/Identity_4Identity/sequential_9/gru_18/while/gru_cell_18/add_5:z:0^sequential_9/gru_18/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2&
$sequential_9/gru_18/while/Identity_4
sequential_9/gru_18/while/NoOpNoOp5^sequential_9/gru_18/while/gru_cell_18/ReadVariableOp7^sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_17^sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_27^sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_37^sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_47^sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_57^sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_67^sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_77^sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_8*"
_acd_function_control_output(*
_output_shapes
 2 
sequential_9/gru_18/while/NoOp"
?sequential_9_gru_18_while_gru_cell_18_readvariableop_3_resourceAsequential_9_gru_18_while_gru_cell_18_readvariableop_3_resource_0"
?sequential_9_gru_18_while_gru_cell_18_readvariableop_6_resourceAsequential_9_gru_18_while_gru_cell_18_readvariableop_6_resource_0"
=sequential_9_gru_18_while_gru_cell_18_readvariableop_resource?sequential_9_gru_18_while_gru_cell_18_readvariableop_resource_0"Q
"sequential_9_gru_18_while_identity+sequential_9/gru_18/while/Identity:output:0"U
$sequential_9_gru_18_while_identity_1-sequential_9/gru_18/while/Identity_1:output:0"U
$sequential_9_gru_18_while_identity_2-sequential_9/gru_18/while/Identity_2:output:0"U
$sequential_9_gru_18_while_identity_3-sequential_9/gru_18/while/Identity_3:output:0"U
$sequential_9_gru_18_while_identity_4-sequential_9/gru_18/while/Identity_4:output:0"
=sequential_9_gru_18_while_sequential_9_gru_18_strided_slice_1?sequential_9_gru_18_while_sequential_9_gru_18_strided_slice_1_0"ø
ysequential_9_gru_18_while_tensorarrayv2read_tensorlistgetitem_sequential_9_gru_18_tensorarrayunstack_tensorlistfromtensor{sequential_9_gru_18_while_tensorarrayv2read_tensorlistgetitem_sequential_9_gru_18_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ
: : : : : 2l
4sequential_9/gru_18/while/gru_cell_18/ReadVariableOp4sequential_9/gru_18/while/gru_cell_18/ReadVariableOp2p
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_16sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_12p
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_26sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_22p
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_36sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_32p
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_46sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_42p
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_56sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_52p
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_66sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_62p
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_76sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_72p
6sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_86sequential_9/gru_18/while/gru_cell_18/ReadVariableOp_8: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: "¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¾
serving_defaultª
O
embedding_9_input:
#serving_default_embedding_9_input:0ÿÿÿÿÿÿÿÿÿ;
dense_70
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ìo
Û
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api
	
signatures
X_default_save_signature
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_sequential
µ


embeddings
regularization_losses
trainable_variables
	variables
	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
»

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
___call__
*`&call_and_return_all_conditional_losses"
_tf_keras_layer
¿
iter

beta_1

beta_2
	decay
learning_rate
mLmMmN mO!mP"mQ
vRvSvT vU!vV"vW"
	optimizer
 "
trackable_list_wrapper
J

0
 1
!2
"3
4
5"
trackable_list_wrapper
J

0
 1
!2
"3
4
5"
trackable_list_wrapper
Ê
regularization_losses
#metrics
$layer_regularization_losses
trainable_variables

%layers
&non_trainable_variables
'layer_metrics
	variables
Y__call__
X_default_save_signature
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
,
aserving_default"
signature_map
*:(
Ù22embedding_9/embeddings
 "
trackable_list_wrapper
'

0"
trackable_list_wrapper
'

0"
trackable_list_wrapper
­
regularization_losses
(layer_regularization_losses
)metrics
trainable_variables

*layers
+non_trainable_variables
,layer_metrics
	variables
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
Ñ

 kernel
!recurrent_kernel
"bias
-regularization_losses
.trainable_variables
/	variables
0	keras_api
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
¹
regularization_losses
1layer_regularization_losses
2metrics
trainable_variables

3layers
4non_trainable_variables

5states
6layer_metrics
	variables
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
 :
2dense_7/kernel
:2dense_7/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
regularization_losses
7layer_regularization_losses
8metrics
trainable_variables

9layers
:non_trainable_variables
;layer_metrics
	variables
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
+:)22gru_18/gru_cell_18/kernel
5:3
2#gru_18/gru_cell_18/recurrent_kernel
%:#2gru_18/gru_cell_18/bias
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
­
-regularization_losses
>layer_regularization_losses
?metrics
.trainable_variables

@layers
Anon_trainable_variables
Blayer_metrics
/	variables
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	Ctotal
	Dcount
E	variables
F	keras_api"
_tf_keras_metric
^
	Gtotal
	Hcount
I
_fn_kwargs
J	variables
K	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
C0
D1"
trackable_list_wrapper
-
E	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
G0
H1"
trackable_list_wrapper
-
J	variables"
_generic_user_object
/:-
Ù22Adam/embedding_9/embeddings/m
%:#
2Adam/dense_7/kernel/m
:2Adam/dense_7/bias/m
0:.22 Adam/gru_18/gru_cell_18/kernel/m
::8
2*Adam/gru_18/gru_cell_18/recurrent_kernel/m
*:(2Adam/gru_18/gru_cell_18/bias/m
/:-
Ù22Adam/embedding_9/embeddings/v
%:#
2Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v
0:.22 Adam/gru_18/gru_cell_18/kernel/v
::8
2*Adam/gru_18/gru_cell_18/recurrent_kernel/v
*:(2Adam/gru_18/gru_cell_18/bias/v
ÕBÒ
 __inference__wrapped_model_72919embedding_9_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þ2û
,__inference_sequential_9_layer_call_fn_73914
,__inference_sequential_9_layer_call_fn_74360
,__inference_sequential_9_layer_call_fn_74377
,__inference_sequential_9_layer_call_fn_74280À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ê2ç
G__inference_sequential_9_layer_call_and_return_conditional_losses_74646
G__inference_sequential_9_layer_call_and_return_conditional_losses_74915
G__inference_sequential_9_layer_call_and_return_conditional_losses_74299
G__inference_sequential_9_layer_call_and_return_conditional_losses_74318À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Õ2Ò
+__inference_embedding_9_layer_call_fn_74922¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_embedding_9_layer_call_and_return_conditional_losses_74932¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
û2ø
&__inference_gru_18_layer_call_fn_74943
&__inference_gru_18_layer_call_fn_74954
&__inference_gru_18_layer_call_fn_74965
&__inference_gru_18_layer_call_fn_74976Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ç2ä
A__inference_gru_18_layer_call_and_return_conditional_losses_75232
A__inference_gru_18_layer_call_and_return_conditional_losses_75488
A__inference_gru_18_layer_call_and_return_conditional_losses_75744
A__inference_gru_18_layer_call_and_return_conditional_losses_76000Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ñ2Î
'__inference_dense_7_layer_call_fn_76009¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_7_layer_call_and_return_conditional_losses_76020¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÔBÑ
#__inference_signature_wrapper_74343embedding_9_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
+__inference_gru_cell_18_layer_call_fn_76034
+__inference_gru_cell_18_layer_call_fn_76048¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ô2Ñ
F__inference_gru_cell_18_layer_call_and_return_conditional_losses_76137
F__inference_gru_cell_18_layer_call_and_return_conditional_losses_76226¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 __inference__wrapped_model_72919w
 "!:¢7
0¢-
+(
embedding_9_inputÿÿÿÿÿÿÿÿÿ
ª "1ª.
,
dense_7!
dense_7ÿÿÿÿÿÿÿÿÿ¢
B__inference_dense_7_layer_call_and_return_conditional_losses_76020\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
'__inference_dense_7_layer_call_fn_76009O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "ÿÿÿÿÿÿÿÿÿ©
F__inference_embedding_9_layer_call_and_return_conditional_losses_74932_
/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ2
 
+__inference_embedding_9_layer_call_fn_74922R
/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ2Â
A__inference_gru_18_layer_call_and_return_conditional_losses_75232} "!O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 Â
A__inference_gru_18_layer_call_and_return_conditional_losses_75488} "!O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ²
A__inference_gru_18_layer_call_and_return_conditional_losses_75744m "!?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ²
A__inference_gru_18_layer_call_and_return_conditional_losses_76000m "!?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
&__inference_gru_18_layer_call_fn_74943p "!O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

&__inference_gru_18_layer_call_fn_74954p "!O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ

&__inference_gru_18_layer_call_fn_74965` "!?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

&__inference_gru_18_layer_call_fn_74976` "!?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ

F__inference_gru_cell_18_layer_call_and_return_conditional_losses_76137· "!\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ2
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ

p 
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ

$!

0/1/0ÿÿÿÿÿÿÿÿÿ

 
F__inference_gru_cell_18_layer_call_and_return_conditional_losses_76226· "!\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ2
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ

p
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ

$!

0/1/0ÿÿÿÿÿÿÿÿÿ

 Ù
+__inference_gru_cell_18_layer_call_fn_76034© "!\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ2
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ

p 
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ

"

1/0ÿÿÿÿÿÿÿÿÿ
Ù
+__inference_gru_cell_18_layer_call_fn_76048© "!\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ2
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ

p
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ

"

1/0ÿÿÿÿÿÿÿÿÿ
¾
G__inference_sequential_9_layer_call_and_return_conditional_losses_74299s
 "!B¢?
8¢5
+(
embedding_9_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¾
G__inference_sequential_9_layer_call_and_return_conditional_losses_74318s
 "!B¢?
8¢5
+(
embedding_9_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ³
G__inference_sequential_9_layer_call_and_return_conditional_losses_74646h
 "!7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ³
G__inference_sequential_9_layer_call_and_return_conditional_losses_74915h
 "!7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_sequential_9_layer_call_fn_73914f
 "!B¢?
8¢5
+(
embedding_9_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_9_layer_call_fn_74280f
 "!B¢?
8¢5
+(
embedding_9_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_9_layer_call_fn_74360[
 "!7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_9_layer_call_fn_74377[
 "!7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ´
#__inference_signature_wrapper_74343
 "!O¢L
¢ 
EªB
@
embedding_9_input+(
embedding_9_inputÿÿÿÿÿÿÿÿÿ"1ª.
,
dense_7!
dense_7ÿÿÿÿÿÿÿÿÿ