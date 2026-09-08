function data()

    return {
	    checkEnabledFn = function(capturedParams, params)
            return params[capturedParams.key] > capturedParams.threshold and "Enabled" or "Disabled"
        end,
    }

end
