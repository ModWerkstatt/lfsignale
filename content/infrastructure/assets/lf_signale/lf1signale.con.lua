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
		name = _("Lf1 & Baustellenzubehör"),
		description = _("Lf1_zusatzsignaltafeln_desc"),
		icon = "icons/lf1signale_icon_small.tga",
		previewIcon = "icons/lf1signale_preview.tga",
	},
   menuCategory = {
   	categories = {
      	{
         	category = "rail_assets",
            order = 650,
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
      fileName = "lf1signale.script@updateFn",
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
			values = { "icons//lfsignale/lf1.tga", "icons//lfsignale/lf2.tga", "icons//lfsignale/lf3.tga", "icons//lfsignale/bausperre_rund.tga", "icons//lfsignale/bausperre_eckig.tga",},
			defaultIndex = 1,
			tooltip = _("tooltip_lf1_signal"),
		},
		{
			key = "signal_position",
			name = _("Standort"),
			values = { _("rechts"), _("links") },
         displayMode = "Horizontal",
			defaultIndex = 1,
			tooltip = _("tooltip_position"),
		},
		{
			key = "kennziffer_lf",
			name = _("Geschwindigkeit in km/h"),
			uiType = "ComboBox",
			values = {  "10", "20", "30", "40", "50", "60", "70", "80", "90", "100", "110", "120", "130", "140", "150", "160" },
			defaultIndex = 1,
			tooltip = _("tooltip_speed"),
		},
		{
			key = "hoehe_lf1",
			name = _("Höhe"),
			values = { _("niedrig"), _("standard"), _("hoch") },
         displayMode = "Horizontal",
			defaultIndex = 1,
			tooltip = _("tooltip_height"),
		},
		{
			key = "licht",
			name = _("Beleuchtung"),
			values = { _("Lampe DRG 1"), _("Lampe DRG 2"), _("moderne Lampe") },
			defaultIndex = 3,
			tooltip = _("tooltip_lighting"),
		},
	},
}
end