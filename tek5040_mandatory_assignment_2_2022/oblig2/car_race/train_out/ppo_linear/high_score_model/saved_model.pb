??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Multinomial
logits"T
num_samples
output"output_dtype"
seedint "
seed2int "
Ttype:
2	" 
output_dtypetype0	:
2	?
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
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02unknown8??
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
??*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
?
ConstConst*
_output_shapes

:*
dtype0*U
valueLBJ"<  ??                      ??              ??              ??

NoOpNoOp
?
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
v
policy_network
regularization_losses
trainable_variables
	variables
	keras_api

signatures
t
feature_extractor
	dense
	regularization_losses

trainable_variables
	variables
	keras_api
 

0
1

0
1
?
metrics

layers
non_trainable_variables
regularization_losses
layer_regularization_losses
layer_metrics
trainable_variables
	variables
 
_
flatten
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
 

0
1

0
1
?
metrics

layers
non_trainable_variables
	regularization_losses
 layer_regularization_losses
!layer_metrics

trainable_variables
	variables
RP
VARIABLE_VALUEdense/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUE
dense/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
 

0
 
 
 
R
"regularization_losses
#trainable_variables
$	variables
%	keras_api
 
 
 
?
&metrics

'layers
(non_trainable_variables
regularization_losses
)layer_regularization_losses
*layer_metrics
trainable_variables
	variables
 

0
1

0
1
?
+metrics

,layers
-non_trainable_variables
regularization_losses
.layer_regularization_losses
/layer_metrics
trainable_variables
	variables
 

0
1
 
 
 
 
 
 
?
0metrics

1layers
2non_trainable_variables
"regularization_losses
3layer_regularization_losses
4layer_metrics
#trainable_variables
$	variables
 

0
 
 
 
 
 
 
 
 
 
 
 
 
 
