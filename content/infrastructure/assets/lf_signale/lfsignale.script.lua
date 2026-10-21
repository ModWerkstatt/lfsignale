function data()
return {
	updateFn = function(captureParams, params)
		local result = { }
		local subconstruction = {}
		subconstruction.models = { }

		local xPosition = 0
		local yPosition = 0
		local zPosition = 0
        local zPositionArrow = 0.16
		local rotationValue = ""
		local LfValue = ""
        local hasLight = params.mw_lf_licht == 2
        local isLf6 = params.mw_lf_sign_type == 1
        local isTurned = params.mw_lf_gedreht == 2
        local isLeft = params.mw_lf_position == 1
        local statusArrow = params.mw_lf_arrow or 2
        local height = params.mw_lf_hoehe or 1

		local kzNumber = tostring(params.mw_lf_kennziffer * 10)


		if isLf6 then
			LfValue = "6"
    		if isLeft then
                if isTurned then
                    yPosition = -2.25
                else
                    yPosition = -4.3
                end
			    if hasLight then
				    yPosition = -2.15
			    else
				    yPosition = -2.15
			    end
		    else
                if isTurned then
    				yPosition = 2.25
                end
			    if hasLight then
				    yPosition = 2.15
			    else
				    yPosition = 2.2
			    end
		    end
		else
			LfValue = "7"
    		if isLeft then
                yPosition = yPosition-2.2
		    else
			    if hasLight then
				    yPosition = 2.15
			    else
				    yPosition = 2.2
			    end
		    end
		end


		if isLf6 then
			if hasLight then
				rotationValue = "_licht"
			else
				if isTurned then
					zPosition = -0.2
                    zPositionArrow = -0.6
                    if statusArrow == 4 then
                        zPositionArrow = zPositionArrow-0.18
                    end
				else
					rotationValue = "_unten"
				end
			end
		end

        -- height
        if height == 2 then
            zPosition = -0.9
        elseif height == 3 then
            zPosition = -1.6
        end


		if hasLight then
			subconstruction.models[#subconstruction.models+1] = {
			    id = "mast_licht.mdl",
				transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, yPosition, zPosition+0.4, 1 },
			}
		end



		if hasLight then            
			subconstruction.models[#subconstruction.models+1] = {
				id = "lf_" .. LfValue .. "_kz_" .. kzNumber .. "" .. rotationValue .. ".mdl",
				transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0.03, yPosition, zPosition+0.39, 1 },
			}
		else
			subconstruction.models[#subconstruction.models+1] = {
				id = "lf_" .. LfValue .. "_kz_" .. kzNumber .. "" .. rotationValue .. ".mdl",
				transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, xPosition, yPosition, zPosition, 1 },
			}
		end


		if statusArrow ~= 2 then
			if statusArrow == 3 then
				subconstruction.models[#subconstruction.models+1] = {
					id = "pfeil_re.mdl",
					transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, xPosition+0.09, yPosition+2.15, zPosition+zPositionArrow, 1 },
				}
			elseif statusArrow == 4 then
				subconstruction.models[#subconstruction.models+1] = {
					id = "pfeil_re.mdl",
					transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, xPosition+0.09, yPosition+2.15, zPosition+zPositionArrow+0.18, 1 },
				}
			end
		end


		if statusArrow == 1 or statusArrow == 4 then
			subconstruction.models[#subconstruction.models+1] = {
				id = "pfeil_li.mdl",
				transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, xPosition+0.09, yPosition+2.15, zPosition+zPositionArrow, 1 },
			}
		end


        if params.mw_lf_mast == 2 then
            subconstruction.models[#subconstruction.models+1] = {
			    id = "mast_lf_6_7.mdl",
			    transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, xPosition, yPosition, zPosition, 1 },
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
