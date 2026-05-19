-- Timburr 532
local timburr={
  name = "timburr",
  pos = {x = 12, y = 35},
  config = {extra = {hands = 1, discards = 1, rounds = 5, chips = 50}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.hands, center.ability.extra.discards, center.ability.extra.rounds, center.ability.extra.chips}}
  end,
  rarity = 1, 
  cost = 6, 
  stage = "Basic",
  ptype = "Fighting",
  atlas = "AtlasJokersBasicNatdex",
  gen = 5,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    return level_evo(self, card, context, "j_unova_gurdurr")
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
    G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.discards
    local to_decrease = math.min(G.GAME.current_round.hands_left - 1, card.ability.extra.hands)
    if to_decrease > 0 then
      ease_hands_played(-to_decrease)
    end
    ease_discard(card.ability.extra.discards)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
    G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.discards
    local to_decrease = math.min(G.GAME.current_round.discards_left - 1, card.ability.extra.discards)
    ease_hands_played(card.ability.extra.hands)
    if to_decrease > 0 then
      ease_discard(-to_decrease)
    end
  end
}

-- Gurdurr 533
local gurdurr={
  name = "gurdurr",
  pos = {x = 14, y = 35},
  config = {extra = {hands = 2, discards = 2, chips = 200}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_linkcable
    end
    return {vars = {center.ability.extra.hands, center.ability.extra.discards, center.ability.extra.chips}}
  end,
  rarity = 3, 
  cost = 8, 
  item_req = "linkcable",
  stage = "One",
  ptype = "Fighting",
  atlas = "AtlasJokersBasicNatdex",
  gen = 5,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    return item_evo(self, card, context, "j_unova_conkeldurr")
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
    G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.discards
    local to_decrease = math.min(G.GAME.current_round.hands_left - 1, card.ability.extra.hands)
    if to_decrease > 0 then
      ease_hands_played(-to_decrease)
    end
    if not from_debuff then
      ease_discard(card.ability.extra.discards)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
    G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.discards
    local to_decrease = math.min(G.GAME.current_round.discards_left - 1, card.ability.extra.discards)
    ease_hands_played(card.ability.extra.hands)
    if to_decrease > 0 then
      ease_discard(-to_decrease)
    end
  end
}

-- Conkeldurr 534
local conkeldurr={
  name = "conkeldurr",
  pos = {x = 16, y = 35},
  config = {extra = {hands = 3, discards = 4, chips = 500}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.hands, center.ability.extra.discards, center.ability.extra.chips}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Fighting",
  atlas = "AtlasJokersBasicNatdex",
  gen = 5,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
    G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.discards
    local to_decrease = math.min(G.GAME.current_round.hands_left - 1, card.ability.extra.hands)
    if to_decrease > 0 then
      ease_hands_played(-to_decrease)
    end
    if not from_debuff then
      ease_discard(card.ability.extra.discards)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
    G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.discards
    local to_decrease = math.min(G.GAME.current_round.discards_left - 1, card.ability.extra.discards)
    ease_hands(card.ability.extra.hands)
    if to_decrease > 0 then
      ease_hands_played(-to_decrease)
    end
  end
}

return {name = "Conkeldurr", 
        list = { timburr, gurdurr, conkeldurr, }
}
