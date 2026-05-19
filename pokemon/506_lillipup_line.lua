-- Lillipup 506
local lillipup = {
  name = "lillipup",
  pos = {x = 20, y = 33},
  config = {extra = {Xmult = 1, Xmult_mod = 0.25}, evo_rqmt = 1.5},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod, self.config.evo_rqmt}}
  end,
  rarity = 1,
  cost = 5,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "AtlasJokersBasicNatdex",
  gen = 5,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if not context.blueprint and context.skip_blind then
      card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
      return {
        message = localize('k_upgrade_ex'),
        colour = G.C.MULT
      }
    end
    if context.joker_main and card.ability.extra.Xmult > 1 then
      return {
        message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.Xmult}}, 
        colour = G.C.MULT,
        Xmult_mod = card.ability.extra.Xmult
      }
    end
    return scaling_evo(self, card, context, "j_unova_herdier", card.ability.extra.Xmult, self.config.evo_rqmt)
  end,
}

-- Herdier 507
local herdier = {
  name = "herdier",
  pos = {x = 22, y = 33},
  config = {extra = {Xmult = 1.5, Xmult_mod = 0.5}, evo_rqmt = 4},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod, self.config.evo_rqmt}}
  end,
  rarity = 2,
  cost = 8,
  stage = "One",
  ptype = "Colorless",
  atlas = "AtlasJokersBasicNatdex",
  gen = 5,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if not context.blueprint and context.skip_blind then
      card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
      return {
        message = localize('k_upgrade_ex'),
        colour = G.C.MULT
      }
    end
    if context.joker_main and card.ability.extra.Xmult > 1 then
      return {
        message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.Xmult}}, 
        colour = G.C.MULT,
        Xmult_mod = card.ability.extra.Xmult
      }
    end
    return scaling_evo(self, card, context, "j_unova_stoutland", card.ability.extra.Xmult, self.config.evo_rqmt)
  end,
}

-- Stoutland 508
local stoutland = {
  name = "stoutland",
  pos = {x = 24, y = 33},
  config = {extra = {Xmult = 4, Xmult_mod = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {key = 'tag_skip', set = 'Tag', specific_vars = {5, G.GAME.skips or 0}}
    end
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod, self.config.evo_rqmt}}
  end,
  rarity = "poke_safari", 
  cost = 10,
  stage = "Two",
  ptype = "Colorless",
  atlas = "AtlasJokersBasicNatdex",
  gen = 5,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if not context.blueprint and context.skip_blind then
      card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
      return {
        message = localize('k_upgrade_ex'),
        colour = G.C.MULT
      }
    end
    if context.joker_main and card.ability.extra.Xmult > 1 then
      return {
        message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.Xmult}}, 
        colour = G.C.MULT,
        Xmult_mod = card.ability.extra.Xmult
      }
    end
    if context.end_of_round and not context.individual and not context.repetition and G.GAME.blind.boss then
      G.E_MANAGER:add_event(Event({
        func = (function()
            add_tag(Tag('tag_skip'))
            play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
            play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true
        end)
      }))
    end
  end,
}
return {name = "Stoutland", 
list = {lillipup, herdier, stoutland,},
}
