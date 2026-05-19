-- Cubchoo 613
local cubchoo={
  name = "cubchoo",
  pos = {x = 24, y = 40},
  config = {extra = {mult = 0, mult_mod = 1, mult_minus = 20, suit = "Clubs", clubs_scored = 0}, evo_rqmt = 40},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.mult_minus, localize(center.ability.extra.suit, 'suits_singular'), localize(center.ability.extra.suit, 'suits_plural') , self.config.evo_rqmt}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "AtlasJokersBasicNatdex",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)  
    if context.cardarea == G.jokers and context.scoring_hand then
      if not context.blueprint then
        if context.before then
          local club_count = 0
          for i=1, #context.scoring_hand do
            if context.scoring_hand[i]:is_suit(card.ability.extra.suit) then club_count = club_count + 1 end
          end
          card.ability.extra.clubs_scored = club_count
          if card.ability.extra.clubs_scored == 0 then
            card.ability.extra.mult = math.max(card.ability.extra.mult - card.ability.extra.mult_minus, 0)
            return {
              message = localize{type='variable',key='a_mult_minus',vars={card.ability.extra.mult_minus}},
              colour = G.C.RED, card = card
	      }
            else
              card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.clubs_scored * card.ability.extra.mult_mod
              return {
                message = localize('k_upgrade_ex'),
                colour = G.C.MULT
                }
          end
          card.ability.extra.clubs_scored = 0
        end
      end
      if context.joker_main and card.ability.extra.mult > 0 then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult 
        }
      end
    end
    return scaling_evo(self, card, context, "j_unova_beartic", card.ability.extra.mult, self.config.evo_rqmt)
  end,
}

-- Beartic 614
local beartic={
  name = "beartic",
  pos = {x = 26, y = 40},
  config = {extra = {mult = 0, mult_mod = 3, mult_minus = 25, suit = "Clubs", clubs_scored = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'designed_by', vars = {"TunaBear"}}
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.mult_minus, localize(center.ability.extra.suit, 'suits_singular'), localize(center.ability.extra.suit, 'suits_plural')}}
  end,
  designer = "TunaBear",
  rarity = "poke_safari", 
  cost = 9, 
  stage = "One", 
  ptype = "Water",
  atlas = "AtlasJokersBasicNatdex",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)  
    if context.cardarea == G.jokers and context.scoring_hand then
      if not context.blueprint then
        if context.before then
          local club_count = 0
          for i=1, #context.scoring_hand do
            if context.scoring_hand[i]:is_suit(card.ability.extra.suit) then club_count = club_count + 1 end
          end
          card.ability.extra.clubs_scored = club_count
          if card.ability.extra.clubs_scored == 0 then
            card.ability.extra.mult = math.max(card.ability.extra.mult - card.ability.extra.mult_minus, 0)
            return {
              message = localize{type='variable',key='a_mult_minus',vars={card.ability.extra.mult_minus}},
              colour = G.C.RED, card = card
              }
            else
              card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.clubs_scored * card.ability.extra.mult_mod
              return {
                message = localize('k_upgrade_ex'),
                colour = G.C.MULT
                }
          end
          card.ability.extra.clubs_scored = 0
        end
      end
      if context.joker_main and card.ability.extra.mult > 0 then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult,
        }
      end
    end
  end,
}

return {name = "Beartic", 
list = {cubchoo, beartic, },
}