?
serving_default_input_1Placeholder*/
_output_shapes
:?????????``*
dtype0*$
shape:?????????``
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dense/kernel
dense/biasConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? */
f*R(
&__inference_signature_wrapper_40329061
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpConst_1*
Tin
2*
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
GPU 2J 8? **
f%R#
!__inference__traced_save_40329143
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/bias*
Tin
2*
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
GPU 2J 8? *-
f(R&
$__inference__traced_restore_40329159־
?
F
*__inference_flatten_layer_call_fn_40329107

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_403289562
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????``:W S
/
_output_shapes
:?????????``
 
_user_specified_nameinputs
?

?
C__inference_dense_layer_call_and_return_conditional_losses_40329102

inputs2
matmul_readvariableop_resource:
??-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
a
E__inference_flatten_layer_call_and_return_conditional_losses_40329113

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? l  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????``:W S
/
_output_shapes
:?????????``
 
_user_specified_nameinputs
?
?
!__inference__traced_save_40329143
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop
savev2_const_1

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableopsavev2_const_1"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
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

identity_1Identity_1:output:0*)
_input_shapes
: :
??:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??: 

_output_shapes
::

_output_shapes
: 
?
K
4__inference_feature_extractor_layer_call_fn_40329071
x
identity?
PartitionedCallPartitionedCallx*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_feature_extractor_layer_call_and_return_conditional_losses_403289592
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????``:R N
/
_output_shapes
:?????????``

_user_specified_namex
?
?
L__inference_policy_network_layer_call_and_return_conditional_losses_40329003
input_1"
dense_40328994:
??
dense_40328996:
identity	??dense/StatefulPartitionedCall?
!feature_extractor/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_feature_extractor_layer_call_and_return_conditional_losses_403289592#
!feature_extractor/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall*feature_extractor/PartitionedCall:output:0dense_40328994dense_40328996*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_403289932
dense/StatefulPartitionedCall?
#categorical/Multinomial/num_samplesConst*
_output_shapes
: *
dtype0*
value	B :2%
#categorical/Multinomial/num_samples?
categorical/MultinomialMultinomial&dense/StatefulPartitionedCall:output:0,categorical/Multinomial/num_samples:output:0*
T0*'
_output_shapes
:?????????2
categorical/Multinomial?
SqueezeSqueeze categorical/Multinomial:output:0*
T0	*#
_output_shapes
:?????????*
squeeze_dims

?????????2	
Squeezeg
IdentityIdentitySqueeze:output:0^NoOp*
T0	*#
_output_shapes
:?????????2

Identityn
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????``: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:X T
/
_output_shapes
:?????????``
!
_user_specified_name	input_1
?
?
(__inference_dense_layer_call_fn_40329092

inputs
unknown:
??
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_403289932
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
f
O__inference_feature_extractor_layer_call_and_return_conditional_losses_40328959
x
identity?
flatten/PartitionedCallPartitionedCallx*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_403289562
flatten/PartitionedCallv
IdentityIdentity flatten/PartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????``:R N
/
_output_shapes
:?????????``

_user_specified_namex
?
f
O__inference_feature_extractor_layer_call_and_return_conditional_losses_40329077
x
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? l  2
flatten/Const|
flatten/ReshapeReshapexflatten/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten/Reshapen
IdentityIdentityflatten/Reshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????``:R N
/
_output_shapes
:?????????``

_user_specified_namex
?
?
&__inference_signature_wrapper_40329061
input_1
unknown:
??
	unknown_0:
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__wrapped_model_403289432
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????``: : :22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????``
!
_user_specified_name	input_1:$ 

_output_shapes

:
?
?
(__inference_agent_layer_call_fn_40329048
input_1
unknown:
??
	unknown_0:
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_agent_layer_call_and_return_conditional_losses_403290362
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????``: : :22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????``
!
_user_specified_name	input_1:$ 

_output_shapes

:
?

?
C__inference_dense_layer_call_and_return_conditional_losses_40328993

inputs2
matmul_readvariableop_resource:
??-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
1__inference_policy_network_layer_call_fn_40329013
input_1
unknown:
??
	unknown_0:
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0*
Tin
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_policy_network_layer_call_and_return_conditional_losses_403290032
StatefulPartitionedCallw
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*#
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????``: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????``
!
_user_specified_name	input_1
?
?
$__inference__traced_restore_40329159
file_prefix1
assignvariableop_dense_kernel:
??+
assignvariableop_1_dense_bias:

identity_3??AssignVariableOp?AssignVariableOp_1?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0* 
_output_shapes
:::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_2Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_2c

Identity_3IdentityIdentity_2:output:0^NoOp_1*
T0*
_output_shapes
: 2

Identity_3z
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"!

identity_3Identity_3:output:0*
_input_shapes
: : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
l
O__inference_feature_extractor_layer_call_and_return_conditional_losses_40329083
input_1
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? l  2
flatten/Const?
flatten/ReshapeReshapeinput_1flatten/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten/Reshapen
IdentityIdentityflatten/Reshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????``:X T
/
_output_shapes
:?????????``
!
_user_specified_name	input_1
?
Q
4__inference_feature_extractor_layer_call_fn_40329066
input_1
identity?
PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_feature_extractor_layer_call_and_return_conditional_losses_403289592
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????``:X T
/
_output_shapes
:?????????``
!
_user_specified_name	input_1
?
a
E__inference_flatten_layer_call_and_return_conditional_losses_40328956

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? l  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????``:W S
/
_output_shapes
:?????????``
 
_user_specified_nameinputs
?
?
C__inference_agent_layer_call_and_return_conditional_losses_40329036
input_1+
policy_network_40329027:
??%
policy_network_40329029:
gatherv2_params
identity??&policy_network/StatefulPartitionedCall?
&policy_network/StatefulPartitionedCallStatefulPartitionedCallinput_1policy_network_40329027policy_network_40329029*
Tin
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_policy_network_layer_call_and_return_conditional_losses_403290032(
&policy_network/StatefulPartitionedCall`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axis?
GatherV2GatherV2gatherv2_params/policy_network/StatefulPartitionedCall:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2

GatherV2l
IdentityIdentityGatherV2:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityw
NoOpNoOp'^policy_network/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????``: : :2P
&policy_network/StatefulPartitionedCall&policy_network/StatefulPartitionedCall:X T
/
_output_shapes
:?????????``
!
_user_specified_name	input_1:$ 

_output_shapes

:
?
?
#__inference__wrapped_model_40328943
input_1M
9agent_policy_network_dense_matmul_readvariableop_resource:
??H
:agent_policy_network_dense_biasadd_readvariableop_resource:
agent_gatherv2_params
identity??1agent/policy_network/dense/BiasAdd/ReadVariableOp?0agent/policy_network/dense/MatMul/ReadVariableOp?
4agent/policy_network/feature_extractor/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? l  26
4agent/policy_network/feature_extractor/flatten/Const?
6agent/policy_network/feature_extractor/flatten/ReshapeReshapeinput_1=agent/policy_network/feature_extractor/flatten/Const:output:0*
T0*)
_output_shapes
:???????????28
6agent/policy_network/feature_extractor/flatten/Reshape?
0agent/policy_network/dense/MatMul/ReadVariableOpReadVariableOp9agent_policy_network_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0agent/policy_network/dense/MatMul/ReadVariableOp?
!agent/policy_network/dense/MatMulMatMul?agent/policy_network/feature_extractor/flatten/Reshape:output:08agent/policy_network/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!agent/policy_network/dense/MatMul?
1agent/policy_network/dense/BiasAdd/ReadVariableOpReadVariableOp:agent_policy_network_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1agent/policy_network/dense/BiasAdd/ReadVariableOp?
"agent/policy_network/dense/BiasAddBiasAdd+agent/policy_network/dense/MatMul:product:09agent/policy_network/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2$
"agent/policy_network/dense/BiasAdd?
8agent/policy_network/categorical/Multinomial/num_samplesConst*
_output_shapes
: *
dtype0*
value	B :2:
8agent/policy_network/categorical/Multinomial/num_samples?
,agent/policy_network/categorical/MultinomialMultinomial+agent/policy_network/dense/BiasAdd:output:0Aagent/policy_network/categorical/Multinomial/num_samples:output:0*
T0*'
_output_shapes
:?????????2.
,agent/policy_network/categorical/Multinomial?
agent/policy_network/SqueezeSqueeze5agent/policy_network/categorical/Multinomial:output:0*
T0	*#
_output_shapes
:?????????*
squeeze_dims

?????????2
agent/policy_network/Squeezel
agent/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
agent/GatherV2/axis?
agent/GatherV2GatherV2agent_gatherv2_params%agent/policy_network/Squeeze:output:0agent/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????2
agent/GatherV2r
IdentityIdentityagent/GatherV2:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp2^agent/policy_network/dense/BiasAdd/ReadVariableOp1^agent/policy_network/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????``: : :2f
1agent/policy_network/dense/BiasAdd/ReadVariableOp1agent/policy_network/dense/BiasAdd/ReadVariableOp2d
0agent/policy_network/dense/MatMul/ReadVariableOp0agent/policy_network/dense/MatMul/ReadVariableOp:X T
/
_output_shapes
:?????????``
!
_user_specified_name	input_1:$ 

_output_shapes

:"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
C
input_18
serving_default_input_1:0?????????``<
output_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?I
?
policy_network
regularization_losses
trainable_variables
	variables
	keras_api

signatures
5__call__
6_default_save_signature
*7&call_and_return_all_conditional_losses"
_tf_keras_model
?
feature_extractor
	dense
	regularization_losses

trainable_variables
	variables
	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_model
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
metrics

layers
non_trainable_variables
regularization_losses
layer_regularization_losses
layer_metrics
trainable_variables
	variables
5__call__
6_default_save_signature
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
,
:serving_default"
signature_map
?
flatten
regularization_losses
trainable_variables
	variables
	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_model
?

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
=__call__
*>&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
metrics

layers
non_trainable_variables
	regularization_losses
 layer_regularization_losses
!layer_metrics

trainable_variables
	variables
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
 :
??2dense/kernel
:2
dense/bias
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?
"regularization_losses
#trainable_variables
$	variables
%	keras_api
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
&metrics

'layers
(non_trainable_variables
regularization_losses
)layer_regularization_losses
*layer_metrics
trainable_variables
	variables
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
+metrics

,layers
-non_trainable_variables
regularization_losses
.layer_regularization_losses
/layer_metrics
trainable_variables
	variables
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
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
?
0metrics

1layers
2non_trainable_variables
"regularization_losses
3layer_regularization_losses
4layer_metrics
#trainable_variables
$	variables
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
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
?2?
(__inference_agent_layer_call_fn_40329048?
???
FullArgSpec"
args?
jself
jobservation
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *.?+
)?&
input_1?????????``
?2?
#__inference__wrapped_model_40328943?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *.?+
)?&
input_1?????????``
?2?
C__inference_agent_layer_call_and_return_conditional_losses_40329036?
???
FullArgSpec"
args?
jself
jobservation
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *.?+
)?&
input_1?????????``
?2?
1__inference_policy_network_layer_call_fn_40329013?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *.?+
)?&
input_1?????????``
?2?
L__inference_policy_network_layer_call_and_return_conditional_losses_40329003?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *.?+
)?&
input_1?????????``
?B?
&__inference_signature_wrapper_40329061input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
4__inference_feature_extractor_layer_call_fn_40329066
4__inference_feature_extractor_layer_call_fn_40329071?
???
FullArgSpec)
args!?
jself
jx
jsample_action
varargs
 
varkw
 
defaults?
p

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
O__inference_feature_extractor_layer_call_and_return_conditional_losses_40329077
O__inference_feature_extractor_layer_call_and_return_conditional_losses_40329083?
???
FullArgSpec)
args!?
jself
jx
jsample_action
varargs
 
varkw
 
defaults?
p

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_layer_call_fn_40329092?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_layer_call_and_return_conditional_losses_40329102?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_flatten_layer_call_fn_40329107?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_flatten_layer_call_and_return_conditional_losses_40329113?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
	J
Const?
#__inference__wrapped_model_40328943tA8?5
.?+
)?&
input_1?????????``
? "3?0
.
output_1"?
output_1??????????
C__inference_agent_layer_call_and_return_conditional_losses_40329036fA8?5
.?+
)?&
input_1?????????``
? "%?"
?
0?????????
? ?
(__inference_agent_layer_call_fn_40329048YA8?5
.?+
)?&
input_1?????????``
? "???????????
C__inference_dense_layer_call_and_return_conditional_losses_40329102^1?.
'?$
"?
inputs???????????
? "%?"
?
0?????????
? }
(__inference_dense_layer_call_fn_40329092Q1?.
'?$
"?
inputs???????????
? "???????????
O__inference_feature_extractor_layer_call_and_return_conditional_losses_40329077a6?3
,?)
#? 
x?????????``
p
? "'?$
?
0???????????
? ?
O__inference_feature_extractor_layer_call_and_return_conditional_losses_40329083g<?9
2?/
)?&
input_1?????????``
p
? "'?$
?
0???????????
? ?
4__inference_feature_extractor_layer_call_fn_40329066Z<?9
2?/
)?&
input_1?????????``
p
? "?????????????
4__inference_feature_extractor_layer_call_fn_40329071T6?3
,?)
#? 
x?????????``
p
? "?????????????
E__inference_flatten_layer_call_and_return_conditional_losses_40329113b7?4
-?*
(?%
inputs?????????``
? "'?$
?
0???????????
? ?
*__inference_flatten_layer_call_fn_40329107U7?4
-?*
(?%
inputs?????????``
? "?????????????
L__inference_policy_network_layer_call_and_return_conditional_losses_40329003a8?5
.?+
)?&
input_1?????????``
? "!?
?
0?????????	
? ?
1__inference_policy_network_layer_call_fn_40329013T8?5
.?+
)?&
input_1?????????``
? "??????????	?
&__inference_signature_wrapper_40329061AC?@
? 
9?6
4
input_1)?&
input_1?????????``"3?0
.
output_1"?
output_1?????????