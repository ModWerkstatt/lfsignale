function data()
return {
	availability = {
		yearFrom = 1910,
		yearTo = 0,
	},
	description = {
		attributes = {
			cost = { 5000, -1, },
			maintenanceCost = { 500, -1, },
			noise = { 0, -1, },
			pollution = { 0, -1, },
		},
		name = _("El-Signale"),
		description = _("El_zusatzsignaltafeln_desc"),
		icon = "icons/elsignale_icon_small.tga",
		previewIcon = "icons/elsignale_preview.tga",
	},
   	menuCategory = {
   		categories = {
      			{
         			category = "rail_assets",
            			order = 670,
 			},
      		},
   	},
	soundConfig = {
		builderAudioRes = "::/gui/construction/sound/buildoze_construction_small.builder_audio",
		soundSet = {
			name = "",
		},
	},
   updateScript = {
      fileName = "elsignale.script@updateFn",
      params = { },
   },
	buildMode = "MULTI",
	skipCollision = true,
	autoRemovable = false,
	snapping = {
		rail = true,
		road = false,
		water = false
	},

	params = {
		{
			key = "mw_sign_type",
			name = _("El-Signal"),
			uiType = "IconButton",
			values = { "icons/elsignale/el_1.tga", "icons/elsignale/el_1v.tga", "icons/elsignale/el_2.tga", "icons/elsignale/el_3.tga", "icons/elsignale/el_4.tga", "icons/elsignale/el_5.tga", "icons/elsignale/el_6.tga", "icons/elsignale/el_7.tga", "icons/elsignale/el_15kv.tga", "icons/elsignale/el_gleich.tga", "icons/elsignale/el_schutz_offen.tga", "icons/elsignale/el_schutz_zu.tga", "icons/elsignale/el_schutz.tga", },
			defaultIndex = 1,
			tooltip = _("tooltip_el_signal"),
		},
		{
			key = "mw_signal_position",
			name = _("Standort"),
			values = { _("rechts"), _("links") },
    			displayMode = "Horizontal",
			defaultIndex = 1,
			tooltip = _("tooltip_position"),
		},
		{
			key = "mw_version",
			name = _("Version"),
			values = { _("alt"), _("neu") },
            		displayMode = "Horizontal",
			defaultIndex = 1,
			tooltip = _("tooltip_version"),
		},
		{
			key = "mw_hoehe",
			name = _("Höhe"),
			values = { _("hoch"), _("standard"), _("gleishöhe"), _("boden") },
			defaultIndex = 1,
			tooltip = _("tooltip_height"),
		},
		{
			key = "mw_mast",
			name = _("Mast"),
			values = { _("nein"), _("ja") },
			defaultIndex = 1,
    			displayMode = "Horizontal",
			tooltip = _("tooltip_pole"),
		},
		{
			key = "mw_pfeil",
			name = _("Pfeil"),
			values = { _("X"), _("links"), _("rechts"), _("doppelt"), _("gerade") },
			defaultIndex = 1,
			tooltip = _("tooltip_arrow"),
		},
		{
			key = "mw_offset_z",
			name = _("Höhenanpassung"),
			uiType = "Slider",
			values = { "-50", "-49", "-48", "-47", "-46", "-45", "-44", "-43", "-42", "-41", "-40", "-39", "-38", "-37", "-36", "-35", "-34", "-33", "-32", "-31", "-30", "-29", "-28", "-27", "-26", "-25", "-24", "-23", "-22", "-21", "-20", "-19", "-18", "-17", "-16", "-15", "-14", _"-13", "-12", "-11", "-10", "-9", "-8", "-7", "-6", "-5", "-4", "-3", "-2", "-1", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50" },
			defaultIndex = 51,
			tooltip = _("tooltip_heightadjust"),
		},
		{
			key = "mw_snapping_type",
			name = _("Snapping für Signale"),
			values = { _("X"), _("H/V 48|51"), _("H/V 59"), _("H/V 69"), _("H/V Kompakt") },
			defaultIndex = 0,
			tooltip = _("tooltip_snapping"),
		},
		{
			key = "mw_snapping_hoehe",
			name = _("ca. Höhe für Signalsnapping"),
			values = { _("4 m"), _("5 m"), _("5,5 m"), _("6,5 m"), _("8 m") },
			defaultIndex = 0,
			tooltip = _("tooltip_snapping_height"),
		},
	},
}
end
