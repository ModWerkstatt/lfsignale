function data()

    return {
	    checkEnabledFn = function(capturedParams, params)
            return params[capturedParams.key] == capturedParams.threshold and "Hidden" or "Enabled"
        end,
    }

end
