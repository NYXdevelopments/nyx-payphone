https://cdn.discordapp.com/attachments/889454827678097418/1228395573514604594/NYX_TUMBNAIL2222HGFHGF.png?ex=662be387&is=66196e87&hm=cb310f136000ade5fb5e52ce56aa18b2a8a3e903e8b1ee6f944a41200ce26f63&

### Nyx Development Payphone
This is a payphone script and it was released by Nyx Development its compeletly open source, you can join our discord for more free stuff in future from the link down below

This is a simple payphone script and it was released by us the ui part is compiled since it was written with react, give it a try

Discord : https://discord.gg/RCrQZayqAs
Youtube : https://www.youtube.com/@nyxdevelopments
Tebex : https://nyxdev.tebex.io/


# Depedency
1. [qb-core](https://github.com/qbcore-framework/qb-core)
2. [qb-phone](https://github.com/qbcore-framework/qb-phone)
3. [qb-target](https://github.com/qbcore-framework/qb-target)

## information
its compatiable with almost everyphone you might have but if you had a different type of phone than the normal stuff you can change the function from line 60 in client.lua, also there is function that checks if the player is next to the payphones when calling, use that to your own liking and make sure to add this followig code to your qb-phone/main.lua any where

```
local PublicPhoneobject = {
    -2103798695,1158960338,
    1281992692,1511539537,
    295857659,-78626473,
    -1559354806
}

  exports['qb-target']:AddTargetModel(PublicPhoneobject, { -- This defines the models, can be a string or a table
    options = { -- This is your options table, in this table all the options will be specified for the target to accept
        {
            icon = "fas fa-phone-volume",
            label = "Make Call",
            event = "nyx-payphone:showpphone",
        },
    },
    distance = 2.5, -- This is the distance for you to be at for the target to turn blue, this is in GTA units and has to be a float value
})


```
