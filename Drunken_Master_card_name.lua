deckInfo = {
  name = "Attack Modifiers",
  description = "Master",
}
cardNames = {
  "Attack Modifier rolling (null) (shuffle)",
  "Attack Modifier rolling (-1)",
  "Attack Modifier rolling (-1)",
  "Attack Modifier rolling (-1)",
  "Attack Modifier rolling (-1)",
  "Attack Modifier rolling (-1)",
  "Attack Modifier rolling (-1)",
  "Attack Modifier rolling (-1)",
  "Attack Modifier (-2) (retaliate) 2 self",
  "Attack Modifier (-2) (retaliate) 2 self",
  "Attack Modifier (-2) If (icon)attacks: target suffers 1(damage) for each modifier drawn",
  "Attack Modifier (-2) If (icon)attacks: target suffers 1(damage) for each modifier drawn",
  "Attack Modifier (+0) muddle",
  "Attack Modifier (+0) muddle",
  "Attack Modifier (+0) muddle",
  "Attack Modifier (+0) muddle",
  "Attack Modifier (+0) +(target) !target a random figure adjacent to the target",
  "Attack Modifier rolling curse",
  "Attack Modifier rolling curse",
  "Attack Modifier rolling curse",
}
cardDescriptions = {
  "Master",
  "Master",
  "Master",
  "Master",
  "Master",
  "Master",
  "Master",
  "Master",
  "Master",
  "Master",
  "Master",
  "Master",
  "Master",
  "Master",
  "Master",
  "Master",
  "Master",
  "Master",
  "Master",
  "Master",
}

takeFromTop = false
cardPause = 10
moveSmooth = false

function onLoad()
  self.UI.hide("progress_bar")
  self.UI.hide("timeDisplay")
  isRunning = false
  watchCards = false
  self.setSnapPoints({
  {
    position = {-2.6, 0.2, 0},
    rotation = {0, 0, 0},
    rotation_snap = true,
  },
  {
    position = {2.6, 0.2, 0},
    rotation = {0, 0, 0},
    rotation_snap = true,
  }
  })
  deckCheck()
end

function find_Deck(player,value,id)
  local findProximity = function(targetPos, object)
    local objectPos = object.getPosition()
    local xDistance = math.abs(targetPos.x - objectPos.x)
    local zDistance = math.abs(targetPos.z - objectPos.z)
    local distance = xDistance^2 + zDistance^2
    return math.sqrt(distance)
  end
  local search = function()
    local allObjects = getAllObjects()
    local foundDeck = false
    for _, deckObjects in ipairs(allObjects) do
      if deckObjects.tag == "Deck" then
        local distance = findProximity(self.getPosition(), deckObjects)
        if distance <= 5 then
          deckGUID = deckObjects.getGUID()
          deck = deckObjects
          numberOfCards = deckObjects.getObjects()
          foundDeck = true
        end
      end
    end
    if foundDeck == false then
      print("[d2ac0e]No deck was found within the proximity of the tool.")
    end
  end
  if id == "findDeck" and not isRunning then
    search()
  elseif id == "findDeck" and isRunning then
    print("[d2ac0e]Please wait for the process to finish.")
  elseif id ~= "findDeck" and isRunning then
    search()
  end
end

function deckCheck()
  Wait.time(
    function()
      local deckNotFound = {text = "", color = "Red",}
      local foundDeck = {text = deckGUID, color = "Green",}
      if deck then
        self.UI.setAttributes("guidDisplay", foundDeck)
      else
        self.UI.setAttributes("guidDisplay", deckNotFound)
      end
    end,
    1,
    -1
  )
end

