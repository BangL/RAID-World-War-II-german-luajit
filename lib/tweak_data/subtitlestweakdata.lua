SubtitlesTweakData = SubtitlesTweakData or class()

function SubtitlesTweakData:init()
	self:_init_intro_video_censored()
	self:_init_mission_brief_b2_censored()
	self:_init_mission_brief_b4_censored()
	self:_init_mission_brief_a1()
	self:_init_mission_brief_a2()
	self:_init_mission_brief_a3()
	self:_init_mission_brief_a4()
	self:_init_mission_brief_a5()
	self:_init_mission_brief_b1()
	self:_init_mission_brief_b3()
	self:_init_mission_brief_b5()
	self:_init_debrief_success_censored_1()
	self:_init_debrief_success_censored_2()
	self:_init_debrief_success_censored_3()
	self:_init_debrief_success_censored_4()
	self:_init_debrief_success_censored_5()
	self:_init_debrief_success_censored_6()
	self:_init_debrief_success_censored_7()
	self:_init_debrief_success_censored_8()
	self:_init_debrief_success_censored_9()
	self:_init_debrief_success_censored_10()
	self:_init_debrief_success_censored_11()
	self:_init_debrief_success_censored_12()
	self:_init_debrief_success_censored_13()
	self:_init_debrief_success_censored_14()
	self:_init_debrief_failure_censored_1()
	self:_init_debrief_failure_censored_2()
	self:_init_debrief_failure_censored_3()
	self:_init_debrief_failure_censored_4()
	self:_init_debrief_failure_censored_5()
	self:_init_debrief_failure_censored_6()
	self:_init_debrief_failure_censored_7()
	self:_init_debrief_failure_censored_8()
	self:_init_debrief_failure_censored_9()
	self:_init_debrief_failure_censored_10()
	self:_init_debrief_failure_censored_11()
end

