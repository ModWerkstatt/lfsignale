function data()
return {
		availability = {
			yearFrom = 1910,
			yearTo = 0,
		},
		constructionType = "ASSET_TRACK",
		description = {
			name = _("Lf-Signale"),
			description = _("Lf_zusatzsignaltafeln_desc"),
            icon = "icons/lfsignale_icon_small.tga",
            previewIcon = "icons/lfsignale_preview@2x.tga",
		},
      menuCategory = {
            categories = {
                {
                    category = "rail_assets",
                    order = 660,
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
      	fileName = "lfsignale.script@updateFn",
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
			key = "sign_type",
			name = _("Lf-Signal"),
			uiType = "IconButton",
			values = { "icons//lfsignale/lf6_11.tga", "icons//lfsignale/lf7_11.tga",},
			defaultIndex = 1,
			tooltip = _("tooltip_lf_signal"),
		},
		{
			key = "signal_position",
			name = _("Standort"),
			values = { _("Rechts"), _("Links") },
			defaultIndex = 1,
         displayMode = "Horizontal",
			tooltip = _("tooltip_position"),
		}, 
		{
			key = "kennziffer",
			name = _("Geschwindigkeit in km/h"),
			uiType = "ComboBox",
			values = { "10", "20", "30", "40", "50", "60", "70", "80", "90", "100", "110", "120", "130", "140", "150", "160" },
			defaultIndex = 2,
			tooltip = _("tooltip_speed"),
		},
		{
			key = "gedreht",
			name = _("gedrehtes Lf 6"),
			values = { _("nein"), _("ja") },
			defaultIndex = 1,
         displayMode = "Horizontal",
			tooltip = _("tooltip_turned"),
		},
		{
			key = "hoehe",
			name = _("Höhe"),
			values = { _("hoch"), _("standard"), _("gleishöhe"), _("boden") },
			defaultIndex = 2,
			tooltip = _("tooltip_height"),
		},
		{
			key = "mast",
			name = _("Mast"),
			values = { _("nein"), _("ja") },
			defaultIndex = 1,
         displayMode = "Horizontal",
			tooltip = _("tooltip_pole"),
		},
		{
			key = "pfr",
			name = _("Zuordnungspfeil rechts"),
			values = { "0", "1" },
			defaultIndex = 1,
         displayMode = "Horizontal",
			uiType = "CheckBox",
			tooltip = _("tooltip_pfR"),
		},
		{
			key = "pfl",
			name = _("Zuordnungspfeil links"),
			values = { "0", "1" },
			defaultIndex = 1,
         displayMode = "Horizontal",
			uiType = "CheckBox",
			tooltip = _("tooltip_pfL"),
		},
		{
			key = "licht",
			name = _("beleuchtetes Lf6"),
			values = { _("nein"), _("ja") },
         displayMode = "Horizontal",
			defaultIndex = 1,
			tooltip = _("tooltip_lighted"),
		},
		{
			key = "offset_z",
			name = _("Höhenanpassung"),
			uiType = "Slider",
			values = { "-50", "-49", "-48", "-47", "-46", "-45", "-44", "-43", "-42", "-41", "-40", "-39", "-38", "-37", "-36", "-35", "-34", "-33", "-32", "-31", "-30", "-29", "-28", "-27", "-26", "-25", "-24", "-23", "-22", "-21", "-20", "-19", "-18", "-17", "-16", "-15", "-14", _"-13", "-12", "-11", "-10", "-9", "-8", "-7", "-6", "-5", "-4", "-3", "-2", "-1", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50" },
			defaultIndex = 51,
			tooltip = _("tooltip_heightadjust"),
		},
		{
			key = "snapping_type",
			name = _("Snapping für Signale"),
			values = { _("X"), _("H/V 48|51"), _("H/V 59"), _("H/V 69"), _("H/V Kompakt") },
			defaultIndex = 1,
			tooltip = _("tooltip_snapping"),
		},
		{
			key = "snapping_hoehe",
			name = _("ca. Masthöhe für Signalsnapping"),
			values = { _("4 m"), _("5 m"), _("5,5 m"), _("6,5 m"), _("8 m") },
			defaultIndex = 1,
			tooltip = _("tooltip_snapping_height"),
		},
	},

end
