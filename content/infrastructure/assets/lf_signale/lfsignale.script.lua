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
		local zPositionLf = 0
		local zPositionSignal = 0
		local yPosition = 0
		local yPositionLf = 0
		local speedNumber = 0
		local signalDistanceLf = 0
		local rotationValue = ""
		local LfValue = ""

		local kzNumber = tostring(params.mw_kennziffer * 10)


		if params.signaldistance_lf == 1 then
			signalDistanceLf = 0.01
		elseif params.signaldistance_lf == 2 then
			signalDistanceLf = -7.988
		end


		if params.mw_signal_position == 1 then
			if params.mw_licht == 1 then
				yPosition = 2.15
			else
				yPosition = 0
			end
		elseif params.mw_signal_position == 2 then
			if params.mw_licht == 1 then
				yPosition = -2.05
			else
				yPosition = -4.2
			end
		end



		if params.mw_sign_type == 1 then
			LfValue = "6"
		else
			LfValue = "7"
		end


		if params.mw_sign_type == 1 then
			if params.mw_licht == 1 then
				if params.mw_gedreht == 1 then
					rotationValue = "_unten"
				else
					rotationValue = ""
					zPositionLf = -0.2
				end
			else
				rotationValue = "_licht"
			end
		end


		if params.mw_licht == 2 then
			subconstruction.models[#subconstruction.models+1] = {
					id = "mast_licht.mdl",
					transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf, yPosition+2.1, 0.4, 1 },
				}
		end



		if params.mw_licht == 1 then
			subconstruction.models[#subconstruction.models+1] = {
					id = "lf_" .. LfValue .. "_kz_" .. kzNumber .. "" .. rotationValue .. ".mdl",
					transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf+xPosition, yPosition+yPositionLf-0.05, zPosition+zPositionSignal+zPositionLf+zPositionOffset2, 1 },
				}
		elseif params.mw_licht == 2 then
			subconstruction.models[#subconstruction.models+1] = {
					id = "lf_" .. LfValue .. "_kz_" .. kzNumber .. "" .. rotationValue .. ".mdl",
					transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf, yPosition+2.1, 0.39, 1 },
				}
		end


		if params.mw_pfr == 2 then
			if params.mw_pfl == 1 then
				subconstruction.models[#subconstruction.models+1] = {
						id = "pfeil_re.mdl",
						transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf+xPosition+0.09, yPosition+yPositionLf-0.05+2.155, 0.5+zPosition+zPositionSignal+zPositionLf+zPositionOffset2+0.16, 1 },
					}
			elseif params.mw_pfl == 2 then
				subconstruction.models[#subconstruction.models+1] = {
						id = "pfeil_re.mdl",
						transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf+xPosition+0.09, yPosition+yPositionLf-0.05+2.155, 0.5+zPosition+zPositionSignal+zPositionLf+zPositionOffset2+0.16+0.18, 1 },
					}
			end
		end


		if params.mw_pfl == 2 then
			subconstruction.models[#subconstruction.models+1] = {
					id = "pfeil_li.mdl",
					transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf+xPosition+0.09, yPosition+yPositionLf-0.05+2.155, 0.5+zPosition+zPositionSignal+zPositionLf+zPositionOffset2+0.16, 1 },
				}
		end


        if params.mw_mast == 2 then
            subconstruction.models[#subconstruction.models+1] = {
			    id = "mast_lf_6_7.mdl",
			    transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf+xPosition, yPosition-0.05, zPosition+zPositionOffset2, 1 },
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
