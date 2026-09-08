function data()
return {
		availability = {
			yearFrom = 1910,
			yearTo = 0,
		},
		description = {
		attributes = {
			cost = { 1000, -1, },
			maintenanceCost = { 50, -1, },
			noise = { 0, -1, },
			pollution = { 0, -1, },
		},
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
			key = "mw_sign_type",
			name = _("Lf-Signal"),
			uiType = "IconButton",
			values = { "icons/lfsignale/lf6_11.tga", "icons/lfsignale/lf7_11.tga",},
			defaultIndex = 1,
			tooltip = _("tooltip_lf_signal"),
		},
		{
			key = "mw_signal_position",
			name = _("Standort"),
			values = { _("Links"), _("Rechts"), },
			defaultIndex = 2,
            displayMode = "Horizontal",
			tooltip = _("tooltip_position"),
		},
		{
			key = "mw_kennziffer",
			name = _("Geschwindigkeit in km/h"),
			uiType = "ComboBox",
			values = { "10", "20", "30", "40", "50", "60", "70", "80", "90", "100", "110", "120", "130", "140", "150", },
			defaultIndex = 1,
			tooltip = _("tooltip_speed"),
		},
		{
			key = "mw_gedreht",
			name = _("gedrehtes Lf 6"),
			values = { _("nein"), _("ja") },
			defaultIndex = 1,
            displayMode = "Horizontal",
			tooltip = _("tooltip_turned"),
		},
		{
			key = "mw_hoehe",
			name = _("Hoehe"),
			values = { _("standard"), _("gleishöhe"), _("boden") },
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
			key = "mw_pfr",
			name = _("Zuordnungspfeil rechts"),
			values = { "0", "1" },
			defaultIndex = 1,
            displayMode = "Horizontal",
			uiType = "CheckBox",
			tooltip = _("tooltip_pfR"),
		},
		{
			key = "mw_pfl",
			name = _("Zuordnungspfeil links"),
			values = { "0", "1" },
			defaultIndex = 1,
            displayMode = "Horizontal",
			uiType = "CheckBox",
			tooltip = _("tooltip_pfL"),
		},
		{
			key = "mw_licht",
			name = _("beleuchtetes Lf6"),
			values = { _("nein"), _("ja") },
            displayMode = "Horizontal",
			defaultIndex = 1,
			tooltip = _("tooltip_lighted"),
		},
	},
}
end
