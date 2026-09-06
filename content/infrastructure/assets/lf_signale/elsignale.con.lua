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
			key = "mw_mast",
			name = _("Mast"),
			values = { _("nein"), _("ja") },
			defaultIndex = 1,
    		displayMode = "Horizontal",
			tooltip = _("tooltip_pole"),
		},
		{
			key = "mw_version",
			name = _("Version"),
			values = { _("neu"), _("alt"), },
            displayMode = "Horizontal",
			defaultIndex = 1,
			tooltip = _("tooltip_version"),
		},
		{
			key = "mw_hoehe",
			name = _("Höhe"),
			values = { _("hoch"), _("standard"), _("gleishöhe"), _("boden") },
			defaultIndex = 2,
			tooltip = _("tooltip_height"),
		},
		{
			key = "mw_pfeil",
			name = _("Pfeil"),
			values = { _("X"), _("links"), _("rechts"), _("doppelt"), _("gerade") },
			defaultIndex = 1,
			tooltip = _("tooltip_arrow"),
		},
	},
}
end
