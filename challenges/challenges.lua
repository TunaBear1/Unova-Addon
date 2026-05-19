local unbearable = {
    object_type = "Challenge",
    key = "unbearable",
    rules = {
        custom = {
            {id = 'no_shop_jokers'},
            {id = 'debuff_played_cards'},
            {id = 'unova_X_blind_size', value = 3},
        },
        modifiers = {
            {id = 'joker_slots', value = 2},
            {id = 'hands', value = 2},
            {id = 'consumable_slots', value = 4},
            {id = 'dollars', value = 10},
        },
    },
    jokers = {
      {id = "j_poke_teddiursa", eternal = true},
      {id = "j_unova_cubchoo", eternal = true},
    },
    consumeables = {
      {id = "c_poke_colorless_energy"},
      {id = "c_poke_water_energy"},
    },
    vouchers = {
    },
    deck = {
      cards = {
		{s ='C',r='2',},{s ='C',r='3',},{s ='C',r='4',},{s ='C',r='5',},{s ='C',r='6',},{s ='C',r='7',},{s ='C',r='8',},
		{s ='C',r='9',},{s ='C',r='T',},{s ='C',r='J',},{s ='C',r='Q',},{s ='C',r='K',},{s ='C',r='A',},
		{s ='C',r='2',},{s ='C',r='3',},{s ='C',r='4',},{s ='C',r='5',},{s ='C',r='6',},{s ='C',r='7',},{s ='C',r='8',},
		{s ='C',r='9',},{s ='C',r='T',},{s ='C',r='J',},{s ='C',r='Q',},{s ='C',r='K',},{s ='C',r='A',},
		{s ='C',r='2',},{s ='C',r='3',},{s ='C',r='4',},{s ='C',r='5',},{s ='C',r='6',},{s ='C',r='7',},{s ='C',r='8',},
		{s ='C',r='9',},{s ='C',r='T',},{s ='C',r='J',},{s ='C',r='Q',},{s ='C',r='K',},{s ='C',r='A',},
		{s ='C',r='2',},{s ='C',r='3',},{s ='C',r='4',},{s ='C',r='5',},{s ='C',r='6',},{s ='C',r='7',},{s ='C',r='8',},
		{s ='C',r='9',},{s ='C',r='T',},{s ='C',r='J',},{s ='C',r='Q',},{s ='C',r='K',},{s ='C',r='A',},
        },
      type = 'Challenge Deck'
    },
    restrictions = {
        banned_cards = {
            {id = 'c_judgement'},
            {id = 'c_poke_pokeball'},
            {id = 'c_poke_greatball'},
            {id = 'c_poke_ultraball'},
            {id = 'c_poke_masterball'},
            {id = 'c_ankh'},
            {id = 'c_wraith'},
            {id = 'c_soul'},
            {id = 'v_blank'},
            {id = 'v_antimatter'},
            {id = 'p_buffoon_normal_1', ids = {
                'p_buffoon_normal_1','p_buffoon_normal_2','p_buffoon_jumbo_1','p_buffoon_mega_1',
            }},
        },
        banned_tags = {
            {id = 'tag_rare'},
            {id = 'tag_uncommon'},
            {id = 'tag_holo'},
            {id = 'tag_polychrome'},
            {id = 'tag_negative'},
            {id = 'tag_foil'},
            {id = 'tag_buffoon'},
            {id = 'tag_top_up'},
            {id = 'tag_poke_shiny_tag'},
            {id = 'tag_poke_stage_one_tag'},
            {id = 'tag_poke_safari_tag'}
        },
        banned_other = {
            {id = 'bl_club', type = 'blind'},
            {id = 'bl_final_heart', type = 'blind'},
            {id = 'bl_final_leaf', type = 'blind'},
        }
    },
}

return {name = "Challenges",
        list = {
            unbearable,
        }
}
