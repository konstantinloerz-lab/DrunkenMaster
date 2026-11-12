masteryPos = {
  --[] At the end of each turn have muddle.
  [1] = {x=-0.6783161200161638, y=0.11, z=0.6848950393501609},
  --[] Each turn [icon3] into at least one figure.
  [2] = {x=-0.6783161200161638, y=0.11, z=0.8148784466344363},
}
perkPos = {
  --[||] Replace one [null][shuffle] card with one [null][shuffle] +[target] rolling "target a figure adjacent to the target" card
  [1] = {x=0.16311138403004619, y=0.11, z=-0.6451002575161948},
  [2] = {x=0.16311138403004619, y=0.11, z=-0.6164243924086256},
  [3] = {x=0.16311138403004619, y=0.11, z=-0.5877485273010564},
  --[][][] Replace one [-1] card with two [-1] muddle rolling cards
  [4] = {x=0.16311138403004619, y=0.11, z=-0.4809322852002612},
  [5] = {x=0.20779543238672712, y=0.11, z=-0.4809322852002612},
  [6] = {x=0.25247926014867317, y=0.11, z=-0.4809322852002612},
  --[][] Replace two [+0] cards with two [+0] "[heal] 1, [target][icon]" cards
  [7] = {x=0.16311138403004619, y=0.11, z=-0.3675124477632744},
  [8] = {x=0.20779543238672712, y=0.11, z=-0.3675124477632744},
  --[][] Replace one [+0] card with one[-1]"If[icon]attacks: target suffers 1[damage] per modifier drawn" card
  [9] = {x=0.16311138403004619, y=0.11, z=-0.2540927178756506},
  [10] = {x=0.20779543238672712, y=0.11, z=-0.2540927178756506},
  --[][] Replace one [+1] card and one [-1] card with two [-1] if[icon2]attacks / [+1] if[icon]attacks cards
  [11] = {x=0.16311138403004619, y=0.11, z=-0.0890437011779667},
  [12] = {x=0.20779543238672712, y=0.11, z=-0.0890437011779667},
  --[|] Replace one [+2] card and one [-2] card with two [-2] if[icon2]attacks / [+2] if[icon]attacks cards
  [13] = {x=0.16311138403004619, y=0.11, z=0.07600531551971731},
  [14] = {x=0.16311138403004619, y=0.11, z=0.10468118062728651},
  --[] Add two [-1]"wound,self" rolling card
  [15] = {x=0.16311138403004619, y=0.11, z=0.24105422466803803},
  --[] Ignore item [-1card] effects and rolling modifiers enemies draw from your deck can not be ignored.
  [16] = {x=0.16311138403004619, y=0.11, z=0.3028741900457472},
  --[] After you short rest, during next card selection, you may pick your cards at random, including initiative. If you do so, perform [heal] 3 poison,muddle self.
  [17] = {x=0.16311138403004619, y=0.11, z=0.4661904251813498},
  --[] When you long rest, you may declare another long rest for your next round, without losing a card. If you do so, gain impair.
  [18] = {x=0.16311138403004619, y=0.11, z=0.7310030107368681},
}

levelPos = {
  [1] = { x = -0.495, y = 0.11, z = -0.64},
  [2] = { x = -0.43, y = 0.11, z = -0.64},
  [3] = { x = -0.37, y = 0.11, z = -0.64},
  [4] = { x = -0.30, y = 0.11, z = -0.64},
  [5] = { x = -0.235, y = 0.11, z = -0.64},
  [6] = { x = -0.17, y = 0.11, z = -0.64},
  [7] = { x = -0.11, y = 0.11, z = -0.64},
  [8] = { x = -0.04, y = 0.11, z = -0.64},
  [9] = { x = 0.025, y = 0.11, z = -0.64}
}
checkPos = {
  [1] = {x = 0.215, y = 0.11, z = -0.804}, 
  [2] = {x = 0.2622, y = 0.11, z = -0.804}, 
  [3] = {x = 0.3072, y = 0.11, z = -0.804}, 
  [4] = {x = 0.4142, y = 0.11, z = -0.804}, 
  [5] = {x = 0.4622, y = 0.11, z = -0.804}, 
  [6] = {x = 0.5072, y = 0.11, z = -0.804}, 
  [7] = {x = 0.6152, y = 0.11, z = -0.804}, 
  [8] = {x = 0.6592, y = 0.11, z = -0.804}, 
  [9] = {x = 0.7072, y = 0.11, z = -0.804}, 
  [10] = {x = 0.215, y = 0.11, z = -0.744}, 
  [11] = {x = 0.2622, y = 0.11, z = -0.744}, 
  [12] = {x = 0.3072, y = 0.11, z = -0.744}, 
  [13] = {x = 0.4142, y = 0.11, z = -0.744}, 
  [14] = {x = 0.4622, y = 0.11, z = -0.744}, 
  [15] = {x = 0.5072, y = 0.11, z = -0.744}, 
  [16] = {x = 0.6152, y = 0.11, z = -0.744}, 
  [17] = {x = 0.6592, y = 0.11, z = -0.744}, 
  [18] = {x = 0.7072, y = 0.11, z = -0.744}
}

toggleSymbol = "\u{2717}"
hideButtonBack = true
thick = 0.1
XPLevel = {0, 45, 95, 150, 210, 275, 345, 420, 500}
scriptsToken = "75ab50"

function initCustomButtons()
for k,v in pairs(levelPos) do
  setupButton('level' .. k, "toggleA", v.x, v.z);
end

for k,v in pairs(perkPos) do
  setupButton('perk' .. k, "toggleB", v.x, v.z);
end

