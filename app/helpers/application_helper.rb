module ApplicationHelper

    def transform_priority(input_priority)
        if input_priority.eql?("hight")
            "高"    
        elsif input_priority.eql?("hight")
            "中"
        else
            "低"
        end               
    end

    def transform_status(input_status)
        if input_status.eql?("processing")
            "處理中"
        elsif input_status.eql?("pending")
            "待處理"
        else
            "已解決"
        end             
    end    
end
