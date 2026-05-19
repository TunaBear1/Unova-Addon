return {
    descriptions = {
        Joker = {

	    j_unova_lillipup = {
                name = "Lillipup",
                text = {
                    "This Joker gains {X:mult,C:white}X#2#{} Mult",
                    "for each {C:attention}blind{} skipped.",
                    "{C:inactive,s:0.8}(Evolves at {X:mult,C:white,s:0.8}X#1#{C:inactive,s:0.8} / {X:inactive,C:white,s:0.8}X#3#{C:inactive,s:0.8} Mult)",
                }
            },
	    j_unova_herdier = {
                name = "Herdier",
                text = {
                    "This Joker gains {X:mult,C:white}X#2#{} Mult",
                    "for each {C:attention}blind{} skipped.",
                    "{C:inactive,s:0.8}(Evolves at {X:mult,C:white,s:0.8}X#1#{C:inactive,s:0.8} / {X:inactive,C:white,s:0.8}X#3#{C:inactive,s:0.8} Mult)",
                }
            },
	    j_unova_stoutland = {
                name = "Stoutland",
                text = {
                    "This Joker gains {X:mult,C:white}X#2#{} Mult",
                    "for each {C:attention}blind{} skipped.",
                    "Creates a {C:attention}Speed Tag{} when",
                    "the {C:attention}Boss Blind{} is defeated",
                    "{C:inactive,s:0.8}(Currently {X:mult,C:white,s:0.8}X#1#{C:inactive,s:0.8} Mult)",
                }
            },

            j_unova_timburr = {
                name = "Timburr",
                text = {
                    "{C:chips}-#1#{} hand",
                    "{C:mult}+#2#{} discard",
                    "{C:chips}+#4#{} Chips",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_unova_gurdurr = {
                name = "Gurdurr",
                text = {
                    "{C:chips}-#1#{} hands",
                    "{C:mult}+#2#{} discards",
                    "{C:chips}+#3#{} Chips",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Linking Cord{C:inactive,s:0.8})",
                } 
            },
            j_unova_conkeldurr = {
                name = "Conkeldurr",
                text = {
                    "{C:chips}-#1#{} hands",
                    "{C:mult}+#2#{} discards",
                    "{C:chips}+#3#{} Chips",
                    "{C:inactive,s:0.8}(Hands are set to 1 if start with 0 or less)",
                } 
            },

            j_unova_deerling_spring = {
                name = "Deerling (Spring)",
                text = {
                    "This Joker gives {C:mult}+#1#{} Mult",
                    "per each {C:hearts}#2#{} in {C:attention}full deck{}.",
                    "{C:inactive,s:0.8}(Currently {C:mult,s:0.8}+#3#{C:inactive,s:0.8} Mult)",                    
                    "{C:inactive,s:0.8}(Evolves when deck is >= 40% #4#{C:hearts,s:0.8}#2#{C:inactive,s:0.8} cards)",
                }
            },
            j_unova_deerling_summer = {
                name = "Deerling (Summer)",
                text = {
                    "This Joker gives {C:mult}+#1#{} Mult",
                    "per each {C:clubs}#2#{} in {C:attention}full deck{}.",
                    "{C:inactive,s:0.8}(Currently {C:mult,s:0.8}+#3#{C:inactive,s:0.8} Mult)",                    
                    "{C:inactive,s:0.8}(Evolves when deck is >= 40% #4#{C:clubs,s:0.8}#2#{C:inactive,s:0.8} cards)",
                }
            },
            j_unova_deerling_autumn = {
                name = "Deerling (Autumn)",
                text = {
                    "This Joker gives {C:mult}+#1#{} Mult",
                    "per each {C:diamonds}#2#{} in {C:attention}full deck{}.",
                    "{C:inactive,s:0.8}(Currently {C:mult,s:0.8}+#3#{C:inactive,s:0.8} Mult)",                    
                    "{C:inactive,s:0.8}(Evolves when deck is >= 40% #4#{C:diamonds,s:0.8}#2#{C:inactive,s:0.8} cards)",
                }
            },
            j_unova_deerling_winter = {
                name = "Deerling (Winter)",
                text = {
                    "This Joker gives {C:mult}+#1#{} Mult",
                    "per each {C:spades}#2#{} in {C:attention}full deck{}.",
                    "{C:inactive,s:0.8}(Currently {C:mult,s:0.8}+#3#{C:inactive,s:0.8} Mult)",                    
                    "{C:inactive,s:0.8}(Evolves when deck is >= 40% #4#{C:spades,s:0.8}#2#{C:inactive,s:0.8} cards)",
                }
            },

            j_unova_sawsbuck_spring = {
                name = "Sawsbuck (Spring)",
                text = {
                    "This Joker gives {C:mult}+#1#{} Mult",
                    "per each {C:hearts}#2#{} in {C:attention}full deck{}.",
                    "Earn {C:money}$#4#{} if played hand contains",
                    "{C:attention}3{} or more scoring {C:hearts}#5#{}.",
                    "{C:inactive,s:0.8}(Currently {C:mult,s:0.8}+#3#{C:inactive,s:0.8} Mult)",  
                }
            },
            j_unova_sawsbuck_summer = {
                name = "Sawsbuck (Summer)",
                text = {
                    "This Joker gives {C:mult}+#1#{} Mult",
                    "per each {C:clubs}#2#{} in {C:attention}full deck{}.",
                    "Earn {C:money}$#4#{} if played hand contains",
                    "{C:attention}3{} or more scoring {C:clubs}#5#{}.",
                    "{C:inactive,s:0.8}(Currently {C:mult,s:0.8}+#3#{C:inactive,s:0.8} Mult)",  
                }
            },
            j_unova_sawsbuck_autumn = {
                name = "Sawsbuck (Autumn)",
                text = {
                    "This Joker gives {C:mult}+#1#{} Mult",
                    "per each {C:diamonds}#2#{} in {C:attention}full deck{}.",
                    "Earn {C:money}$#4#{} if played hand contains",
                    "{C:attention}3{} or more scoring {C:diamonds}#5#{}.",
                    "{C:inactive,s:0.8}(Currently {C:mult,s:0.8}+#3#{C:inactive,s:0.8} Mult)",  
                }
            },
            j_unova_sawsbuck_winter = {
                name = "Sawsbuck (Winter)",
                text = {
                    "This Joker gives {C:mult}+#1#{} Mult",
                    "per each {C:spades}#2#{} in {C:attention}full deck{}.",
                    "Earn {C:money}$#4#{} if played hand contains",
                    "{C:attention}3{} or more scoring {C:spades}#5#{}.",
                    "{C:inactive,s:0.8}(Currently {C:mult,s:0.8}+#3#{C:inactive,s:0.8} Mult)",   
                }
            },

	    j_unova_cubchoo = {
                name = "Cubchoo",
                text = {
                    "This Joker gains {C:mult}+#2#{} Mult",
                    "per scoring {C:clubs}#4#{} in played hand",
                    "Lose {C:mult}#3#{} Mult if hand has no scoring {C:clubs}#5#{}",
                    "{C:inactive,s:0.8}(Evolves at {C:mult,s:0.8}+#1#{C:inactive,s:0.8} / #6# Mult)",
                }
            },
	    j_unova_beartic = {
                name = "Beartic",
                text = {
                    "This Joker gains {C:mult}+#2#{} Mult",
                    "per scoring {C:clubs}#4#{} in played hand",
                    "Lose {C:mult}#3#{} Mult if hand has no scoring {C:clubs}#5#{}",
                    "{C:inactive,s:0.8}(Currently {C:mult,s:0.8}+#1#{C:inactive,s:0.8} Mult)"
                }
            },
        },
    },
        misc = {
            challenge_names = {
            c_unova_unbearable = "UnBEARable"
            },
            v_text = {
               ch_c_unova_X_blind_size = {"{X:mult,C:white}X#1#{} Blind size"},
            },
        }       
}