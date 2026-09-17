-- Perk List
perks = {
  [1]={},
  [2]={},
  [3]={
    remove={"(null)(shuffle)"},
    add={"(null)(shuffle) +(target) rolling (target a figure adjacent to the target)"},
  },
  [4]={
    remove={"(-2)"},
    add={"(-1) muddle rolling","(-1) muddle rolling"},
  },
  [5]={
    remove={"(-1)","(-1)"},
    add={"(-1) muddle rolling","(-1) muddle rolling"},
  },
  [6]={
    remove={"(-1)","(-1)"},
    add={"(-1) muddle rolling","(-1) muddle rolling"},
  },
  [7]={},
  [8]={
    remove={"(-1)"},
    add={"(-2) ((icon): (attack)4)"},
  },
  [9]={
    remove={"(+0)","(+0)"},
    add={"(+0) ((heal) 1, (target)(icon))","(+0) ((heal) 1, (target)(icon))"},
  },
  [10]={
    remove={"(+0)","(+0)"},
    add={"(+0) ((heal) 1, (target)(icon))","(+0) ((heal) 1, (target)(icon))"},
  },
  [11]={
    remove={"(+0)"},
    add={"one(-1)(If(icon)attacks: target suffers 1(damage) per modifier drawn.)"},
  },
  [12]={
    remove={"(+0)"},
    add={"one(-1)(If(icon)attacks: target suffers 1(damage) per modifier drawn.)"},
  },
  [13]={
    add={"(-1)(wound,self) rolling"},
  },
  [14]={
    add={"(-1)(wound,self) rolling"},
  },
  [15]={
    ignore=ClassApi.PerkType.IgnoreItem,
    --You may  and enemies attacking you can not ignore rolling modifiers.
    add={"Perk Reminder #15"},
  },
  [16]={
    --When you short rest, during next card selection you may pick your cards at random, including initiative. If you do so, perform (heal) 3 poison,muddle self.
    add={"Perk Reminder #16"},
  },
  [17]={
    --When you long rest, you may declare another long rest for your next round, without losing a card. If you do so, gain impair.
    add={"Perk Reminder #17"},
  },
},
