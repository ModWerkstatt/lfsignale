function data()

return {
	updateFn = function(captureParams, params)

		local result = { }
		local subconstruction = {}
		subconstruction.models = { }

		local yPosition = 2.2125
		local zPosition = 0
		local kzNumberLf = tostring(params.mw_kennziffer_lf * 10)
        local scaleValue = 1


		if params.mw_signal_position == 1 then
            scaleValue = scaleValue * -1
		end


		if params.mw_sign_type <= 3 then
		    if params.mw_hoehe_lf1 == 1 then
			    subconstruction.models[#subconstruction.models+1] = {
				    id = "mast_halter_niedrig.mdl",
				    transf = { scaleValue, 0, 0, 0, 0, scaleValue, 0, 0, 0, 0, 1, 0, 0, -0.04, 0, 1 },
			    }
                zPosition = -1.6
                yPosition = 2.2125
		    elseif params.mw_hoehe_lf1 == 2 then
			    subconstruction.models[#subconstruction.models+1] = {
				    id = "mast_halter_standard.mdl",
				    transf = { scaleValue, 0, 0, 0, 0, scaleValue, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1 },
			    }
                zPosition = -1.0
                yPosition = 3.275
		    elseif params.mw_hoehe_lf1 == 3 then
			    subconstruction.models[#subconstruction.models+1] = {
				    id = "mast_halter_hoch.mdl",
				    transf = { scaleValue, 0, 0, 0, 0, scaleValue, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1 },
			    }
                zPosition = -0.3
                yPosition = 3.275
		    end
        end


        if params.mw_signal_position == 1 then
			yPosition = yPosition * -1
		end


        if params.mw_sign_type == 1 and params.mw_licht > 1 then
			if params.mw_hoehe_lf1 == 1 then
		        subconstruction.models[#subconstruction.models+1] = {
			        id = "mast_halter_niedrig_licht.mdl",
			        transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, params.mw_offset_licht, 0, 0, 1 },
		        }
            elseif params.mw_hoehe_lf1 == 2 then
		        subconstruction.models[#subconstruction.models+1] = {
			        id = "mast_halter_standard_licht.mdl",
			        transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, params.mw_offset_licht, 0, 0, 1 },
		        }
            elseif params.mw_hoehe_lf1 == 3 then
    			if params.mw_licht == 2 then
		            subconstruction.models[#subconstruction.models+1] = {
				        id = "lf_lampe_drg.mdl",
				        transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 1 },
			        }
	            elseif params.mw_licht == 3 then
		            subconstruction.models[#subconstruction.models+1] = {
		                id = "lf_lampe_drg_2.mdl",
		                transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, -0.2, 1 },
	                }
	            elseif params.mw_licht == 4 then
		            subconstruction.models[#subconstruction.models+1] = {
			            id = "lf_lampe_modern.mdl",
			            transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1 },
		            }
	            end
            end
        end


		if params.mw_sign_type == 1 then
			subconstruction.models[#subconstruction.models+1] = {
				id = "lf_1_kz_" .. kzNumberLf .. ".mdl",
				transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.05, yPosition, zPosition, 1 },
			}
		elseif params.mw_sign_type == 2 then
			subconstruction.models[#subconstruction.models+1] = {
				id = "lf_2.mdl",
				transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, yPosition, zPosition+1.7, 1 },
			}
		elseif params.mw_sign_type == 3 then
			subconstruction.models[#subconstruction.models+1] = {
				id = "lf_3.mdl",
				transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, yPosition, zPosition+1.7, 1 },
			}
		elseif params.mw_sign_type == 4 then
			subconstruction.models[#subconstruction.models+1] = {
				id = "bausperre_rund.mdl",
				transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, -0.08, -0.2, 1 },
			}
		elseif params.mw_sign_type == 5 then
			subconstruction.models[#subconstruction.models+1] = {
				id = "bausperre_eckig.mdl",
				transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, -0.08, -0.2, 1 },
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
debugPrint(result)
		return result
	end
}

end
