-- Perk List
perks = {
  [1]={
    remove={"(+2)"},
  },
  [2]={},
  [3]={
    remove={"(null) (shuffle)"},
    add={"rolling (null) (shuffle)"},
  },
  [4]={
    remove={"(-2)"},
    add={"rolling (-1)","rolling (-1)"},
  },
  [5]={},
  [6]={},
  [7]={
    remove={"(-1)","(-1)","(-1)","(-1)","(-1)"},
    add={"rolling (-1)","rolling (-1)","rolling (-1)","rolling (-1)","rolling (-1)"},
  },
  [8]={
    remove={"(+0)","(+0)"},
    add={"(-2) (retaliate) 2 self"},
  },
  [9]={
    remove={"(+0)","(+0)"},
    add={"(-2) (retaliate) 2 self"},
  },
  [10]={
    remove={"(+0)"},
    add={"(-2) If (icon)attacks: target suffers 1(damage) for each modifier drawn"},
  },
  [11]={
    remove={"(+0)"},
    add={"(-2) If (icon)attacks: target suffers 1(damage) for each modifier drawn"},
  },
  [12]={
    remove={"(+1)","(+1)"},
    add={"(+0) muddle","(+0) muddle"},
  },
  [13]={
    remove={"(+1)","(+1)"},
    add={"(+0) muddle","(+0) muddle"},
  },
  [14]={
    add={"(+0) +(target) !target a random figure adjacent to the target"},
  },
  [15]={
    add={"rolling curse","rolling curse","rolling curse"},
  },
  [16]={
    ignore=ClassApi.PerkType.IgnoreItem,
    --You may  and enemies with muddle attacking you do not ignore rolling modifiers.
    add={"Perk Reminder #16"},
  },
  [17]={
    --When you short rest, during next card selection you may pick your cards at random, including initiative. If you do so, remove all your negative conditions and perform (heal) 3 poison,muddle self.
    add={"Perk Reminder #17"},
  },
  [18]={
    --When you long rest, you may declare another long rest for your next round without losing a card. If you do so, gain impair.
    add={"Perk Reminder #18"},
  },
},