function start_Button()
  if not isRunning then
    if deckGUID ~= nil then
      if deck ~= nil then
        local att = {colors = "#FFDD00|#875D00|#F0A600|rgba(0.78,0.78,0.78,0.5)", text = "Please\nWait", fontSize = "17",}
        self.UI.setAttributes("startButton", att)
        self.UI.show("timeDisplay")
        self.UI.show("progress_bar")
        print("[d2ac0e]Start!".."\nDeck Cards: "..#deck.getObjects().."\nNames: "..#cardNames.."\nDescriptions: "..#cardDescriptions)
        startLuaCoroutine(self, 'takeAndRename')
      else
        print("[d2ac0e]The paired deck no longer exists or its GUID has changed, you must pair the deck again.")
      end
    else
      print("[d2ac0e]You must pair a deck with the Find Deck button before pressing start.")
    end
  else
    print("[d2ac0e]Please wait for the process to finish.")
  end
end

function takeAndRename()
  isRunning = true
  local heightStep = 3/((#deck.getObjects() < #cardNames) and #deck.getObjects() or #cardNames)
  local targetPos = deck.positionToWorld({-5.3, 0, 0})
  local copiedScript = deck.getLuaScript()
  local copiedXml = deck.UI.getXml()
  local copiedName = deck.getName()
  local copiedDescription = deck.getDescription()
  if #cardNames > #cardDescriptions then
    iter = #cardNames
  else
    iter = #cardDescriptions
  end
  if takeFromTop == true then
    flipCards = true
  else
    flipCards = false
  end
  startTimer()
  for i=1, iter do
    targetPos.y = targetPos.y + (heightStep)
    if i == #numberOfCards-1 then
      watchCards = true
    end
    if i < #numberOfCards then
      deck.takeObject({
        callback_function = function(spawnedCard)
          Wait.frames(function()
            if not spawnedCard.isDestroyed() then
              local progressPercent = 100/#numberOfCards*i
              spawnedCard.setName(cardNames[i])
              spawnedCard.setDescription(cardDescriptions[i])
              spawnedCard.setPositionSmooth(targetPos)
              self.UI.setAttribute("progress_bar", "percentage", progressPercent)
            end
          end)
        end,
      position = targetPos,
      top = takeFromTop,
      flip = flipCards,
      smooth = moveSmooth,})
    else
      self.UI.setAttribute("progress_bar", "percentage", 100)
      if flipCards == true then
        lastCardRef.flip()
      end
      lastCardRef.setName(cardNames[i])
      lastCardRef.setDescription(cardDescriptions[i])
      targetPos.y = targetPos.y + 3
      lastCardRef.setPositionSmooth(targetPos,false,true)
      watchCards = false
    end
    for i=1,cardPause,1 do coroutine.yield(0) end
  end
  find_Deck()
  local att1 = {text = "Done!", colors = "#00FF29|#875D00|#F0A600|rgba(0.78,0.78,0.78,0.5)"}
  local att2 = {text = "Start", colors = "#C88A00|#875D00|#F0A600|rgba(0.78,0.78,0.78,0.5)"}
  local setDes = deckInfo.description
  local setNam = deckInfo.name
  self.UI.setAttributes("startButton", att1)
  for i=1,100,1 do coroutine.yield(0) end
  self.UI.hide("progress_bar")
  self.UI.hide("timeDisplay")
  self.UI.setAttributes("startButton", att2)
  if setNam ~= "" then
    deck.setName(setNam)
  elseif setNam == "" and copiedName ~= "" then
    deck.setName(copiedName)
  elseif setName == "" and copiedDescription == "" then
  end
  if setDes ~= "" then
    deck.setDescription(setDes)
  elseif setDes == "" and copiedDescription ~= "" then
    deck.setDescription(copiedDescription)
  elseif setDes == "" and copiedDescription == "" then
  end
  if takeFromTop == true and flipCards == true then
    deck.flip()
  end
  deck.UI.setXml(copiedXml)
  deck.setLuaScript(copiedScript)
  isRunning = false
  deck = nil
  return 1
end

function startTimer()
  local totalCards = #deck.getObjects()
  local totalFrames = cardPause*totalCards+100
  local totalSec = (totalFrames/60)
  local roundSec = math.floor(totalSec/60%1*60+0.5)
  local roundMin = math.floor(totalSec/60)
  self.UI.setAttribute("timeDisplay", "text", "etc... "..roundMin..":"..roundSec)
  Wait.time(
    function()
      if roundSec > 0 then
        roundSec = roundSec-1
      elseif roundSec == 0 then
        if roundMin > 0 then
          roundMin = roundMin-1
          roundSec = 59
        end
      end

      if roundSec<=9 then
        self.UI.setAttribute("timeDisplay", "text", "etc... "..roundMin..":0"..roundSec)
      else
        self.UI.setAttribute("timeDisplay", "text", "etc... "..roundMin..":"..roundSec)

      end
    end,
    1,
    totalSec
  )
end

function onObjectSpawn(obj)
  if watchCards == true and obj.tag == "Card" then
    lastCardGuid = obj.getGUID()
    lastCardRef = getObjectFromGUID(lastCardGuid)
  end
end
