API_VERSION = 1

function set_offset(policy0, policy4, policy7)
    set_policy_freq_offset(0, policy0)
    set_policy_freq_offset(4, policy4)
    set_policy_freq_offset(7, policy7)
end

function load_fas(pid, pkg)
    if (pkg == "com.miHoYo.Yuanshen" or pkg == "com.miHoYo.ys.mi" or pkg == "com.miHoyo.ys.bilibili" or pkg == "com.miHoYo.GenshinImpact")
    then
        set_offset(-500000, -250000, 0)
    elseif (pkg == "com.miHoYo.Nap" or pkg == "com.miHoYo.Nap.bilibili" or pkg == "com.miHoYo.zenless")
    then
        set_offset(-300000, -250000, 0)
    elseif (pkg == "com.tencent.tmgp.sgame" or pkg == "com.levelinfinite.sgameGlobal")
    then
        set_offset(-500000, -300000, 0)
    elseif (pkg == "com.netease.x19" or pkg == "com.mojang.minecraftpe")
    then
        set_offset(-500000, -350000, 0)
    elseif (pkg == "com.miHoYo.Nap" or pkg == "com.miHoYo.zenless")
    then
        set_offset(-450000, -300000, 0)
    elseif (pkg == "com.ChillyRoom.DungeonShooter")
    then
        set_offset(-500000, -400000, 0)
    elseif (pkg == "com.tencent.tmgp.pubgmhd")
    then
        set_offset(-450000, -400000, 0)
    elseif (pkg == "com.tencent.lolm")
    then
        set_offset(-500000, -450000, 0)
    elseif (pkg == "com.tencent.tmgp.cf")
    then
        set_offset(-500000, -350000, 0)
    elseif (pkg == "com.netease.l22" )
    then
        set_offset(-450000, -350000, 0)
    elseif (pkg == "com.netease.dfjs.mi" )
    then
        set_offset(-400000, -400000, 0)
    elseif (pkg == "com.tencent.nfsonline" )
    then
        set_offset(-450000, -200000, 0)
    elseif (pkg == "com.kurogame.mingchao" )
    then
        set_offset(-400000, -200000, 0)
    elseif (pkg == "com.hypergryph.arknights" )
    then
        set_offset(-450000, -300000, -300000)
    elseif (pkg == "com.netease.sky")
    then
        set_offset(-450000, -450000, -250000)
    elseif (pkg == "com.tencent.jkchess" )
    then
        set_offset(-450000, -350000, 0)       
    elseif (pkg == "com.tencent.tmgp.speedmobile" )
    then
        set_offset(-450000, -200000, -300000)
    elseif (pkg == "com.tencent.KiHan" )
    then
        set_offset(-450000, -300000, -250000)
    elseif (pkg == "com.tencent.tmgp.cod" )
    then
        set_offset(-500000, -450000, 0)
    elseif (pkg == "com.miHoYo.hkrpg" or pkg == "com.miHoYo.hkrpg.bilibili" or pkg == "com.HoYoverse.hkrpgovers")
    then
        set_offset(-450000, -500000, 0)
    elseif (pkg == "com.netease.dwrg")
    then
        set_offset(-400000, -450000, -350000)
     elseif (pkg == "com.tencent.tmgp.dfm")
    then
        set_offset(-500000, -550000, 0)
    elseif (pkg == "com.sofunny.Sausage" )
    then
        set_offset(-500000, -500000, 0)
    end
end

function unload_fas()
    set_offset(0, 0, 0)
end
