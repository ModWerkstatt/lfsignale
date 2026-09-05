function data()
return {
	updateFn = function(captureParams, params)
		local result = { }
		local subconstruction = {}
		subconstruction.models = { }
	--	result.groundFaces = { }

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

		kzNumber = tostring(params.kennziffer * 10)

		if params.offset_z == 50 then
			zPositionOffset2 = "0"
		else
			zPositionOffset2 = tostring((params.offset_z - 50)*0.08)
		end


	if params.sign_type == 1 then
		if params.snapping_type == 1 then
			if params.hoehe == 1 then
				zPosition = 0.4
			elseif params.hoehe == 1 then
				zPosition = 0
			elseif params.hoehe == 2 then
				if params.gedreht == 0 then
				zPosition = -1.05
				else
				zPosition = -1.05
				end
			elseif params.hoehe == 3 then
				if params.gedreht == 0 then
				zPosition = -1.25
				else
				zPosition = -1.25
				end
			end
		elseif params.snapping_type == 1 then
			zPosition = 0
			xPosition = 0.075
			if params.signal_position == 0 then
				yPositionLf = 0.1
				else
				yPositionLf = -0.1
				end
			if params.snapping_hoehe == 1 then
				zPositionSignal = 0.65
			elseif params.snapping_hoehe == 2 then
				zPositionSignal = 1.2
			elseif params.snapping_hoehe == 3 then
				zPositionSignal = 1.5
			elseif params.snapping_hoehe == 4 then
				zPositionSignal = 1.6
			elseif params.snapping_hoehe == 5 then
				zPositionSignal = 2.8
			end
		elseif params.snapping_type == 2 then
			zPosition = 0
			xPosition = 0.075
			if params.signal_position == 1 then
				yPositionLf = 0.1
				else
				yPositionLf = -0.1
				end
			if params.snapping_hoehe == 1 then
				zPositionSignal = 0.65
			elseif params.snapping_hoehe == 2 then
				zPositionSignal = 1.2
			elseif params.snapping_hoehe == 3 then
				zPositionSignal = 1.5
			elseif params.snapping_hoehe == 4 then
				zPositionSignal = 1.6
			elseif params.snapping_hoehe == 5 then
				zPositionSignal = 2.8
			end
		elseif params.snapping_type == 4 then
			zPosition = 0
			xPosition = 0.075
			if params.signal_position == 1 then
				yPositionLf = 0.05
				else
				yPositionLf = -0.05
				end
			if params.snapping_hoehe == 1 then
				zPositionSignal = 1.1
			elseif params.snapping_hoehe == 2 then
				zPositionSignal = 2.2
			elseif params.snapping_hoehe == 3 then
				zPositionSignal = 1.9
			elseif params.snapping_hoehe == 4 then
				zPositionSignal = 2.1
			elseif params.snapping_hoehe == 5 then
				zPositionSignal = 1.7
			end
		elseif params.snapping_type == 5 then
			zPosition = 0
			xPosition = 0.15
			yPositionLf = 0.4
			if params.snapping_hoehe == 01 then
				zPositionSignal = -0.4
			elseif params.snapping_hoehe == 2 then
				zPositionSignal = 1.65
			elseif params.snapping_hoehe == 3 then
				zPositionSignal = 2.10
			elseif params.snapping_hoehe == 4 then
				zPositionSignal = 1.7
			elseif params.snapping_hoehe == 5 then
				zPositionSignal = 1.7
			end
		end

	elseif params.sign_type == 2 then
		if params.snapping_type == 1 then
			if params.hoehe == 1 then
				zPosition = 0.4
			elseif params.hoehe == 2 then
				zPosition = 0
			elseif params.hoehe == 3then
				if params.gedreht == 1 then
				zPosition = -1.25
				else
				zPosition = -1.25
				end
			elseif params.hoehe == 4 then
				if params.gedreht == 1 then
				zPosition = -1.65
				else
				zPosition = -1.65
				end
			end
		elseif params.snapping_type == 2 then
			zPosition = 0
			xPosition = 0.075
			if params.signal_position == 1 then
				yPositionLf = 0.1
				else
				yPositionLf = -0.1
				end
			if params.snapping_hoehe == 1 then
				zPositionSignal = 0.65
			elseif params.snapping_hoehe == 2 then
				zPositionSignal = 1.2
			elseif params.snapping_hoehe == 3 then
				zPositionSignal = 1.5
			elseif params.snapping_hoehe == 4 then
				zPositionSignal = 1.6
			elseif params.snapping_hoehe == 5 then
				zPositionSignal = 2.8
			end
		elseif params.snapping_type == 4 then
			zPosition = 0
			xPosition = 0.075
			if params.signal_position == 1 then
				yPositionLf = 0.1
				else
				yPositionLf = -0.1
				end
			if params.snapping_hoehe == 1 then
				zPositionSignal = 0.65
			elseif params.snapping_hoehe == 2 then
				zPositionSignal = 1.2
			elseif params.snapping_hoehe == 3 then
				zPositionSignal = 1.5
			elseif params.snapping_hoehe == 4 then
				zPositionSignal = 1.6
			elseif params.snapping_hoehe == 5 then
				zPositionSignal = 2.8
			end
		elseif params.snapping_type == 4 then
			zPosition = 0
			xPosition = 0.075
			if params.signal_position == 1 then
				yPositionLf = 0.05
				else
				yPositionLf = -0.05
				end
			if params.snapping_hoehe == 1 then
				zPositionSignal = 1.1
			elseif params.snapping_hoehe == 2 then
				zPositionSignal = 2.1
			elseif params.snapping_hoehe == 3 then
				zPositionSignal = 1.6
			elseif params.snapping_hoehe == 4 then
				zPositionSignal = 2.1
			elseif params.snapping_hoehe == 5 then
				zPositionSignal = 1.7
			end
		elseif params.snapping_type == 5 then
			zPosition = 0
			xPosition = 0.15
			yPositionLf = 0.4
			if params.snapping_hoehe == 1 then
				zPositionSignal = -0.4
			elseif params.snapping_hoehe == 2 then
				zPositionSignal = 1.65
			elseif params.snapping_hoehe == 3 then
				zPositionSignal = 2.10
			elseif params.snapping_hoehe == 4 then
				zPositionSignal = 1.7
			elseif params.snapping_hoehe == 5 then
				zPositionSignal = 1.7
			end
		end
	end


		if params.signaldistance_lf == 1 then
			signalDistanceLf = 0.01
		elseif params.signaldistance_lf == 2 then
			signalDistanceLf = -7.988
		end


		if params.signal_position == 1 then
			if params.licht == 1 then
				yPosition = 2.15
			else
				yPosition = 0
			end
		elseif params.signal_position == 2 then
			if params.licht == 1 then
				yPosition = -2.05
			else
				yPosition = -4.2
			end
		end



		if params.sign_type == 1 then
			LfValue = "6"
		else
			LfValue = "7"
		end


		if params.sign_type == 1 then
			if params.licht == 1 then
				if params.gedreht == 1 then
					rotationValue = "_unten"
				else
					rotationValue = ""
					zPositionLf = -0.2
				end
			else
				rotationValue = "_licht"
			end
		end

		if params.mast == 2 then
			if params.snapping_type == 1 then
				if params.licht == 1 then
					subconstruction.models[#subconstruction.models+1] = {
							id = "mast_lf_6_7.mdl",
							transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf, yPosition-0.05, 0.4+zPosition+zPositionOffset2, 1 },
						}
				else
				end
			end
		end


				if params.licht == 2 then
					subconstruction.models[#subconstruction.models+1] = {
							id = "mast_licht.mdl",
							transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf, yPosition+2.1, 0.4, 1 },
						}
				end



		if params.licht == 1 then
			subconstruction.models[#subconstruction.models+1] = {
					id = "lf_"..LfValue.."_kz_"..kzNumber..""..rotationValue..".mdl",
					transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf+xPosition, yPosition+yPositionLf-0.05, 0.5+zPosition+zPositionSignal+zPositionLf+zPositionOffset2, 1 },
				}
		elseif params.licht == 2 then
			subconstruction.models[#subconstruction.models+1] = {
					id = "lf_"..LfValue.."_kz_"..kzNumber..""..rotationValue..".mdl",
					transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf, yPosition+2.1, 0.39, 1 },
				}
		end

		if params.pfr == 2 then
			if params.pfl == 1 then
				subconstruction.models[#subconstruction.models+1] = {
						id = "pfeil_re.mdl",
						transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf+xPosition+0.09, yPosition+yPositionLf-0.05+2.155, 0.5+zPosition+zPositionSignal+zPositionLf+zPositionOffset2+0.16, 1 },
					}
			elseif params.pfl == 2 then
				subconstruction.models[#subconstruction.models+1] = {
						id = "pfeil_re.mdl",
						transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf+xPosition+0.09, yPosition+yPositionLf-0.05+2.155, 0.5+zPosition+zPositionSignal+zPositionLf+zPositionOffset2+0.16+0.18, 1 },
					}
			end
		end

		if params.pfl == 2 then
			subconstruction.models[#subconstruction.models+1] = {
					id = "pfeil_li.mdl",
					transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf+xPosition+0.09, yPosition+yPositionLf-0.05+2.155, 0.5+zPosition+zPositionSignal+zPositionLf+zPositionOffset2+0.16, 1 },
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
