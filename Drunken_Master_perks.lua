-- Perk List
perks = {
  [1]={},
  [2]={},
  [3]={
    remove={"(null) (shuffle)"},
    add={"(null) (shuffle) +(target) rolling (!target a figure adjacent to the target closest to you)"},
  },
  [4]={
    remove={"(-2)","(+2)"},
    add={"(-1) rolling","(-1) rolling"},
  },
  [5]={},
  [6]={
    remove={"(-1)","(-1)","(-1)","(-1)","(-1)"},
    add={"(-1) rolling","(-1) rolling","(-1) rolling","(-1) rolling","(-1) rolling"},
  },
  [7]={
    remove={"(+0)"},
    add={"(-2) (retaliate) 2 self"},
  },
  [8]={
    remove={"(+0)"},
    add={"(-2) (retaliate) 2 self"},
  },
  [9]={
    remove={"(+0)","(+0)"},
    add={"(-2) (If (icon)attacks: target suffers 1(damage) for each modifier drawn)"},
  },
  [10]={
    remove={"(+0)","(+0)"},
    add={"(-2) (If (icon)attacks: target suffers 1(damage) for each modifier drawn)"},
  },
  [11]={
    remove={"(+1)","(+1)"},
    add={"(+0) (heal) 1, self,poison,muddle","(+0) (heal) 1, self,poison,muddle"},
  },
  [12]={
    remove={"(+1)","(+1)"},
    add={"(+0) (heal) 1, self,poison,muddle","(+0) (heal) 1, self,poison,muddle"},
  },
  [13]={
    --_ Add one (+0)(icon): (attack)3 card
    add={"Perk Reminder #13"},
  },
  [14]={
    add={"curse rolling","curse rolling","curse rolling"},
  },
  [15]={
    ignore=ClassApi.PerkType.IgnoreItem,
    --You may  and enemies with muddle attacking you do not ignore rolling modifiers.
    add={"Perk Reminder #15"},
  },
  [16]={
    --When you short rest, during next card selection you may pick your cards at random, including initiative. If you do so, remove all your negative conditions and perform (heal) 3 poison,muddle self.
    add={"Perk Reminder #16"},
  },
  [17]={
    --When you long rest, you may declare another long rest for your next round without losing a card. If you do so, gain impair.
    add={"Perk Reminder #17"},
  },
},
