config = {}
config.adminPerms = {
    'perm.developer',
    'admin.permissao'
}
config.webhooks = {
    ['arrest'] = 'https://discord.com/api/webhooks/1092800025702182962/-k3t3O9cuFwIlBlbSwviNzM81I8vMz9c-WQi7fadiztl8Z8YEJhccI9sAxLi6yhYSE48',
    ['demitir'] = 'https://discord.com/api/webhooks/1152382329990426624/Gip63PuIT7b2r0jRBKaluIWXFQ6SbO4Fr8ZZzPCLrfqVyVfirP9EFdmvhi98RRzxhfv8',
    ['contratar/promover'] = 'https://discord.com/api/webhooks/1152382529526042795/TP3TYRmuPfdkqZmBXWxDTnHzP4zocA20YfgdALkWh8VKOQ1m5juN-zkfxkCW8JfbUJk8',
}
config.hireReward = 50000
config.prisonCoords = vec3(1673.77, 2511.58, 47.42)
config.arrestCoords = {
    {coord = vec3(-412.87,1084.33,323.85), range = 80.0},
    {coord = vec3(-955.08,-2050.74,9.4), range = 80.0},
    {coord = vec3(-1091.41,-823.99,5.48), range = 80.0},
    {coord = vec3(2622.84,5271.62,45.48), range = 80.0},
    {coord = vec3(-2049.42,-456.93,8.58), range = 80.0},
    {coord = vec3(604.77,-7.63,82.78), range = 80.0},
}
config.cargos = {
    ['TATICO'] = {
        -- done
        ['Comando [TATICO]"]'] = {
            tier = 23,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Sub-Comando [TATICO]'] = {
            tier = 22,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Coronel [TATICO]'] = {
            tier = 21,
            permissions = {
                hire = true,
                demote = true
            }
        },

        ['Major [TATICO]'] = {
            tier = 20,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Capitao [TATICO]'] = {
            tier = 19,
            permissions = {
                hire = false,
                demote = false
            }
        },
        
        ['1 Tenente [TATICO]'] = {
            tier = 18,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['2 Tenente [TATICO]'] = {
            tier = 17,
            permissions = {
                hire = false,
                demote = false
            }
        },

        ['Cadete [TATICO]'] = {
            tier = 16,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Sub Tenente [TATICO]'] = {
            tier = 15,
            permissions = {
                hire = false,
                demote = false
            }
        },
        
        ['1 Sargento [TATICO]'] = {
            tier = 14,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['2 Sargento [TATICO]'] = {
            tier = 13,
            permissions = {
                hire = false,
                demote = false
            }
        },
        ['3 Sargento [TATICO]'] = {
            tier = 12,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Cabo [TATICO]'] = {
            tier = 11,
            permissions = {
                hire = false,
                demote = false
            }
        },
        ['Cabo [TATICO]'] = {
            tier = 10,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Penal [TATICO]'] = {
            tier = 9,
            permissions = {
                hire = true,
                demote = false
            }
        }
    },
    ['MILITAR'] = {
        -- done
        ['Comando [MILITAR]"]'] = {
            tier = 23,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Sub-Comando [MILITAR]'] = {
            tier = 22,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Coronel [MILITAR]'] = {
            tier = 21,
            permissions = {
                hire = true,
                demote = true
            }
        },

        ['Major [MILITAR]'] = {
            tier = 20,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Capitao [MILITAR]'] = {
            tier = 19,
            permissions = {
                hire = false,
                demote = false
            }
        },
        
        ['1 Tenente [MILITAR]'] = {
            tier = 18,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['2 Tenente [MILITAR]'] = {
            tier = 17,
            permissions = {
                hire = false,
                demote = false
            }
        },

        ['Cadete [MILITAR]'] = {
            tier = 16,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Sub Tenente [MILITAR]'] = {
            tier = 15,
            permissions = {
                hire = false,
                demote = false
            }
        },
        
        ['1 Sargento [MILITAR]'] = {
            tier = 14,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['2 Sargento [MILITAR]'] = {
            tier = 13,
            permissions = {
                hire = false,
                demote = false
            }
        },
        ['3 Sargento [MILITAR]'] = {
            tier = 12,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Cabo [MILITAR]'] = {
            tier = 11,
            permissions = {
                hire = false,
                demote = false
            }
        },
        ['Cabo [MILITAR]'] = {
            tier = 10,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Penal [MILITAR]'] = {
            tier = 9,
            permissions = {
                hire = true,
                demote = false
            }
        }
    },
    ['GIRO'] = {
        -- done
        ['Comando [GIRO]"]'] = {
            tier = 23,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Sub-Comando [GIRO]'] = {
            tier = 22,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Coronel [GIRO]'] = {
            tier = 21,
            permissions = {
                hire = true,
                demote = true
            }
        },

        ['Major [GIRO]'] = {
            tier = 20,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Capitao [GIRO]'] = {
            tier = 19,
            permissions = {
                hire = false,
                demote = false
            }
        },
        
        ['1 Tenente [GIRO]'] = {
            tier = 18,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['2 Tenente [GIRO]'] = {
            tier = 17,
            permissions = {
                hire = false,
                demote = false
            }
        },

        ['Cadete [GIRO]'] = {
            tier = 16,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Sub Tenente [GIRO]'] = {
            tier = 15,
            permissions = {
                hire = false,
                demote = false
            }
        },
        
        ['1 Sargento [GIRO]'] = {
            tier = 14,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['2 Sargento [GIRO]'] = {
            tier = 13,
            permissions = {
                hire = false,
                demote = false
            }
        },
        ['3 Sargento [GIRO]'] = {
            tier = 12,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Cabo [GIRO]'] = {
            tier = 11,
            permissions = {
                hire = false,
                demote = false
            }
        },
        ['Cabo [GIRO]'] = {
            tier = 10,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Penal [GIRO]'] = {
            tier = 9,
            permissions = {
                hire = true,
                demote = false
            }
        }
    },
    ['ROTAM'] = {
        -- done
        ['Comando [ROTAM]"]'] = {
            tier = 23,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Sub-Comando [ROTAM]'] = {
            tier = 22,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Coronel [ROTAM]'] = {
            tier = 21,
            permissions = {
                hire = true,
                demote = true
            }
        },

        ['Major [ROTAM]'] = {
            tier = 20,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Capitao [ROTAM]'] = {
            tier = 19,
            permissions = {
                hire = false,
                demote = false
            }
        },
        
        ['1 Tenente [ROTAM]'] = {
            tier = 18,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['2 Tenente [ROTAM]'] = {
            tier = 17,
            permissions = {
                hire = false,
                demote = false
            }
        },

        ['Cadete [ROTAM]'] = {
            tier = 16,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Sub Tenente [ROTAM]'] = {
            tier = 15,
            permissions = {
                hire = false,
                demote = false
            }
        },
        
        ['1 Sargento [ROTAM]'] = {
            tier = 14,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['2 Sargento [ROTAM]'] = {
            tier = 13,
            permissions = {
                hire = false,
                demote = false
            }
        },
        ['3 Sargento [ROTAM]'] = {
            tier = 12,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Cabo [ROTAM]'] = {
            tier = 11,
            permissions = {
                hire = false,
                demote = false
            }
        },
        ['Cabo [ROTAM]'] = {
            tier = 10,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Penal [ROTAM]'] = {
            tier = 9,
            permissions = {
                hire = true,
                demote = false
            }
        }
    },
    ['CIVIL'] = {
        ['Diretor Geral [CIVIL]'] = {
            tier = 9,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Diretor [CIVIL]'] = {
            tier = 8,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Delegado Geral [CIVIL]'] = {
            tier = 7,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Delegado de Operação [CIVIL]'] = {
            tier = 6,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Delegado [CIVIL]'] = {
            tier = 5,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Delegado Adjunto [CIVIL]'] = {
            tier = 4,
            permissions = {
                hire = false,
                demote = false
            }
        },
        ['Perito [CIVIL]'] = {
            tier = 3,
            permissions = {
                hire = false,
                demote = false
            }
        },
        ['Investigador [CIVIL]'] = {
            tier = 2,
            permissions = {
                hire = false,
                demote = false
            }
        },
        ['Escrivao [CIVIL]'] = {
            tier = 1,
            permissions = {
                hire = false,
                demote = false
            }
        },
        ['Agente Especial [CIVIL]'] = {
            tier = 1,
            permissions = {
                hire = false,
                demote = false
            }
        },
        ['Agente [CIVIL]'] = {
            tier = 1,
            permissions = {
                hire = false,
                demote = false
            }
        },
        ['Agente Carcerario [CIVIL]'] = {
            tier = 1,
            permissions = {
                hire = false,
                demote = false
            }
        },
        ['Auxiliar [CIVIL]'] = {
            tier = 1,
            permissions = {
                hire = false,
                demote = false
            }
        }
    },

    ['PRF'] = {
        -- done
        ['Comando [PRF]"]'] = {
            tier = 23,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Sub-Comando [PRF]'] = {
            tier = 22,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Coronel [PRF]'] = {
            tier = 21,
            permissions = {
                hire = true,
                demote = true
            }
        },

        ['Major [PRF]'] = {
            tier = 20,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Capitao [PRF]'] = {
            tier = 19,
            permissions = {
                hire = false,
                demote = false
            }
        },
        
        ['1 Tenente [PRF]'] = {
            tier = 18,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['2 Tenente [PRF]'] = {
            tier = 17,
            permissions = {
                hire = false,
                demote = false
            }
        },

        ['Cadete [PRF]'] = {
            tier = 16,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Sub Tenente [PRF]'] = {
            tier = 15,
            permissions = {
                hire = false,
                demote = false
            }
        },
        
        ['1 Sargento [PRF]'] = {
            tier = 14,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['2 Sargento [PRF]'] = {
            tier = 13,
            permissions = {
                hire = false,
                demote = false
            }
        },
        ['3 Sargento [PRF]'] = {
            tier = 12,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Cabo [PRF]'] = {
            tier = 11,
            permissions = {
                hire = false,
                demote = false
            }
        },
        ['Cabo [PRF]'] = {
            tier = 10,
            permissions = {
                hire = true,
                demote = true
            }
        },
        ['Penal [PRF]'] = {
            tier = 9,
            permissions = {
                hire = true,
                demote = false
            }
        }
    },
}
