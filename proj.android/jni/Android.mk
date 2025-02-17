LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

$(call import-add-path,$(LOCAL_PATH)/../../cocos2d)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/external)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/cocos)

LOCAL_MODULE := cocos2dcpp_shared

LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../Classes/GameMainScene.cpp \
                   ../../Classes/GameManager.cpp \
                   ../../Classes/GameStartScene.cpp \
                   ../../Classes/MissionInfoItem.cpp \
                   ../../Classes/SelectMissionScene.cpp \
                   ../../Classes/DAL/SqliteHelper.cpp \
                   ../../Classes/Control/PopLayer.cpp \
                   ../../Classes/Discard/MissionMenuItem.cpp \
                   ../../Classes/NewGameManiScene.cpp \
                   ../../sqlite/libSqlite/sqlite3.c \
                   ../../sqlite/libSqlite/shell.c



LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes	\
					$(LOCAL_PATH)/../../Classes/DAL	\
					$(LOCAL_PATH)/../../Classes/Discard	\
					$(LOCAL_PATH)/../../Classes/Control	\
					$(LOCAL_PATH)/../../sqlite/libSqlite \
					$(LOCAL_PATH)/../../cocos2d\extensions
                              
LOCAL_WHOLE_STATIC_LIBRARIES := cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_static

# LOCAL_WHOLE_STATIC_LIBRARIES += box2d_static
# LOCAL_WHOLE_STATIC_LIBRARIES += cocosbuilder_static
# LOCAL_WHOLE_STATIC_LIBRARIES += spine_static
# LOCAL_WHOLE_STATIC_LIBRARIES += cocostudio_static
# LOCAL_WHOLE_STATIC_LIBRARIES += cocos_network_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_extension_static


include $(BUILD_SHARED_LIBRARY)

$(call import-module,.)
$(call import-module,audio/android)

# $(call import-module,Box2D)
# $(call import-module,editor-support/cocosbuilder)
# $(call import-module,editor-support/spine)
# $(call import-module,editor-support/cocostudio)
# $(call import-module,network)
$(call import-module,extensions)
