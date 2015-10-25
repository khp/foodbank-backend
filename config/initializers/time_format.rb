class Time
    def as_json(options = {})
        strftime('%H:%M')
    end
end