for k,v in pairs(masteryPos) do
  setupButton('mastery' .. k, "toggleB", v.x, v.z);
end

for k,v in pairs(checkPos) do
  setupButton('notes' .. k, "toggleB", v.x, v.z);
end
end
function onObjectEnterScriptingZone(zone, obj)
 if obj == self then
    local zoneToColor = getObjectFromGUID(scriptsToken).getTable("zoneToColor")
    self.UI.setAttribute("Notes", "visibility", zoneToColor[zone.getGUID()].."|Black")
 end
end

function onObjectLeaveScriptingZone(zone, obj)
 if obj == self then
    self.UI.setAttribute("Notes", "visibility", "")
 end
end

function initButtonsTable()
 buttons = {}
 buttons.count = 0

 buttons.toggleA = {
    width = 300, height = 300, font = 400
 }
 buttons.toggleB = {
    width = 200, height = 200, font = 250
 }
end

function forceSave()
 local data_to_save = {buttons = {}, ui = {}, notesVisibility = ""}
 for i, v in pairs(buttons) do
    if i ~= "count" then
       if v.label == toggleSymbol then
          data_to_save.buttons[i] = "u{2717}"
       else
          data_to_save.buttons[i] = v.label
       end
    end
 end
 data_to_save.ui["Name"] = self.UI.getAttribute("Name", "text")
 data_to_save.ui["xp"] = self.UI.getAttribute("xp", "text")
 data_to_save.ui["gold"] = self.UI.getAttribute("gold", "text")
 data_to_save.ui["Items"] = self.UI.getAttribute("Items", "text")
 data_to_save.ui["NotesFront"] = self.UI.getAttribute("NotesFront", "text")
 data_to_save.ui["Notes"] = self.UI.getAttribute("Notes", "text")

 saved_data = JSON.encode_pretty(data_to_save)
 -- saved_data = ""
 self.script_state = saved_data
 return saved_data
end

function onload(saved_data)
 initButtonsTable()
 loaded_data = JSON.decode(saved_data)
 if loaded_data ~= nil then
    for i, v in pairs(loaded_data.buttons) do
       buttons[i] = {label = v}
    end
    if loaded_data.ui ~= nil then
       Wait.frames(
          function()
             for i, v in pairs(loaded_data.ui) do
                self.UI.setAttribute(i, "text", v)
             end
             local zoneToColor = getObjectFromGUID(scriptsToken).getTable("zoneToColor")
             found = ""
             for guid, color in pairs(zoneToColor) do
                for _, obj in pairs(getObjectFromGUID(guid).getObjects()) do
                   if obj == self then
                      found = color
                      break
                   end
                end
                if found ~= "" then break end
             end
             self.UI.setAttribute("Notes", "visibility", found.."|Black")
          end,
       10)
    end
 end
 initCustomButtons()
end

function clickedToggle(index)
 if buttons[index].label == "" then
    buttons[index].label = toggleSymbol
    if index:find("level") then
       if tonumber(self.UI.getAttribute("xp", "text")) < XPLevel[tonumber(index:sub(6))] then
          self.UI.setAttribute("xp", "text", XPLevel[tonumber(index:sub(6))])
       end
       for i = 1, tonumber(index:sub(6)) do
          buttons["level" .. i].label = toggleSymbol
          self.editButton(buttons["level" .. i])
       end
    end
 else
    buttons[index].label = ""
 end
 self.editButton(buttons[index])
 forceSave()
end

function onValueChanged(player, value, id)
 self.UI.setAttribute(id, "text", value)
end

function onEndEdit(player, value, id)
 forceSave()
end

function setupButton(name, type, x, z)
 local button_parameters = {}
 button_parameters.index = buttons.count
 button_parameters.height = buttons[type].height
 button_parameters.width = buttons[type].width
 button_parameters.font_size = buttons[type].font
 if type == "toggleA" or type == "toggleB" then
    self.setVar("toggleClick_" .. name, function () clickedToggle(name) end)
    button_parameters.click_function = "toggleClick_" .. name
    button_parameters.label = ""
 end

 if hideButtonBack then
    button_parameters.color = {1, 1, 1, 0}
    button_parameters.font_color = {0, 0, 0, 100}
 end
 button_parameters.scale = {0.1, 0.1, 0.1}
 button_parameters.position = {x, thick, z}
 button_parameters.function_owner = self

 if buttons[name] ~= nil then
    if buttons[name].label == "u{2717}" then
       button_parameters.label = toggleSymbol
    else
       button_parameters.label = buttons[name].label
    end
 end

 self.createButton(button_parameters)
 buttons[name] = button_parameters
 buttons.count = buttons.count + 1
end

function addEx(params) add(params.name, params.amount) end

function onClick(player, value, id)
 add(value:sub(1,-2), value:sub(-1) == "+" and 1 or - 1)
end

function add(name, amount)
 local newValue = math.max((tonumber(self.UI.getAttribute(name, "text")) + amount), 0)
 self.UI.setAttribute(name, "text", newValue)
 level = 0
 if name == "xp" then
    if newValue >= 500 then
       level = 9
    elseif newValue >= 420 then
       level = 8
    elseif newValue >= 345 then
       level = 7
    elseif newValue >= 275 then
       level = 6
    elseif newValue >= 210 then
       level = 5
    elseif newValue >= 150 then
       level = 4
    elseif newValue >= 95 then
       level = 3
    elseif newValue >= 45 then
       level = 2
    end
    if level > 0 then
       if buttons["level" .. level].label == "" then Wait.frames(function() clickedToggle("level" .. level) end, 1) end
    end
 end
 Wait.frames(forceSave, 10)
end
