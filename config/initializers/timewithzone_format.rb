class ActiveSupport::TimeWithZone
    def as_json(options = {})
        strftime('%m %d %Y, %H:%M')
    end
    def to_s
    	strftime('%m %d %Y, %H:%M')
    end
end