function SubtitlesTweakData:get_subtitle(movie, time)
	local split_movie_path = string.split(movie, "/")
	local movie_name = split_movie_path[#split_movie_path]
	local subtitle_data = self[movie_name]

	if not subtitle_data then
		Application:error("[SubtitlesTweakData][get_subtitle] Movie ", movie, " not in SubtitlesTweakData")

		return
	end

	for _, subtitle in ipairs(subtitle_data) do
		if subtitle.time < time and time < subtitle.time + subtitle.length then
			return managers.localization:text(subtitle.id)
		end
	end

	return ""
end

function SubtitlesTweakData:_init_intro_video_censored()
	self.01_intro_g_v014 = {
		{
			id = "01_intro_001",
			time = 6,
			length = 3
		},
		{
			id = "01_intro_002",
			time = 9,
			length = 4
		},
		{
			id = "01_intro_003",
			time = 13,
			length = 4
		},
		{
			id = "01_intro_004",
			time = 20,
			length = 4
		},
		{
			id = "01_intro_005",
			time = 24,
			length = 5
		},
		{
			id = "01_intro_006",
			time = 30,
			length = 5
		},
		{
			id = "01_intro_007",
			time = 35,
			length = 4
		},
		{
			id = "01_intro_008",
			time = 38,
			length = 5
		},
		{
			id = "01_intro_009",
			time = 45,
			length = 4
		},
		{
			id = "01_intro_0010",
			time = 47,
			length = 4
		},
		{
			id = "01_intro_0011",
			time = 51,
			length = 5
		},
		{
			id = "01_intro_0012",
			time = 57,
			length = 5
		},
		{
			id = "01_intro_0013",
			time = 63,
			length = 7
		},
		{
			id = "01_intro_0014",
			time = 70,
			length = 6
		},
		{
			id = "01_intro_0015",
			time = 77,
			length = 6
		},
		{
			id = "01_intro_0016",
			time = 83,
			length = 5
		}
	}
end

function SubtitlesTweakData:_init_mission_brief_b2_censored()
	self.02_mission_brief_b2_assassination_g_v004 = {
		{
			id = "b2_assassination_g_001",
			time = 1,
			length = 8
		}
	}
end

function SubtitlesTweakData:_init_mission_brief_b4_censored()
	self["02_mission_brief_b4_steal-valuables_cause-carnage_g_v004"] = {
		{
			id = "b4_steal-valuables_cause-carnage_g_001",
			time = 1,
			length = 8
		}
	}
end

function SubtitlesTweakData:_init_mission_brief_a1()
	self.02_mission_brief_a1_demolition_v005 = {
		{
			id = "a1_demolition_001",
			time = 1,
			length = 10
		}
	}
end

function SubtitlesTweakData:_init_mission_brief_a2()
	self["02_mission_brief_a2_cause-carnage_v005"] = {
		{
			id = "a2_cause-carnage_001",
			time = 1,
			length = 10
		}
	}
end

function SubtitlesTweakData:_init_mission_brief_a3()
	self.02_mission_brief_a3_ambush_v005 = {
		{
			id = "a3_ambush_001",
			time = 1,
			length = 10
		}
	}
end

function SubtitlesTweakData:_init_mission_brief_a4()
	self.02_mission_brief_a4_infiltration_v004 = {
		{
			id = "a4_infiltration_001",
			time = 1,
			length = 10
		}
	}
end

function SubtitlesTweakData:_init_mission_brief_a5()
	self.02_mission_brief_a5_rescue_v005 = {
		{
			id = "a5_rescue_001",
			time = 1,
			length = 10
		}
	}
end

function SubtitlesTweakData:_init_mission_brief_b1()
	self["02_mission_brief_b1_cause-carnage_v004"] = {
		{
			id = "b1_cause-carnage_001",
			time = 1,
			length = 10
		}
	}
end

function SubtitlesTweakData:_init_mission_brief_b3()
	self["02_mission_brief_b3_steal-intel_v004"] = {
		{
			id = "b3_steal-intel_001",
			time = 1,
			length = 10
		}
	}
end

function SubtitlesTweakData:_init_mission_brief_b5()
	self["02_mission_brief_b5_steal-valuables_cause-carnage_v004"] = {
		{
			id = "b5_steal-valuables_cause-carnage_001",
			time = 1,
			length = 10
		}
	}
end

function SubtitlesTweakData:_init_debrief_success_censored_1()
	self.sg_01_throws_himself_v007 = {
		{
			id = "SG_01_Throws_himself_001",
			time = 1,
			length = 4
		},
		{
			id = "SG_01_Throws_himself_002",
			time = 7.21,
			length = 4
		},
		{
			id = "SG_01_Throws_himself_003",
			time = 8.19,
			length = 4
		},
		{
			id = "SG_01_Throws_himself_004",
			time = 10.13,
			length = 4
		}
	}
end

function SubtitlesTweakData:_init_debrief_success_censored_2()
	self.sg_02_chickens_out_v007 = {
		{
			id = "SG_02_chickens_out_001",
			time = 1.2,
			length = 4
		}
	}
end

function SubtitlesTweakData:_init_debrief_success_censored_3()
	self.sg_03_salutes_v006 = {
		{
			id = "SG_03_salutes_001",
			time = 1.1,
			length = 2
		},
		{
			id = "SG_03_salutes_002",
			time = 2.11,
			length = 4
		},
		{
			id = "SG_03_salutes_003",
			time = 5,
			length = 4
		},
		{
			id = "SG_03_salutes_004",
			time = 9.12,
			length = 4
		},
		{
			id = "SG_03_salutes_005",
			time = 12.16,
			length = 4
		}
	}
end

function SubtitlesTweakData:_init_debrief_success_censored_4()
	self.sg_04_shoots_and_miss_v006 = {
		{
			id = "SG_03_salutes_001",
			time = 1.1,
			length = 1.1
		},
		{
			id = "SG_03_salutes_001",
			time = 1,
			length = 1.1
		},
		{
			id = "SG_03_salutes_001",
			time = 1,
			length = 1.1
		}
	}
end

function SubtitlesTweakData:_init_debrief_success_censored_5()
	self.sg_05_crunches_bones_v005 = {
		{
			id = "SG_05_Crunches_bones_001",
			time = 1,
			length = 4
		},
		{
			id = "SG_05_Crunches_bones_002",
			time = 5.05,
			length = 4
		},
		{
			id = "SG_05_Crunches_bones_003",
			time = 16.02,
			length = 4
		}
	}
end

function SubtitlesTweakData:_init_debrief_success_censored_6()
	self.sg_06_plays_with_tin_men_v005 = {
		{
			id = "SG_06_plays_with_tin_men_001",
			time = 1.08,
			length = 4
		},
		{
			id = "SG_06_plays_with_tin_men_002",
			time = 8.2,
			length = 4
		}
	}
end

function SubtitlesTweakData:_init_debrief_success_censored_7()
	self.sg_07_cries_tannenbaum_v005 = {}
end

function SubtitlesTweakData:_init_debrief_success_censored_8()
	self.sg_08_chess_v005 = {
		{
			id = "SG_08_chess_001",
			time = 5.15,
			length = 4
		},
		{
			id = "SG_08_chess_002",
			time = 14.04,
			length = 4
		}
	}
end

function SubtitlesTweakData:_init_debrief_success_censored_9()
	self.sg_09_is_having_a_reverie_v005 = {
		{
			id = "SG_09_is_having_a_reverie_001",
			time = 1,
			length = 1
		},
		{
			id = "SG_09_is_having_a_reverie_002",
			time = 1,
			length = 1.2
		},
		{
			id = "SG_09_is_having_a_reverie_003",
			time = 17.01,
			length = 4
		}
	}
end

function SubtitlesTweakData:_init_debrief_success_censored_10()
	self.sg_10_colours_a_map_v005 = {}
end

function SubtitlesTweakData:_init_debrief_success_censored_11()
	self.sg_11_swears_v005 = {
		{
			id = "SG_11_swears_001",
			time = 1,
			length = 4
		},
		{
			id = "SG_11_swears_002",
			time = 7.12,
			length = 4
		},
		{
			id = "SG_11_swears_003",
			time = 9.15,
			length = 4
		}
	}
end

function SubtitlesTweakData:_init_debrief_success_censored_12()
	self.s_12_plays_with_tanks_v005 = {
		{
			id = "S_12_plays_with_tanks_001",
			time = 15.14,
			length = 4
		}
	}
end

function SubtitlesTweakData:_init_debrief_success_censored_13()
	self.s_13_flips_a_table_v005 = {
		{
			id = "S_13_flips_a_table_001",
			time = 10.22,
			length = 4
		},
		{
			id = "S_13_flips_a_table_002",
			time = 12.17,
			length = 4
		}
	}
end

function SubtitlesTweakData:_init_debrief_success_censored_14()
	self.s_14_moustache_v006 = {
		{
			id = "S_14_moustache_001",
			time = 8.05,
			length = 4
		}
	}
end

function SubtitlesTweakData:_init_debrief_failure_censored_1()
	self.fg_01_edelweiss_v007 = {
		{
			id = "FG_01_edelweiss_001",
			time = 15.2,
			length = 4
		}
	}
end

function SubtitlesTweakData:_init_debrief_failure_censored_2()
	self.fg_02_sizzles_v007 = {}
end

function SubtitlesTweakData:_init_debrief_failure_censored_3()
	self.fg_03_toasts_v007 = {
		{
			id = "FG_03_toasts_001",
			time = 5.03,
			length = 4
		}
	}
end

function SubtitlesTweakData:_init_debrief_failure_censored_4()
	self.fg_04_misunderstands_v006 = {
		{
			id = "FG_04_misunderstands_001",
			time = 1,
			length = 4
		},
		{
			id = "FG_04_misunderstands_002",
			time = 4.06,
			length = 4
		},
		{
			id = "FG_04_misunderstands_003",
			time = 5.17,
			length = 4
		},
		{
			id = "FG_04_misunderstands_004",
			time = 10.04,
			length = 4
		},
		{
			id = "FG_04_misunderstands_005",
			time = 12.2,
			length = 4
		}
	}
end

function SubtitlesTweakData:_init_debrief_failure_censored_5()
	self.fg_05_hugs_the_world_v007 = {
		{
			id = "FG_05_hugs_the_world_001",
			time = 1,
			length = 4
		},
		{
			id = "FG_05_hugs_the_world_002",
			time = 13.11,
			length = 4
		}
	}
end

function SubtitlesTweakData:_init_debrief_failure_censored_6()
	self.fg_06_tin_soldiers_v006 = {
		{
			id = "FG_06_tin_soldiers_001",
			time = 1.04,
			length = 4
		},
		{
			id = "FG_06_tin_soldiers_002",
			time = 13.11,
			length = 4
		}
	}
end

function SubtitlesTweakData:_init_debrief_failure_censored_7()
	self.fg_07_told_you_so_v006 = {
		{
			id = "FG_07_told_you_so_001",
			time = 1,
			length = 4
		},
		{
			id = "FG_07_told_you_so_002",
			time = 4.13,
			length = 4
		},
		{
			id = "FG_07_told_you_so_003",
			time = 5.23,
			length = 4
		},
		{
			id = "FG_07_told_you_so_004",
			time = 7.16,
			length = 4
		},
		{
			id = "FG_07_told_you_so_005",
			time = 8.06,
			length = 4
		},
		{
			id = "FG_07_told_you_so_006",
			time = 13.06,
			length = 4
		},
		{
			id = "FG_07_told_you_so_007",
			time = 18.08,
			length = 4
		}
	}
end

function SubtitlesTweakData:_init_debrief_failure_censored_8()
	self.fg_08_pumps_his_fists_v007 = {}
end

function SubtitlesTweakData:_init_debrief_failure_censored_9()
	self.fg_09_bras_dhonneur_v006 = {
		{
			id = "FG_09_bras_dhonneur_001",
			time = 1,
			length = 4
		}
	}
end

function SubtitlesTweakData:_init_debrief_failure_censored_10()
	self.fg_10_executes_v007 = {
		{
			id = "FG_09_bras_dhonneur_001",
			time = 8.19,
			length = 4
		},
		{
			id = "FG_09_bras_dhonneur_001",
			time = 12.11,
			length = 4
		}
	}
end

function SubtitlesTweakData:_init_debrief_failure_censored_11()
	self.fg_11_sings_v007 = {
		{
			id = "FG_11_sings_001",
			time = 8.01,
			length = 4
		},
		{
			id = "FG_11_sings_002",
			time = 14.05,
			length = 4
		}
	}
end
