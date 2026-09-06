function data()

return {
	updateFn = function(captureParams, params)

		local result = { }
		local subconstruction = {}
		subconstruction.models = { }

		local xPosition = 0
		local zPosition = 0
		local zPositionOffset1 = 0
		local zPositionOffset2 = 0
		local yPosition = 0
		local yPositionEl = 0
		local zPositionSignal = 0
		local signalDistanceEl = 0
		local versionValue = ""
		local ElValue = ""


		if params.signaldistanceEl == 1 then
			signalDistanceEl = 0.01
		elseif params.signaldistanceEl == 2 then
			signalDistanceEl = -7.988
		end


		if params.mw_signal_position == 1 then
			yPosition = 2.1
		elseif params.mw_signal_position == 2 then
			yPosition = -2.0
		end


		if params.mw_hoehe == 1 then
			zPosition = 0.4
		elseif params.mw_hoehe == 2 then
			zPosition = 0
		elseif params.mw_hoehe == 3 then
			zPosition = -1.25
		elseif params.mw_hoehe == 4 then
			zPosition = -1.55
		end


		if params.mw_sign_type == 1 then
			ElValue = "1"
		elseif params.mw_sign_type == 2 then
			ElValue = "1v"
		elseif params.mw_sign_type == 3 then
			ElValue = "2"
		elseif params.mw_sign_type == 4 then
			ElValue = "3"
		elseif params.mw_sign_type == 5 then
			ElValue = "4"
		elseif params.mw_sign_type == 6 then
			ElValue = "5"
		elseif params.mw_sign_type == 7 then
			ElValue = "6"
		elseif params.mw_sign_type == 8 then
			ElValue = "7"
		elseif params.mw_sign_type == 9 then
			ElValue = "15kv"
		elseif params.mw_sign_type == 10 then
			ElValue = "gleich"
		end


		if params.mw_version == 2 then
			versionValue = "_alt"
		end


	    if params.mw_sign_type <= 10 then
		    if params.mw_pfeil == 2 then
			    subconstruction.models[#subconstruction.models+1] = {
					    id = "el_pfeil_l.mdl",
					    transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceEl-0.041+xPosition, yPosition+yPositionEl, 0.5+zPosition+zPositionSignal+zPositionOffset2+0.4, 1 },
				    }
		    elseif params.mw_pfeil == 3 then
			    subconstruction.models[#subconstruction.models+1] = {
					    id = "el_pfeil_r.mdl",
					    transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceEl-0.041+xPosition, yPosition+yPositionEl, 0.5+zPosition+zPositionSignal+zPositionOffset2+0.4, 1 },
				    }
		    elseif params.mw_pfeil == 4 then
			    subconstruction.models[#subconstruction.models+1] = {
					    id = "el_pfeildoppelt.mdl",
					    transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceEl-0.041+xPosition, yPosition+yPositionEl, 0.5+zPosition+zPositionSignal+zPositionOffset2+0.4, 1 },
				    }
		    elseif params.mw_pfeil == 5 then
			    subconstruction.models[#subconstruction.models+1] = {
					    id = "el_pfeil_g.mdl",
					    transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceEl-0.041+xPosition, yPosition+yPositionEl, 0.5+zPosition+zPositionSignal+zPositionOffset2+0.4, 1 },
				    }
		    end
			subconstruction.models[#subconstruction.models+1] = {
					id = "el_"..ElValue..""..versionValue..".mdl",
					transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceEl-0.041+xPosition, yPosition+yPositionEl, 0.5+zPosition+zPositionSignal+zPositionOffset2, 1 },
				}
	    elseif params.mw_sign_type == 11 then
		    if params.mw_signal_position == 1 then
			    subconstruction.models[#subconstruction.models+1] = {
					    id = "el_schutz_offen.mdl",
					    transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceEl, 2.5, 0.5+0.4, 1 },
				    }
		    else
			    subconstruction.models[#subconstruction.models+1] = {
					    id = "el_schutz_offen.mdl",
					    transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceEl, -2.5, 0.5+0.4, 1 },
				    }
		    end
	    elseif params.mw_sign_type == 12 then
		    if params.mw_signal_position == 1 then
			    subconstruction.models[#subconstruction.models+1] = {
					    id = "el_schutz_zu.mdl",
					    transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceEl, 2.5, 0.5+0.4, 1 },
				    }
		    else
			    subconstruction.models[#subconstruction.models+1] = {
					    id = "el_schutz_zu.mdl",
					    transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceEl, -2.5, 0.5+0.4, 1 },
				    }
		    end
	    elseif params.mw_sign_type == 13 then
		    if params.mw_signal_position == 1 then
			    subconstruction.models[#subconstruction.models+1] = {
					    id = "el_schutz.mdl",
					    transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceEl, 2.5, 0.5+0.4, 1 },
				    }
		    else
			    subconstruction.models[#subconstruction.models+1] = {
					    id = "el_schutz.mdl",
					    transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceEl, -2.5, 0.5+0.4, 1 },
				    }
		    end
	    end

        if params.mw_mast == 2 then
            subconstruction.models[#subconstruction.models+1] = {
			    id = "mast_lf_6_7.mdl",
			    transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceEl+xPosition, yPosition, 0.4+zPosition+zPositionOffset2, 1 },
		    }
        end

	    subconstruction.terrainAlignmentLists = {
            {
                type = "EQUAL",
          		faces =  { }
			}
		}

        result.snapPoint = {
            transportModes = { "TRAIN", "ELECTRIC_TRAIN" },
            allowSnapToBaseEdgeEnds = true,
            allowSnapToMesh = true,
        }

        result.subconstructions = {
	        subconstruction
        }

		return result
	end
}

end
