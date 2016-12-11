LOCAL_PATH:= $(call my-dir)

common_src_files := \
	src/assertion.c \
	src/avrule_block.c \
	src/avtab.c \
	src/boolean_record.c \
	src/booleans.c \
	src/conditional.c \
	src/constraint.c \
	src/context.c \
	src/context_record.c \
	src/debug.c \
	src/ebitmap.c \
	src/expand.c \
	src/genbools.c \
	src/genusers.c \
	src/handle.c \
	src/hashtab.c \
	src/hierarchy.c \
	src/iface_record.c \
	src/interfaces.c \
	src/link.c \
	src/mls.c \
	src/module.c \
	src/module_to_cil.c \
	src/node_record.c \
	src/nodes.c \
	src/polcaps.c \
	src/policydb.c \
	src/policydb_convert.c \
	src/policydb_public.c \
	src/port_record.c \
	src/ports.c \
	src/roles.c \
	src/services.c \
	src/sidtab.c \
	src/symtab.c \
	src/user_record.c \
	src/users.c \
	src/util.c \
	src/write.c

cil_src_files := \
	cil/src/cil_binary.c \
	cil/src/cil_build_ast.c \
	cil/src/cil.c \
	cil/src/cil_copy_ast.c \
	cil/src/cil_find.c \
	cil/src/cil_fqn.c \
	cil/src/cil_lexer.l \
	cil/src/cil_list.c \
	cil/src/cil_log.c \
	cil/src/cil_mem.c \
	cil/src/cil_parser.c \
	cil/src/cil_policy.c \
	cil/src/cil_post.c \
	cil/src/cil_reset_ast.c \
	cil/src/cil_resolve_ast.c \
	cil/src/cil_stack.c \
	cil/src/cil_strpool.c \
	cil/src/cil_symtab.c \
	cil/src/cil_tree.c \
	cil/src/cil_verify.c

common_cflags := \
	-Wall -W -Wundef \
	-Wshadow -Wmissing-noreturn \
	-Wmissing-format-attribute

common_includes := \
	$(LOCAL_PATH)/include/ \
	$(LOCAL_PATH)/src/ \
	$(LOCAL_PATH)/cil/include/ \
	$(LOCAL_PATH)/cil/src/ \

include $(CLEAR_VARS)
LOCAL_MODULE := libsepol-N
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_CFLAGS := $(common_cflags)
LOCAL_CPPFLAGS := $(yacc_flags)
LOCAL_SRC_FILES := $(common_src_files) $(cil_src_files)
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/include
include $(BUILD_HOST_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libsepol-N
LOCAL_MODULE_TAGES := optional
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_CFLAGS := $(common_cflags)
LOCAL_SRC_FILES := $(common_src_files)
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/include
include $(BUILD_STATIC_LIBRARY)
