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
		local kzNumberLf = 10
		local signalDistanceLf1 = -7.988
		local rotationValue = 0
		local LfValue = ""

		local kzNumberLf = tostring(params.mw_kennziffer_lf * 10)


		if params.mw_signal_position == 1 then
			yPosition = -6.525
			rotationValue = 180
		end


		if params.mw_sign_type <= 3 then
			if params.mw_hoehe_lf1 == 3 then
				if params.mw_licht == 1 then
			subconstruction.models[#subconstruction.models+1] = {
					id = "lf_lampe_drg.mdl",
					transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf1, yPosition, 0.9, 1 },
				}
		elseif params.mw_licht == 2 then
			subconstruction.models[#subconstruction.models+1] = {
					id = "lf_lampe_drg_2.mdl",
					transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf1, yPosition, 0.9, 1 },
				}
		elseif params.mw_licht == 3 then
			subconstruction.models[#subconstruction.models+1] = {
					id = "lf_lampe_modern.mdl",
					transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf1, yPosition, 0.9, 1 },
				}
		end
	end


		if params.mw_hoehe_lf1 == 1 then
			subconstruction.models[#subconstruction.models+1] = {
					id = "mast_halter_niedrig.mdl",
					transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf1, 0, 1.06, 1 },
					--transf = transf.rotZYXTransl(transf.degToRad(rotationValue, .0, .0), vec3.new(signalDistanceLf1, 0, 1.06)),
				}
				yPosition = -1.02
				zPosition = -0.6
		elseif params.mw_hoehe_lf1 == 2 then
			subconstruction.models[#subconstruction.models+1] = {
					id = "mast_halter_hoch.mdl",
					transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf1, 0, 1.06, 1 },
					--transf = transf.rotZYXTransl(transf.degToRad(rotationValue, .0, .0), vec3.new(signalDistanceLf1, 0, 1)),
				}
		elseif params.mw_hoehe_lf1 == 3 then
			subconstruction.models[#subconstruction.models+1] = {
					id = "mast_halter_hoch_2.mdl",
					transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf1, 0, 1.06, 1 },
					--transf = transf.rotZYXTransl(transf.degToRad(rotationValue, .0, .0), vec3.new(signalDistanceLf1, 0, 1)),
				}
				zPosition = 0.75
		end
end



		if params.mw_sign_type == 1 then
			subconstruction.models[#subconstruction.models+1] = {
					id = "lf_1_kz_" .. kzNumberLf .. ".mdl",
					-- transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf1-0.05, yPosition+3.27, 0.05+zPosition, 1 },
					transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf1-0.0, yPosition+3.27, 0.05+zPosition, 1 },
				}
		elseif params.mw_sign_type == 2 then
			subconstruction.models[#subconstruction.models+1] = {
					id = "lf_2.mdl",
					transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf1, yPosition+3.27, 1.8+zPosition, 1 },
				}
		elseif params.mw_sign_type == 3 then
			subconstruction.models[#subconstruction.models+1] = {
					id = "lf_3.mdl",
					transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf1, yPosition+3.27, 1.8+zPosition, 1 },
				}
		elseif params.mw_sign_type == 4 then
			subconstruction.models[#subconstruction.models+1] = {
					id = "bausperre_rund.mdl",
					transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf1, 0.05, 0.5+0.4, 1 },
				}
		elseif params.mw_sign_type == 5 then
			subconstruction.models[#subconstruction.models+1] = {
					id = "bausperre_eckig.mdl",
					transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, signalDistanceLf1, 0.05, 0.5+0.4, 1 },
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
