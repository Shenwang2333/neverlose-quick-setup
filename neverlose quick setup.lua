local pui = require("neverlose/pui")

pui.sidebar("\vquick\r setup", "\aFFFFFFFF\f<code>")

local v1 = new_class():struct("references")({
}):struct("main")({
    init = function(v2)
        v2.groups = {
            main = pui.create("main"),
            world = pui.create("world"),
            player = pui.create("player"),
            client = pui.create("client"),
            items = pui.create("items"),
            dev = pui.create(" ")
        };
        
        v2.elements = {
            tab = v2.groups.main:list("", "world", "player", "client", "items"),
            sv_cheats = v2.groups.world:button("sv_cheats", function()
                utils.console_exec("sv_cheats 1")
            end),
            set_up = v2.groups.world:button("quick setup", function()
                utils.console_exec("sv_cheats 1;ammo_grenade_limit_total 6;bot_kick;sv_infinite_ammo 1;mp_startmoney 99999;mp_ignore_round_win_conditions 1;mp_freezetime 0;mp_buy_anywhere 1;mp_buytime 9999;mp_restartgame 1;sv_grenade_trajectory 1;mp_maxmoney 99999;sv_showimpacts 2")
            end),
            host_timescale = v2.groups.world:button("speed up host timescale", function()
                utils.console_exec("toggle host_timescale 1 20")
            end),
            add_bots = v2.groups.world:button("add bots", function()
                utils.console_exec("sv_cheats 1;bot_add")
            end),
            place_bots = v2.groups.world:button("place bots", function()
                utils.console_exec("sv_cheats 1;bot_place")
            end),
            bot_stop = v2.groups.world:button("stop bots", function()
                utils.console_exec("sv_cheats 1;bot_stop 1 0")
            end),
            bot_crouch = v2.groups.world:button("make bots crouch", function()
                utils.console_exec("sv_cheats 1;toggle bot_crouch")
            end),
            bot_mimic = v2.groups.world:button("bot_mimic", function()
                utils.console_exec("bot_mimic_yaw_offset 0;toggle bot_mimic 1 2")
            end),
            bot_knives_only = v2.groups.world:button("bot_knives_only", function()
                utils.console_exec("bot_knives_only")
            end),
            bot_kick = v2.groups.world:button("kick bots", function()
                utils.console_exec("sv_cheats 1;bot_kick")
            end),
            off_bot_chatter = v2.groups.world:button("off bot chatter", function()
                utils.console_exec("bot_chatter off")
            end),
            respawn = v2.groups.world:button("respawn all on death", function()
                utils.console_exec("sv_cheats 1;mp_respawn_on_death_t 1;mp_respawnwavetime_t 0;mp_respawn_on_death_ct 1;mp_respawnwavetime_ct 0;mp_autoteambalance 0;mp_limitteams 0;mp_autoteambalance 0;mp_limitteams 0")
            end),
            add_bots_ct = v2.groups.world:button("add bots to ct", function()
                utils.console_exec("sv_cheats 1;bot_add_ct")
            end),
            respawn_ct = v2.groups.world:button("respawn ct on death", function()
                utils.console_exec("sv_cheats 1;mp_respawn_on_death_ct 1;mp_respawnwavetime_ct 0")
            end),
            add_bots_t = v2.groups.world:button("add bots to t", function()
                utils.console_exec("sv_cheats 1;bot_add_t")
            end),
            respawn_t = v2.groups.world:button("respawn t on death", function()
                utils.console_exec("sv_cheats 1;mp_respawn_on_death_t 1;mp_respawnwavetime_t 0")
            end),
            all_god_mode = v2.groups.world:button("all players god mode", function()
                utils.console_exec("sv_cheats 1;gods")
            end),
            clear_blood = v2.groups.world:button("clear blood", function()
                utils.console_exec("r_cleardecals")
            end),
            give_chicken = v2.groups.world:button("spawn clicken", function()
                utils.console_exec("give chicken")
            end),
            create_helicopter = v2.groups.world:button("create helicopter", function()
                utils.console_exec("sv_cheats 1;prop_dynamic_create/props_vehicles/helicopter_rescue.mdl;ent_fire!picker SetAnimation'helicopter_aztec'")
            end),
            r_drawparticles = v2.groups.world:button("r_drawparticles", function()
                utils.console_exec("sv_cheats 1;toggle r_drawparticles 1 0")
            end),
            weapon_accuracy_nospread = v2.groups.world:button("accuracy_nospread", function()
                utils.console_exec("sv_cheats 1;weapon_accuracy_nospread 1 0")
            end),
            no_clip = v2.groups.player:button("no clip", function()
                utils.console_exec("sv_cheats 1;noclip")
            end),
            rethrow_last_grenade = v2.groups.player:button("rethrow last grenade", function()
                utils.console_exec("sv_rethrow_last_grenade")
            end),
            grenade_preview = v2.groups.player:button("grenade preview", function()
                utils.console_exec("cl_grenadepreview 1 0")
            end),
            local_god_mode = v2.groups.player:button("local player god mode", function()
                utils.console_exec("sv_cheats 1;god")
            end),
            cjump = v2.groups.player:button("cjump", function()
                utils.console_exec("sv_cheats 1;cjump")
            end),
            nightvision_on = v2.groups.player:button("nightvision on", function()
                utils.console_exec("nightvision ")
            end),
            exojump = v2.groups.player:button("exojump", function()
                utils.console_exec("sv_cheats 1;exojump")
            end),
            kill = v2.groups.player:button("kill", function()
                utils.console_exec("kill")
            end),
            toggle_righthand = v2.groups.client:button("toggle righthand", function()
                utils.console_exec("toggle cl_righthand 1 0")
            end),
            drawothermodels = v2.groups.client:button("draw other models", function()
                utils.console_exec("sv_cheats 1;toggle r_drawothermodels 1 2")
            end),
            countbones = v2.groups.client:button("countbones", function()
                utils.console_exec("sv_cheats 1;toggle cl_countbones 1 0")
            end),
            mat_fillrate = v2.groups.client:button("mat_fillrate", function()
                utils.console_exec("sv_cheats 1;toggle mat_fillrate 1 0")
            end),
            viewmodel_recoil = v2.groups.client:button("viewmodel recoil", function()
                utils.console_exec("sv_cheats 1;toggle cl_viewmodel_recoil 1 0")
            end),
            net_graph = v2.groups.client:button("net_graph", function()
                utils.console_exec("net_graph 1 0")
            end),
            net_graphpos = v2.groups.client:button("set net_graphpos", function()
                utils.console_exec("net_graphpos 1 2")
            end),
            showpos = v2.groups.client:button("showpos on", function()
                utils.console_exec("cl_showpos 1 0")
            end),
            sv_showlagcompensation = v2.groups.client:button("sv_showlagcompensation", function()
                utils.console_exec("sv_cheats 1;sv_showlagcompensation 1 0")
            end),
            mp_radar_showall = v2.groups.client:button("mp_radar_showall", function()
                utils.console_exec("sv_cheats 1;mp_radar_showall 1 0")
            end),
            cl_draw_only_deathnotices = v2.groups.client:button("cl_draw_only_deathnotices", function()
                utils.console_exec("sv_cheats 1;cl_draw_only_deathnotices 1 0")
            end),
            mp_damage_vampiric_amount = v2.groups.client:button("mp_damage_vampiric_amount", function()
                utils.console_exec("sv_cheats 1;mp_damage_vampiric_amount 1 0")
            end),
            sv_alltalk_1 = v2.groups.client:button("sv_alltalk", function()
                utils.console_exec("sv_alltalk 1 0")
            end),
            r_drawtracers_firstperson_1 = v2.groups.client:button("r_drawtracers_firstperson", function()
                utils.console_exec("r_drawtracers_firstperson 1 0")
            end),
            mat_drawwater = v2.groups.client:button("mat_drawwater", function()
                utils.console_exec("toggle mat_drawwater 1 0")
            end),
            r_drawunderwateroverlay = v2.groups.client:button("r_drawunderwateroverlay", function()
                utils.console_exec("toggle r_drawunderwateroverlay 1 0")
            end),
            weapon_recoil_scale = v2.groups.client:button("weapon_recoil_scale", function()
                utils.console_exec("sv_cheats 1;weapon_recoil_scale 1 0")
            end),
            give_r8 = v2.groups.items:button("give r8", function()
                utils.console_exec("sv_cheats 1;give weapon_revolver")
            end),
            give_heavyassaultsuit = v2.groups.items:button("give heavyassaultsuit", function()
                utils.console_exec("sv_cheats 1;mp_weapons_allow_heavyassaultsuit 1;give item_heavyassaultsuit")
            end),
            give_shield = v2.groups.items:button("give shield", function()
                utils.console_exec("sv_cheats 1;give weapon_shield")
            end),
            give_healthshot = v2.groups.items:button("give healthshot", function()
                utils.console_exec("sv_cheats 1;give_weapon_healthshot")
            end),
            give_snowball = v2.groups.items:button("give snowball", function()
                utils.console_exec("sv_cheats 1;give weapon_snowball")
            end),
            give_bumpmine = v2.groups.items:button("give bumpmine", function()
                utils.console_exec("sv_cheats 1;give_weapon_bumpmine")
            end),
            give_tagrenade = v2.groups.items:button("give tagrenade", function()
                utils.console_exec("sv_cheats 1;give weapon_tagrenade")
            end),
            give_cutters = v2.groups.items:button("give cutters", function()
                utils.console_exec("sv_cheats 1;give weapon_cutters")
            end),
            give_zone_repulsor = v2.groups.items:button("give zone repulsor", function()
                utils.console_exec("sv_cheats 1;give weapon_zone_repulsor")
            end),
            create_dronegun = v2.groups.items:button("create dronegun", function()
                utils.console_exec("sv_cheats 1;ent_create dronegun")
            end),
            create_drone = v2.groups.items:button("create drone", function()
                utils.console_exec("sv_cheats 1;ent_create drone")
            end),
            create_func_survival_c4_target = v2.groups.items:button("create func_survival_c4_target", function()
                utils.console_exec("sv_cheats 1;ent_create func_survival_c4_target")
            end),
            give_weapon_breachcharge = v2.groups.items:button("give weapon_breachcharge", function()
                utils.console_exec("sv_cheats 1;give weapon_breachcharge")
            end),
            create_prop_exploding_barrel = v2.groups.items:button("create prop_exploding_barrel", function()
                utils.console_exec("sv_cheats 1;ent_create prop_exploding_barrel")
            end),
            give_weapon_fists = v2.groups.items:button("give weapon_fists", function()
                utils.console_exec("sv_cheats 1;give weapon_fists;ent_fire weapon_")
            end),
            give_axe = v2.groups.items:button("give axe", function()
                utils.console_exec("sv_cheats 1;give weapon_axe")
            end),
            give_hammer = v2.groups.items:button("give hammer", function()
                utils.console_exec("sv_cheats 1;give weapon_hammer")
            end),
            give_weapon_tablet = v2.groups.items:button("give weapon_tablet", function()
                utils.console_exec("sv_cheats 1;give weapon_tablet")
            end),
            give_weapon_spanner = v2.groups.items:button("give weapon_spanner", function()
                utils.console_exec("sv_cheats 1;give weapon_spanner")
            end),
            give_item_nvgs = v2.groups.items:button("give item_nvgs", function()
                utils.console_exec("sv_cheats 1;give item_nvgs")
            end),
            give_c4 = v2.groups.items:button("give c4", function()
                utils.console_exec("sv_cheats 1;give weapon_c4")
            end),
            dev = v2.groups.dev:label("\v\226\128\162    \a{Small Text}github: @Shenwang2333"),

        };

        v2.groups.world:depend({
            [1] = nil, 
            [2] = 1, 
            [1] = v2.elements.tab
        });
        v2.groups.player:depend({
            [1] = nil, 
            [2] = 2, 
            [1] = v2.elements.tab
        });
        v2.groups.world:depend({
            [1] = nil, 
            [2] = 1, 
            [1] = v2.elements.tab
        });
        v2.groups.client:depend({
            [1] = nil, 
            [2] = 3, 
            [1] = v2.elements.tab
        });
        v2.groups.items:depend({
            [1] = nil, 
            [2] = 4, 
            [1] = v2.elements.tab
        });
    end
})

v1.main:init();