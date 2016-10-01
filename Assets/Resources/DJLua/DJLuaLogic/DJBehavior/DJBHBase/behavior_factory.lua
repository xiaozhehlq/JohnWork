--
-- Des: 行为树的工厂类
-- Author: John
-- Date: 2016年9月19日 星期一 农历八月十九
--

require "sprite_base"

behavior_factory = Class.define("DJBehaviorTreeManager")

----------------------------------------------------------------------------------------------
---- 表内变量
----------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------
---- 继承函数
----------------------------------------------------------------------------------------------

-- 单例
function behavior_factory:get_instance()
    if not self.m_instance then
        self.m_instance = Class.new(behavior_factory)
    end
    return self.m_instance
end

-- 构造
function behavior_factory:_ctor()

    -- 初始化内部变量
    behavior_factory.treeDict = { }

end

----------------------------------------------------------------------------------------------
---- 内部逻辑
----------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------
---- 外部接口
----------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------
---- 通信接口
----------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------
---- 工厂
----------------------------------------------------------------------------------------------

-- 得到一个新的感知器
-- _perceptionName: 感知器名字
function behavior_factory:getPerception(_perceptionName)
    if _perceptionName == "P_Health" then
        return Class.new(perception_health)
        -- 健康感知器
    elseif _perceptionName == "P_Radar" then
        return Class.new(perception_radar)
        -- 雷达感知器
    end
    assert(true)
    error("尝试访问未知的感知器：" .. _perceptionName)
    return nil
end