-- Deerling 585

local deerling_spring={ 
  name = "deerling_spring",
  pos = {x = 2, y = 1},
  config = {extra = {mult = 1, suit = "Hearts"}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local deck_data = ''
    local suit_count = 0
    if G.playing_cards then
      for k, v in pairs(G.playing_cards) do
        if v:is_suit(center.ability.extra.suit) then suit_count = suit_count + 1 end
      end
      deck_data = '['..tostring(suit_count)..'/'..tostring(math.ceil(#G.playing_cards * 0.4))..'] '
    end
    return {vars = {center.ability.extra.mult, localize(center.ability.extra.suit, 'suits_singular'), center.ability.extra.mult * suit_count, deck_data}}
  end,
  rarity = 2,
  cost = 6,
  stage = "Basic",
  ptype = "Grass",
  atlas = "AtlasJokersBasicGen05",
  gen = 5,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Suit = 0
        for k, v in pairs(G.playing_cards) do
          if v:is_suit(card.ability.extra.suit) then Suit = Suit + 1 end
        end
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult * Suit}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult * Suit
        }
      end
    end
    return deck_suit_evo(self, card, context, "j_unova_sawsbuck_spring", card.ability.extra.suit, .4)
  end,
}

local deerling_summer={ 
  name = "deerling_summer",
  pos = {x = 4, y = 1},
  config = {extra = {mult = 1, suit = "Clubs"}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local deck_data = ''
    local suit_count = 0
    if G.playing_cards then
      for k, v in pairs(G.playing_cards) do
        if v:is_suit(center.ability.extra.suit) then suit_count = suit_count + 1 end
      end
      deck_data = '['..tostring(suit_count)..'/'..tostring(math.ceil(#G.playing_cards * 0.4))..'] '
    end
    return {vars = {center.ability.extra.mult, localize(center.ability.extra.suit, 'suits_singular'), center.ability.extra.mult * suit_count, deck_data}}
  end,
  rarity = 2,
  cost = 6,
  stage = "Basic",
  ptype = "Grass",
  atlas = "AtlasJokersBasicGen05",
  gen = 5,
  no_collection = true,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Suit = 0
        for k, v in pairs(G.playing_cards) do
          if v:is_suit(card.ability.extra.suit) then Suit = Suit + 1 end
        end
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult * Suit}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult * Suit
        }
      end
    end
    return deck_suit_evo(self, card, context, "j_unova_sawsbuck_summer", card.ability.extra.suit, .4)
  end,
}

local deerling_autumn={ 
  name = "deerling_autumn",
  pos = {x = 6, y = 1},
  config = {extra = {mult = 1, suit = "Diamonds"}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local deck_data = ''
    local suit_count = 0
    if G.playing_cards then
      for k, v in pairs(G.playing_cards) do
        if v:is_suit(center.ability.extra.suit) then suit_count = suit_count + 1 end
      end
      deck_data = '['..tostring(suit_count)..'/'..tostring(math.ceil(#G.playing_cards * 0.4))..'] '
    end
    return {vars = {center.ability.extra.mult, localize(center.ability.extra.suit, 'suits_singular'), center.ability.extra.mult * suit_count, deck_data}}
  end,
  rarity = 2,
  cost = 6,
  stage = "Basic",
  ptype = "Grass",
  atlas = "AtlasJokersBasicGen05",
  gen = 5,
  no_collection = true,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Suit = 0
        for k, v in pairs(G.playing_cards) do
          if v:is_suit(card.ability.extra.suit) then Suit = Suit + 1 end
        end
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult * Suit}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult * Suit
        }
      end
    end
    return deck_suit_evo(self, card, context, "j_unova_sawsbuck_autumn", card.ability.extra.suit, .4)
  end,
}

local deerling_winter={ 
  name = "deerling_winter",
  pos = {x = 8, y = 1},
  config = {extra = {mult = 1, suit = "Spades"}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local deck_data = ''
    local suit_count = 0
    if G.playing_cards then
      for k, v in pairs(G.playing_cards) do
        if v:is_suit(center.ability.extra.suit) then suit_count = suit_count + 1 end
      end
      deck_data = '['..tostring(suit_count)..'/'..tostring(math.ceil(#G.playing_cards * 0.4))..'] '
    end
    return {vars = {center.ability.extra.mult, localize(center.ability.extra.suit, 'suits_singular'), center.ability.extra.mult * suit_count, deck_data}}
  end,
  rarity = 2,
  cost = 6,
  stage = "Basic",
  ptype = "Grass",
  atlas = "AtlasJokersBasicGen05",
  gen = 5,
  no_collection = true,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Suit = 0
        for k, v in pairs(G.playing_cards) do
          if v:is_suit(card.ability.extra.suit) then Suit = Suit + 1 end
        end
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult * Suit}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult * Suit
        }
      end
    end
    return deck_suit_evo(self, card, context, "j_unova_sawsbuck_winter", card.ability.extra.suit, .4)
  end,
}

-- Sawsbluck 586

local sawsbuck_spring={ 
  name = "sawsbuck_spring",
  pos = {x = 10, y = 1},
  config = {extra = {mult = 3, money = 3, suit = "Hearts"}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local suit_count = 0
    if G.playing_cards then
      for k, v in pairs(G.playing_cards) do
        if v:is_suit(center.ability.extra.suit) then suit_count = suit_count + 1 end
      end
    end
    return {vars = {center.ability.extra.mult, localize(center.ability.extra.suit, 'suits_singular'), center.ability.extra.mult * suit_count, center.ability.extra.money, localize(center.ability.extra.suit, 'suits_plural'),}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Grass",
  atlas = "AtlasJokersBasicGen05",
  gen = 5,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        local heart_count = 0
        for i=1, #context.scoring_hand do
          if context.scoring_hand[i]:is_suit(card.ability.extra.suit) then heart_count = heart_count + 1 end
        end
        if heart_count > 2 then
          local earned = ease_poke_dollars(card, "sawsbuck_spring", card.ability.extra.money, true)
          return {
            dollars = earned,
            card = card
          }
        end  
      end
      if context.joker_main then
        local Suit = 0
        for k, v in pairs(G.playing_cards) do
          if v:is_suit(card.ability.extra.suit) then Suit = Suit + 1 end
        end
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult * Suit}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult * Suit
        }
      end
    end
  end,
}

local sawsbuck_summer={ 
  name = "sawsbuck_summer",
  pos = {x = 0, y = 2},
  config = {extra = {mult = 3, money = 3, suit = "Clubs"}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local suit_count = 0
    if G.playing_cards then
      for k, v in pairs(G.playing_cards) do
        if v:is_suit(center.ability.extra.suit) then suit_count = suit_count + 1 end
      end
    end
    return {vars = {center.ability.extra.mult, localize(center.ability.extra.suit, 'suits_singular'), center.ability.extra.mult * suit_count, center.ability.extra.money, localize(center.ability.extra.suit, 'suits_plural'),}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Grass",
  atlas = "AtlasJokersBasicGen05",
  gen = 5,
  no_collection = true,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        local heart_count = 0
        for i=1, #context.scoring_hand do
          if context.scoring_hand[i]:is_suit(card.ability.extra.suit) then heart_count = heart_count + 1 end
        end
        if heart_count > 2 then
          local earned = ease_poke_dollars(card, "sawsbuck_spring", card.ability.extra.money, true)
          return {
            dollars = earned,
            card = card
          }
        end  
      end
      if context.joker_main then
        local Suit = 0
        for k, v in pairs(G.playing_cards) do
          if v:is_suit(card.ability.extra.suit) then Suit = Suit + 1 end
        end
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult * Suit}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult * Suit
        }
      end
    end
  end,
}

local sawsbuck_autumn={ 
  name = "sawsbuck_autumn",
  pos = {x = 2, y = 2},
  config = {extra = {mult = 3, money = 3, suit = "Diamonds"}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local suit_count = 0
    if G.playing_cards then
      for k, v in pairs(G.playing_cards) do
        if v:is_suit(center.ability.extra.suit) then suit_count = suit_count + 1 end
      end
    end
    return {vars = {center.ability.extra.mult, localize(center.ability.extra.suit, 'suits_singular'), center.ability.extra.mult * suit_count, center.ability.extra.money, localize(center.ability.extra.suit, 'suits_plural'),}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Grass",
  atlas = "AtlasJokersBasicGen05",
  gen = 5,
  no_collection = true,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        local heart_count = 0
        for i=1, #context.scoring_hand do
          if context.scoring_hand[i]:is_suit(card.ability.extra.suit) then heart_count = heart_count + 1 end
        end
        if heart_count > 2 then
          local earned = ease_poke_dollars(card, "sawsbuck_spring", card.ability.extra.money, true)
          return {
            dollars = earned,
            card = card
          }
        end  
      end
      if context.joker_main then
        local Suit = 0
        for k, v in pairs(G.playing_cards) do
          if v:is_suit(card.ability.extra.suit) then Suit = Suit + 1 end
        end
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult * Suit}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult * Suit
        }
      end
    end
  end,
}

local sawsbuck_winter={ 
  name = "sawsbuck_winter",
  pos = {x = 4, y = 2},
  config = {extra = {mult = 3, money = 3, suit = "Spades"}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local suit_count = 0
    if G.playing_cards then
      for k, v in pairs(G.playing_cards) do
        if v:is_suit(center.ability.extra.suit) then suit_count = suit_count + 1 end
      end
    end
    return {vars = {center.ability.extra.mult, localize(center.ability.extra.suit, 'suits_singular'), center.ability.extra.mult * suit_count, center.ability.extra.money, localize(center.ability.extra.suit, 'suits_plural'),}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Grass",
  atlas = "AtlasJokersBasicGen05",
  gen = 5,
  no_collection = true,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        local heart_count = 0
        for i=1, #context.scoring_hand do
          if context.scoring_hand[i]:is_suit(card.ability.extra.suit) then heart_count = heart_count + 1 end
        end
        if heart_count > 2 then
          local earned = ease_poke_dollars(card, "sawsbuck_spring", card.ability.extra.money, true)
          return {
            dollars = earned,
            card = card
          }
        end  
      end
      if context.joker_main then
        local Suit = 0
        for k, v in pairs(G.playing_cards) do
          if v:is_suit(card.ability.extra.suit) then Suit = Suit + 1 end
        end
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult * Suit}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult * Suit
        }
      end
    end
  end,
}

return {name = "Sawsbuck", 
list = {deerling_spring, deerling_summer, deerling_autumn, deerling_winter, sawsbuck_spring, sawsbuck_summer, sawsbuck_autumn, sawsbuck_winter,},
}
