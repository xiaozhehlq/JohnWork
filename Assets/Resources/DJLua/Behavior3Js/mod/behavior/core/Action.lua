--
-- Author: yang jian 181269573@qq.com
-- Date: 2015-08-19 17:38:33
-- 

Action = BaseNode:new()
Action.category = YJBehavior_enumTable.action

function Action:tick(tick)
    return Status.SUCCESS
end

function Action:close(tick, status)

end