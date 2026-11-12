-- Perk List
perks = {
  [1]={},
  [2]={},
  [3]={
    remove={"(null)(shuffle)"},
    add={"(null)(shuffle) +(target) rolling (target a figure adjacent to the target)"},
  },
  [4]={
    remove={"(-1)"},
    add={"(-1) muddle rolling","(-1) muddle rolling"},
  },
  [5]={
    remove={"(-1)"},
    add={"(-1) muddle rolling","(-1) muddle rolling"},
  },
  [6]={
    remove={"(-1)"},
    add={"(-1) muddle rolling","(-1) muddle rolling"},
  },
  [7]={
    remove={"(+0)","(+0)"},
    add={"(+0) ((heal) 1, (target)(icon))","(+0) ((heal) 1, (target)(icon))"},
  },
  [8]={
    remove={"(+0)","(+0)"},
    add={"(+0) ((heal) 1, (target)(icon))","(+0) ((heal) 1, (target)(icon))"},
  },
  [9]={
    remove={"(+0)"},
    add={"one(-1)(If(icon)attacks: target suffers 1(damage) per modifier drawn)"},
  },
  [10]={
    remove={"(+0)"},
    add={"one(-1)(If(icon)attacks: target suffers 1(damage) per modifier drawn)"},
  },
  [11]={
    remove={"(+1)","(-1)"},
    add={"(-1) if(icon2)attacks / (+1) if(icon)attacks","(-1) if(icon2)attacks / (+1) if(icon)attacks"},
  },
  [12]={
    remove={"(+1)","(-1)"},
    add={"(-1) if(icon2)attacks / (+1) if(icon)attacks","(-1) if(icon2)attacks / (+1) if(icon)attacks"},
  },
  [13]={},
  [14]={
    remove={"(+2)","(-2)"},
    add={"(-2) if(icon2)attacks / (+2) if(icon)attacks","(-2) if(icon2)attacks / (+2) if(icon)attacks"},
  },
  [15]={
    add={"(-1)(wound,self) rolling","(-1)(wound,self) rolling"},
  },
  [16]={
    ignore=ClassApi.PerkType.IgnoreItem,
    --Rolling modifiers enemies draw from your deck can not be ignored.
    add={"Perk Reminder #16"},
  },
  [17]={
    --After you short rest, during next card selection, you may pick your cards at random, including initiative. If you do so, perform (heal) 3 poison,muddle self.
    add={"Perk Reminder #17"},
  },
  [18]={
    --When you long rest, you may declare another long rest for your next round, without losing a card. If you do so, gain impair.
    add={"Perk Reminder #18"},
  },
},
