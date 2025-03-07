Config = {}

Config.Main = {
    cmd = 'painel', -- Comando para abrir Painel
    createAutomaticOrganizations = true,
    storeUrl = 'https://discord.gg/MPm3Pptfn5', -- Link da Sua Loja
    serverLogo = "https://discord.com/api/webhooks/1344077484437672027/ndWpEKUvlQEtOlMrKYQgOg8EWokYYQ3jEn8xuv1ei5Mv56_1MmpajNHjZTSxyNWruKbV",
    blackList = 7, -- Tempo de black em dias (7 Dia(s))
    clearChestLogs = 15, -- Logs do Bau limpar automaticamente de 15 em 15 dias. ( Evitar consumo da tabela )
}

Config.defaultPermissions = { 
    invite = { -- Permissao Para Convidar
        name = "Convidar",
        description = "Esta permissao permite vc convidar as pessoas para sua facção."
    },
    demote = { -- Permissao Para Rebaixar
        name = "Rebaixar",
        description = "Essa permissão permite que o cargo selecionado rebaixe um cargo inferior."
    }, 
    promote = { -- Permissao Para Promover
        name = "Promover",
        description = "Essa permissão permite que o cargo selecionado promova um cargo."
    }, 
    dismiss = { -- Permissao Para Rebaixar
        name = "Demitir",
        description = "Essa permissão permite que o cargo selecionado demita um cargo inferior."
    }, 
    withdraw = { -- Permissao Para Sacar Dinheiro
        name = "Sacar dinheiro",
        description = "Permite que esse cargo selecionado possa sacar dinheiro do banco da facção."
    }, 
    deposit = { -- Permissao Para Depositar Dinheiro
        name = "Depositar dinheiro",
        description = "Permite que esse cargo selecionado possa depositar dinheiro no banco da facção."
    }, 
    message = { -- Permissao para Escrever nas anotaçoes
        name = "Escrever anotações",
        description = "Permite que esse cargo selecionado possa escrever anotações."
    },
    alerts = { -- Permissao para enviar alertas
        name = "Escrever Alertas",
        description = "Permite que esse cargo selecionado possa enviar alertas para todos jogadores."
    },
    chat = { -- Permissao para Falar no chat
        name = "Escrever no chat",
        description = "Permite que esse cargo selecionado possa se comunicar no chat da facção"
    },
}

Config.Groups = {
    ['BRASIL'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-gatilho'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['m-corpo_microsmg'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [BRASIL]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [BRASIL]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [BRASIL]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [BRASIL]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['Helipa'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-gatilho'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['m-corpo_microsmg'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [HELIPA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [HELIPA]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [HELIPA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [HELIPA]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['MorroDoChapadao'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-gatilho'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['m-corpo_microsmg'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [MORRODOCHAPADAO]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [MORRODOCHAPADAO]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [MORRODOCHAPADAO]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [MORRODOCHAPADAO]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['MacacoMorro'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['gatilho'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['metal'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['molas'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['pecadearma'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['plastico'] = 50,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['c-fio'] = 50,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['c-ferro'] = 50,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                }
            }
        },

        List = {
            ['Lider [MACACOMORRO]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [MACACOMORRO]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [MACACOMORRO]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [MACACOMORRO]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },
   --- ['MORRO DO MACACO'] = {
   ---     Config = {
   ---         Salary = { -- SALARIO FAC
   ---             active = true, -- Se vai esta ativo ou nao
   ---             amount = 5000, -- Valor que vai receber
   ---             time = 30, -- tempo em tempo que vai receber salario em minuto(s)
   ---         },
---
   ---         Goals = { -- METAS
   ---             defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
   ---             itens = {
   ---                 ['gatilho'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
   ---                 ['metal'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
   ---                 ['molas'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
   ---                 ['pecadearma'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
   ---                 ['plastico'] = 50,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
   ---                 ['c-fio'] = 50,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
   ---                 ['c-ferro'] = 50,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
   ---             }
   ---         }
   ---     },
---
   ---     List = {
   ---         ['Lider [MORRODOMACACO]'] = {
   ---             prefix = 'Lider',
   ---             tier = 1
   ---         },
   ---         ['Sub Lider [MORRODOMACACO]'] = {
   ---             prefix = 'Sub Lider',
   ---             tier = 2
   ---         },
   ---         ['Gerente [MORRODOMACACO]'] = {
   ---             prefix = 'Gerente',
   ---             tier = 3
   ---         },
   ---         ['Membro [MORRODOMACACO]'] = {
   ---             prefix = 'Membro',
   ---             tier = 4
   ---         },
   ---     }
   --- },

    ['Veracruz'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['pecadearma'] = 50,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['gatilho'] = 50,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['molas'] = 50, -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['metal'] = 50,      -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                }
            }
        },

        List = {
            ['Lider [VERA-CRUZ]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [VERA-CRUZ]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [VERA-CRUZ]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [VERA-CRUZ]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['Yakuza'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['polvora'] = 50,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['capsulas'] = 50,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                }
            }
        },

        List = {
            ['Lider [YAKUZA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [YAKUZA]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [YAKUZA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [YAKUZA]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['Buenavista'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['polvora'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['capsula'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [BUENA-VISTA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [BUENA-VISTA]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [BUENA-VISTA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [BUENA-VISTA]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['Vovo'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['polvora'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['capsulas'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [VOVO]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [VOVO]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [VOVO]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [VOVO]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['Franca'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['polvora'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['capsulas'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [FRANCA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [FRANCA]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [FRANCA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [FRANCA]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['Cassino'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['l-alvejante'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [CASSINO]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [CASSINO]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [CASSINO]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [CASSINO]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['Mafia'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 7000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['pastabase'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [MAFIA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [MAFIA]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [MAFIA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [MAFIA]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['Tequila'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['dirty_money'] = 50,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['l-alvejante'] = 50,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                }
            }
        },

        List = {
            ['Lider [TEQUILA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [TEQUILA]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [TEQUILA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [TEQUILA]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['Bahamas'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
					['l-alvejante'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [BAHAMAS]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [BAHAMAS]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [BAHAMAS]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [BAHAMAS]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    --['TheLost'] = {
    --    Config = {
    --        Salary = { -- SALARIO FAC
    --            active = true, -- Se vai esta ativo ou nao
    --            amount = 5000, -- Valor que vai receber
    --            time = 30, -- tempo em tempo que vai receber salario em minuto(s)
    --        },
--
    --        Goals = { -- METAS
    --            defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
    --            itens = {
    --                ['metal'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
    --                ['m-aco'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
    --            }
    --        }
    --    },
--
    --    List = {
    --        ['Lider [THELOST]'] = {
    --            prefix = 'Lider',
    --            tier = 1
    --        },
    --        ['Sub Lider [THELOST]'] = {
    --            prefix = 'Sub Lider',
    --            tier = 2
    --        },
    --        ['Gerente [THELOST]'] = {
    --            prefix = 'Gerente',
    --            tier = 3
    --        },
    --        ['Membro [THELOST]'] = {
    --            prefix = 'Membro',
    --            tier = 4
    --        },
    --    }
    --},

    ['Vilacanaa'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
					['metal'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
					['m-aco'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [VILA-CANAA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [VILA-CANAA]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [VILA-CANAA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [VILA-CANAA]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    
    ['Grota'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['polvora'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['capsulas'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [GROTA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [GROTA]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [GROTA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [GROTA]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['RedLine'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['folhamaconha'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['l-alvejante'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [RED-LINE]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [RED-LINE]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [RED-LINE]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [RED-LINE]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['Novaesperanca'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['pastabase'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [NOVA-ESPERANCA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [NOVA-ESPERANCA]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [NOVA-ESPERANCA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [NOVA-ESPERANCA]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['Tiradentes'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['pastabase'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [TIRADENTES]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [TIRADENTES]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [TIRADENTES]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [TIRADENTES]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['Egito'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['pastabase'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [EGITO]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [EGITO]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [EGITO]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [EGITO]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['Madregermano'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['c-fio'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['c-ferro'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['plastico'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [MADRE-GERMANO]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [MADRE-GERMANO]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [MADRE-GERMANO]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [MADRE-GERMANO]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },


    ['CaixaBaixa'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['c-fio'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['c-ferro'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['plastico'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [CAIXABAIXA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [CAIXABAIXA]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [CAIXABAIXA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [CAIXABAIXA]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['QuebraCaixote'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['lancaperfume'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [QUEBRACAIXOTE]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [QUEBRACAIXOTE]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [QUEBRACAIXOTE]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [QUEBRACAIXOTE]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['EmilioPovoa'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['lancaperfume'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [EMILIOPOVOA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [EMILIOPOVOA]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [EMILIOPOVOA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [EMILIOPOVOA]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['Parqueoeste'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['lancaperfume'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [PARQUE-OESTE]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [PARQUE-OESTE]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [PARQUE-OESTE]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [PARQUE-OESTE]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['Lagunapark'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['gatilho'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    --['placademetal'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['molas'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                   -- ['pecadearmas'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [LAGUNA-PARK]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [LAGUNA-PARK]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [LAGUNA-PARK]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [LAGUNA-PARK]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

   ---['B'] = {
   ---    Config = {
   ---        Salary = { -- SALARIO FAC
   ---            active = true, -- Se vai esta ativo ou nao
   ---            amount = 5000, -- Valor que vai receber
   ---            time = 30, -- tempo em tempo que vai receber salario em minuto(s)
   ---        },

   ---        Goals = { -- METAS
   ---            defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
   ---            itens = {
   ---            	['l-alvejante'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
   ---            }
   ---        }
   ---    },

   ---    List = {
   ---        ['Lider [GARAVELO]'] = {
   ---            prefix = 'Lider',
   ---            tier = 1
   ---        },
   ---        ['Sub Lider [GARAVELO]'] = {
   ---            prefix = 'Sub Lider',
   ---            tier = 2
   ---        },
   ---        ['Gerente [GARAVELO]'] = {
   ---            prefix = 'Gerente',
   ---            tier = 3
   ---        },
   ---        ['Membro [GARAVELO]'] = {
   ---            prefix = 'Membro',
   ---            tier = 4
   ---        },
   ---    }
   ---},

    ['Vilacanaa'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                	['l-alvejante'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [VILA-CANAA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [VILA-CANAA]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [VILA-CANAA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [VILA-CANAA]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['Web'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['polvora'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['capsulas'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [WEB]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [WEB]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [WEB]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [WEB]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['Cartel'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount =15000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['ferro'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
					['aluminio'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['anfetamina'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [CARTEL]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub Lider [CARTEL]'] = {
                prefix = 'Sub Lider',
                tier = 2
            },
            ['Gerente [CARTEL]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Membro [CARTEL]'] = {
                prefix = 'Membro',
                tier = 4
            },
        }
    },

    ['Rotam'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-gatilho'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['m-corpo_microsmg'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Comando [ROTAM]'] = {
                prefix = 'Comando',
                tier = 1
            },
            ['Sub-Comando [ROTAM]'] = {
                prefix = 'Sub-Comando',
                tier = 2
            },
            ['Coronel [ROTAM]'] = {
                prefix = 'Coronel',
                tier = 3
            },
            ['Tenente Coronel [ROTAM]'] = {
                prefix = 'Tenente Coronel',
                tier = 4
            },
            ['Major [ROTAM]'] = {
                prefix = 'Major',
                tier = 5
            },
            ['Capitao [ROTAM]'] = {
                prefix = 'Capitao',
                tier = 6
            },
            ['1 Tenente [ROTAM]'] = {
                prefix = '1 Tenente',
                tier = 7
            },
            ['2 Tenente [ROTAM]'] = {
                prefix = '2 Tenente',
                tier = 8
            },
            ['Cadete [ROTAM]'] = {
                prefix = 'Cadete',
                tier = 9
            },
            ['Sub Tenente [ROTAM]'] = {
                prefix = 'Sub Tenente',
                tier = 10
            },
            ['1 Sargento [ROTAM]'] = {
                prefix = '1 Sargento',
                tier = 11
            },
            ['2 Sargento [ROTAM]'] = {
                prefix = '2 Sargento',
                tier = 12
            },
            ['3 Sargento [ROTAM]'] = {
                prefix = '3 Sargento',
                tier = 13
            },
            ['Cabo [ROTAM]'] = {
                prefix = 'Cabo',
                tier = 14
            },
            ['Soldado [ROTAM]'] = {
                prefix = 'Soldado',
                tier = 15
            },
            ['Penal [ROTAM]'] = {
                prefix = 'Penal',
                tier = 16
            },
        }
    },

    ['Tatico'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-gatilho'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['m-corpo_microsmg'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Comando [TATICO]'] = {
                prefix = 'Comando',
                tier = 1
            },
            ['Sub-Comando [TATICO]'] = {
                prefix = 'Sub-Comando',
                tier = 2
            },
            ['Coronel [TATICO]'] = {
                prefix = 'Coronel',
                tier = 3
            },
            ['Tenente Coronel [TATICO]'] = {
                prefix = 'Tenente Coronel',
                tier = 4
            },
            ['Major [TATICO]'] = {
                prefix = 'Major',
                tier = 5
            },
            ['Capitao [TATICO]'] = {
                prefix = 'Capitao',
                tier = 6
            },
            ['1 Tenente [TATICO]'] = {
                prefix = '1 Tenente',
                tier = 7
            },
            ['2 Tenente [TATICO]'] = {
                prefix = '2 Tenente',
                tier = 8
            },
            ['Cadete [TATICO]'] = {
                prefix = 'Cadete',
                tier = 9
            },
            ['Sub Tenente [TATICO]'] = {
                prefix = 'Sub Tenente',
                tier = 10
            },
            ['1 Sargento [TATICO]'] = {
                prefix = '1 Sargento',
                tier = 11
            },
            ['2 Sargento [TATICO]'] = {
                prefix = '2 Sargento',
                tier = 12
            },
            ['3 Sargento [TATICO]'] = {
                prefix = '3 Sargento',
                tier = 13
            },
            ['Cabo [TATICO]'] = {
                prefix = 'Cabo',
                tier = 14
            },
            ['Soldado [TATICO]'] = {
                prefix = 'Soldado',
                tier = 15
            },
            ['Penal [TATICO]'] = {
                prefix = 'Penal',
                tier = 16
            },
        }
    },

    ['Militar'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-gatilho'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['m-corpo_microsmg'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Comando [MILITAR]'] = {
                prefix = 'Comando',
                tier = 1
            },
            ['Sub-Comando [MILITAR]'] = {
                prefix = 'Sub-Comando',
                tier = 2
            },
            ['Coronel [MILITAR]'] = {
                prefix = 'Coronel',
                tier = 3
            },
            ['Tenente Coronel [MILITAR]'] = {
                prefix = 'Tenente Coronel',
                tier = 4
            },
            ['Major [MILITAR]'] = {
                prefix = 'Major',
                tier = 5
            },
            ['Capitao [MILITAR]'] = {
                prefix = 'Capitao',
                tier = 6
            },
            ['1 Tenente [MILITAR]'] = {
                prefix = '1 Tenente',
                tier = 7
            },
            ['2 Tenente [MILITAR]'] = {
                prefix = '2 Tenente',
                tier = 8
            },
            ['Cadete [MILITAR]'] = {
                prefix = 'Cadete',
                tier = 9
            },
            ['Sub Tenente [MILITAR]'] = {
                prefix = 'Sub Tenente',
                tier = 10
            },
            ['1 Sargento [MILITAR]'] = {
                prefix = '1 Sargento',
                tier = 11
            },
            ['2 Sargento [MILITAR]'] = {
                prefix = '2 Sargento',
                tier = 12
            },
            ['3 Sargento [MILITAR]'] = {
                prefix = '3 Sargento',
                tier = 13
            },
            ['Cabo [MILITAR]'] = {
                prefix = 'Cabo',
                tier = 14
            },
            ['Soldado [MILITAR]'] = {
                prefix = 'Soldado',
                tier = 15
            },
            ['Penal [MILITAR]'] = {
                prefix = 'Penal',
                tier = 16
            },
        }
    },

	['Militar01'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-gatilho'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['m-corpo_microsmg'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Comando [MILITAR01]'] = {
                prefix = 'Comando',
                tier = 1
            },
            ['Sub-Comando [MILITAR01]'] = {
                prefix = 'Sub-Comando',
                tier = 2
            },
            ['Coronel [MILITAR01]'] = {
                prefix = 'Coronel',
                tier = 3
            },
            ['Tenente Coronel [MILITAR01]'] = {
                prefix = 'Tenente Coronel',
                tier = 4
            },
            ['Major [MILITAR01]'] = {
                prefix = 'Major',
                tier = 5
            },
            ['Capitao [MILITAR01]'] = {
                prefix = 'Capitao',
                tier = 6
            },
            ['1 Tenente [MILITAR01]'] = {
                prefix = '1 Tenente',
                tier = 7
            },
            ['2 Tenente [MILITAR01]'] = {
                prefix = '2 Tenente',
                tier = 8
            },
            ['Cadete [MILITAR01]'] = {
                prefix = 'Cadete',
                tier = 9
            },
            ['Sub Tenente [MILITAR01]'] = {
                prefix = 'Sub Tenente',
                tier = 10
            },
            ['1 Sargento [MILITAR01]'] = {
                prefix = '1 Sargento',
                tier = 11
            },
            ['2 Sargento [MILITAR01]'] = {
                prefix = '2 Sargento',
                tier = 12
            },
            ['3 Sargento [MILITAR01]'] = {
                prefix = '3 Sargento',
                tier = 13
            },
            ['Cabo [MILITAR01]'] = {
                prefix = 'Cabo',
                tier = 14
            },
            ['Soldado [MILITAR01]'] = {
                prefix = 'Soldado',
                tier = 15
            },
            ['Penal [MILITAR01]'] = {
                prefix = 'Penal',
                tier = 16
            },
        }
    },

    ['Giro'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-gatilho'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['m-corpo_microsmg'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Comando [GIRO]'] = {
                prefix = 'Comando',
                tier = 1
            },
            ['Sub-Comando [GIRO]'] = {
                prefix = 'Sub-Comando',
                tier = 2
            },
            ['Coronel [GIRO]'] = {
                prefix = 'Coronel',
                tier = 3
            },
            ['Tenente Coronel [GIRO]'] = {
                prefix = 'Tenente Coronel',
                tier = 4
            },
            ['Major [GIRO]'] = {
                prefix = 'Major',
                tier = 5
            },
            ['Capitao [GIRO]'] = {
                prefix = 'Capitao',
                tier = 6
            },
            ['1 Tenente [GIRO]'] = {
                prefix = '1 Tenente',
                tier = 7
            },
            ['2 Tenente [GIRO]'] = {
                prefix = '2 Tenente',
                tier = 8
            },
            ['Cadete [GIRO]'] = {
                prefix = 'Cadete',
                tier = 9
            },
            ['Sub Tenente [GIRO]'] = {
                prefix = 'Sub Tenente',
                tier = 10
            },
            ['1 Sargento [GIRO]'] = {
                prefix = '1 Sargento',
                tier = 11
            },
            ['2 Sargento [GIRO]'] = {
                prefix = '2 Sargento',
                tier = 12
            },
            ['3 Sargento [GIRO]'] = {
                prefix = '3 Sargento',
                tier = 13
            },
            ['Cabo [GIRO]'] = {
                prefix = 'Cabo',
                tier = 14
            },
            ['Soldado [GIRO]'] = {
                prefix = 'Soldado',
                tier = 15
            },
            ['Penal [GIRO]'] = {
                prefix = 'Penal',
                tier = 16
            },
        }
    },

    ['Bombeiro'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-gatilho'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['m-corpo_microsmg'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Comando [BOMBEIRO]'] = {
                prefix = 'Comando',
                tier = 1
            },
            ['Sub-Comando [BOMBEIRO]'] = {
                prefix = 'Sub-Comando',
                tier = 2
            },
            ['Coronel [BOMBEIRO]'] = {
                prefix = 'Coronel',
                tier = 3
            },
            ['Tenente Coronel [BOMBEIRO]'] = {
                prefix = 'Tenente Coronel',
                tier = 4
            },
            ['Major [BOMBEIRO]'] = {
                prefix = 'Major',
                tier = 5
            },
            ['Capitao [BOMBEIRO]'] = {
                prefix = 'Capitao',
                tier = 6
            },
            ['1 Tenente [BOMBEIRO]'] = {
                prefix = '1 Tenente',
                tier = 7
            },
            ['2 Tenente [BOMBEIRO]'] = {
                prefix = '2 Tenente',
                tier = 8
            },
            ['Cadete [BOMBEIRO]'] = {
                prefix = 'Cadete',
                tier = 9
            },
            ['Sub Tenente [BOMBEIRO]'] = {
                prefix = 'Sub Tenente',
                tier = 10
            },
            ['1 Sargento [BOMBEIRO]'] = {
                prefix = '1 Sargento',
                tier = 11
            },
            ['2 Sargento [BOMBEIRO]'] = {
                prefix = '2 Sargento',
                tier = 12
            },
            ['3 Sargento [BOMBEIRO]'] = {
                prefix = '3 Sargento',
                tier = 13
            },
            ['Cabo [BOMBEIRO]'] = {
                prefix = 'Cabo',
                tier = 14
            },
            ['Soldado [BOMBEIRO]'] = {
                prefix = 'Soldado',
                tier = 15
            },
            ['Penal [BOMBEIRO]'] = {
                prefix = 'Penal',
                tier = 16
            },
        }
    },

    ['Judiciario'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 4000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['plastico'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['c-fio'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Ministro [JUDICIARIO]'] = {
                prefix = 'Ministro',
                tier = 1
            },
            ['Juiz [JUDICIARIO]'] = {
                prefix = 'Juiz',
                tier = 2
            },
            ['Juiz Militar [JUDICIARIO]'] = {
                prefix = 'Juiz Militar ',
                tier = 3
            },
            ['Desembargador [JUDICIARIO]'] = {
                prefix = 'Desembargador',
                tier = 4
            },
            ['Corregedor [JUDICIARIO]'] = {
                prefix = 'Corregedor',
                tier = 5
            },
            ['Promotor [JUDICIARIO]'] = {
                prefix = 'Promotor',
                tier = 6
            },
            ['Advogado [JUDICIARIO]'] = {
                prefix = 'Perito',
                tier = 7
            },
            ['Presidente da OAB [JUDICIARIO]'] = {
                prefix = 'Investigador',
                tier = 8
            },
        }
    },

    
    ['CIVIL'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['c-fio'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['c-ferro'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Diretor Geral [CIVIL]'] = {
                prefix = 'Diretor Geral',
                tier = 1
            },
            ['Diretor [CIVIL]'] = {
                prefix = 'Diretor',
                tier = 2
            },
            ['Delegado Geral [CIVIL]'] = {
                prefix = 'Delegado Geral',
                tier = 3
            },
            ['Delegado de Operação [CIVIL]'] = {
                prefix = 'Delegado de Operação',
                tier = 4
            },
            ['Delegado [CIVIL]'] = {
                prefix = 'Delegado',
                tier = 5
            },
            ['Delegado Adjunto [CIVIL]'] = {
                prefix = 'Delegado Adjunto',
                tier = 6
            },
            ['Perito [CIVIL]'] = {
                prefix = 'Perito',
                tier = 7
            },
            ['Investigador [CIVIL]'] = {
                prefix = 'Investigador',
                tier = 8
            },
            ['Escrivao [CIVIL]'] = {
                prefix = 'Escrivao',
                tier = 9
            },
            ['Agente Especial [CIVIL]'] = {
                prefix = 'Agente Especial',
                tier = 10
            },
            ['Agente [CIVIL]'] = {
                prefix = 'Agente',
                tier = 11
            },
            ['Agente Carcerario [CIVIL]'] = {
                prefix = 'Agente Carcerario',
                tier = 12
            },
            ['Auxiliar [CIVIL]'] = {
                prefix = 'Auxiliar',
                tier = 13
            },
        }
    },

    ['Prf'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-gatilho'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['m-corpo_microsmg'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Comando [PRF]'] = {
                prefix = 'Comando',
                tier = 1
            },
            ['Sub-Comando [PRF]'] = {
                prefix = 'Sub-Comando',
                tier = 2
            },
            ['Coronel [PRF]'] = {
                prefix = 'Coronel',
                tier = 3
            },
            ['Tenente Coronel [PRF]'] = {
                prefix = 'Tenente Coronel',
                tier = 4
            },
            ['Major [PRF]'] = {
                prefix = 'Major',
                tier = 5
            },
            ['Capitao [PRF]'] = {
                prefix = 'Capitao',
                tier = 6
            },
            ['1 Tenente [PRF]'] = {
                prefix = '1 Tenente',
                tier = 7
            },
            ['2 Tenente [PRF]'] = {
                prefix = '2 Tenente',
                tier = 8
            },
            ['Cadete [PRF]'] = {
                prefix = 'Cadete',
                tier = 9
            },
            ['Sub Tenente [PRF]'] = {
                prefix = 'Sub Tenente',
                tier = 10
            },
            ['1 Sargento [PRF]'] = {
                prefix = '1 Sargento',
                tier = 11
            },
            ['2 Sargento [PRF]'] = {
                prefix = '2 Sargento',
                tier = 12
            },
            ['3 Sargento [PRF]'] = {
                prefix = '3 Sargento',
                tier = 13
            },
            ['Cabo [PRF]'] = {
                prefix = 'Cabo',
                tier = 14
            },
            ['Soldado [PRF]'] = {
                prefix = 'Soldado',
                tier = 15
            },
            ['Penal [PRF]'] = {
                prefix = 'Penal',
                tier = 16
            },
        }
    },

    
    ['Deboxe'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-capa_colete'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [DEBOXE]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Gerente [DEBOXE]'] = {
                prefix = 'Gerente',
                tier = 2
            },
            ['Sub Gerente [DEBOXE]'] = {
                prefix = 'Sub Gerente',
                tier = 3
            },
            ['Tunning [DEBOXE]'] = {
                prefix = 'Tunning',
                tier = 4
            },
            ['Mecanico [DEBOXE]'] = {
                prefix = 'Mecanico',
                tier = 5
            },
            ['Funcionario [DEBOXE]'] = {
                prefix = 'Funcionario',
                tier = 6
            },
        }
    },

    ['Competcar'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-capa_colete'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [COMPETCAR]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Gerente [COMPETCAR]'] = {
                prefix = 'Gerente',
                tier = 2
            },
            ['Sub Gerente [COMPETCAR]'] = {
                prefix = 'Sub Gerente',
                tier = 3
            },
            ['Tunning [DEBOCOMPETCARXE]'] = {
                prefix = 'Tunning',
                tier = 4
            },
            ['Mecanico [COMPETCAR]'] = {
                prefix = 'Mecanico',
                tier = 5
            },
            ['Funcionario [COMPETCAR]'] = {
                prefix = 'Funcionario',
                tier = 6
            },
        }
    },

    
    ['Abelvolks'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-capa_colete'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [ABELVOLKS]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Gerente [ABELVOLKS]'] = {
                prefix = 'Gerente',
                tier = 2
            },
            ['Sub Gerente [ABELVOLKS]'] = {
                prefix = 'Sub Gerente',
                tier = 3
            },
            ['Tunning [ABELVOLKS]'] = {
                prefix = 'Tunning',
                tier = 4
            },
            ['Mecanico [ABELVOLKS]'] = {
                prefix = 'Mecanico',
                tier = 5
            },
            ['Funcionario [ABELVOLKS]'] = {
                prefix = 'Funcionario',
                tier = 6
            },
        }
    },

    ['Hospital'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-gatilho'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['m-corpo_microsmg'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Presidente [HOSPITAL]'] = {
                prefix = 'Presidente',
                tier = 1
            },
            ['Diretor [HOSPITAL]'] = {
                prefix = 'Diretor',
                tier = 2
            },
            ['Vice-Diretor [HOSPITAL]'] = {
                prefix = 'Vice-Diretor',
                tier = 3
            },
            ['Medico-Chefe [HOSPITAL]'] = {
                prefix = 'Medico-Chefe',
                tier = 4
            },
            ['Medico [HOSPITAL]'] = {
                prefix = 'Medico',
                tier = 5
            },
            ['Paramedico [HOSPITAL]'] = {
                prefix = 'Paramedico',
                tier = 6
            },
            ['Enfermeiro-Chefe [HOSPITAL]'] = {
                prefix = 'Enfermeiro-Chefe',
                tier = 7
            },
            ['Enfermeiro [HOSPITAL]'] = {
                prefix = 'Enfermeiro',
                tier = 8
            }, 
        }
    },

    ['EB'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 5000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    [''] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    [''] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['General [EXERCITO]'] = {
                prefix = 'General',
                tier = 1
            },
            ['Coronel [EXERCITO]'] = {
                prefix = 'Coronel',
                tier = 2
            },
            ['Tenente Coronel [EXERCITO]'] = {
                prefix = 'Tenente Coronel',
                tier = 3
            },
            ['Major [EXERCITO]'] = {
                prefix = 'Major',
                tier = 4
            },
            ['Capitão [EXERCITO]'] = {
                prefix = 'Capitão',
                tier = 5
            },
            ['1 Tenente [EXERCITO]'] = {
                prefix = '1 Tenente',
                tier = 6
            },
            ['2 Tenente [EXERCITO]'] = {
                prefix = '2 Tenente',
                tier = 7
            },
            ['Aspirante a Oficial [EXERCITO]'] = {
                prefix = 'Aspirante a Oficial',
                tier = 8
            },
            ['Sub Tenente [EXERCITO]'] = {
                prefix = 'Sub Tenente',
                tier = 9
            },
            ['1 Sargento [EXERCITO]'] = {
                prefix = '1 Sargento',
                tier = 10
            },
            ['2 Sargento [EXERCITO]'] = {
                prefix = '2 Sargento',
                tier = 11
            },
            ['3 Sargento [EXERCITO]'] = {
                prefix = '3 Sargento',
                tier = 12
            },
            ['Cabo [EXERCITO]'] = {
                prefix = 'Cabo',
                tier = 13
            },
            ['Soldado [EXERCITO]'] = {
                prefix = 'Soldado',
                tier = 14
            },
            ['Recruta [EXERCITO]'] = {
                prefix = 'Recruta',
                tier = 15
            }
        }
    },
	
}


Config.Langs = {
    ['offlinePlayer'] = function(source) TriggerClientEvent("Notify", source,"negado","Este jogador não está online.",5000) end,
    ['alreadyFaction'] = function(source) TriggerClientEvent("Notify", source,"negado","Este jogador já esta em uma organização.",5000)  end,
    ['alreadyBlacklist'] = function(source) TriggerClientEvent("Notify", source,"negado","Você está na black-list, não pode receber convites.",5000)  end,
    ['alreadyUserBlacklist'] = function(source) TriggerClientEvent("Notify",source,"negado","Este jogador está em black-list.",5000)  end,
    ['sendInvite'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você enviou o convite.",5000)  end,
    ['acceptInvite'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você aceitou o convite.",5000) end,
    ['acceptedInvite'] = function(source, ply_id) TriggerClientEvent("Notify",source,"sucesso","O "..ply_id.." aceitou o convite. ",5000) end,
    ['bestTier'] = function(source) TriggerClientEvent("Notify",source,"negado","Você não pode fazer isso com alguem com um cargo igual ou maior que o seu.",5000)   end,
    ['youPromoved'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você foi promovido.",5000)  end,
    ['youPromovedUser'] = function(source, ply_id, group) TriggerClientEvent("Notify",source,"sucesso","Você promoveu o ID: "..ply_id.." para "..group..".",5000) end,
    ['youDemote'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você foi rebaixado.",5000)  end,
    ['youDemoteUser'] = function(source, ply_id) TriggerClientEvent("Notify",source,"sucesso","Você rebaixou o ID: "..ply_id..".",5000) end,
    ['youDismiss'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você foi demitido de sua organização .",5000)  end,
    ['youDismissUser'] = function(source, ply_id) TriggerClientEvent("Notify", source,"sucesso","Você demitiu o ID "..ply_id.." .",5000)  end,
    ['waitCooldown'] = function(source) TriggerClientEvent("Notify",source,"negado","Aguarde para fazer isso..",5000) end,
    ['bankNotMoney'] = function(source) TriggerClientEvent("Notify",source,"negado","O Banco da organização não possui essa quantia.",5000)  end,
    ['rewardedGoal'] = function(source, amount) TriggerClientEvent("Notify",source,"sucesso","Você resgatou sua meta diaria e recebeu <b>R$ "..amount.."</b> por isso.",5000) end,
    ['notPermission'] = function(source) TriggerClientEvent("Notify",source,"negado","Você não possui permissão.",5000)  end,
    ['notMoneyDeposit'] = function(source) TriggerClientEvent("Notify",source,"negado","Você não possui dinheiro para depositar.",5000)  end

}

if SERVER then
    -- CUSTOM QUERYS
    vRP.prepare('mirtin_orgs_v2/GetUsersGroup', " SELECT user_id,dvalue FROM vrp_user_data WHERE dkey = 'vRP:datatable' ")
    vRP.prepare("mirtin_orgs_v2/getUserGroup", "SELECT user_id,dvalue FROM vrp_user_data WHERE dkey = 'vRP:datatable' and user_id = @user_id")
    vRP.prepare("mirtin_orgs_v2/updateUserGroup", "UPDATE vrp_user_data SET dvalue = @dvalue WHERE user_id = @user_id and dkey = 'vRP:datatable'")

    -- CAPTURAR GRUPOS COM JOGADOR OFFLINE
    function getUserGroups(user_id)
        local rows = vRP.query("mirtin_orgs_v2/getUserGroup", { user_id = user_id })
        local data = json.decode(rows[1].dvalue) or {}

        if #rows == 0 then 
            return 
        end

        return data.groups
    end

    -- SETAR GRUPO COM JOGADOR OFFLINE
    function updateUserGroups(user_id, groups)
        local rows = vRP.query("mirtin_orgs_v2/getUserGroup", { user_id = user_id })
        local data = json.decode(rows[1].dvalue) or {}

        if #rows == 0 then 
            return 
        end

        if not groups then
            groups = {}
        end

        data.groups = groups

        vRP.execute("mirtin_orgs_v2/updateUserGroup", { user_id = user_id, dvalue = json.encode(data) })
    end

    -- PEGAR DINHEIRO DO BANCO DO JOGADOR
    function getBankMoney(user_id)
        return vRP.getBankMoney(user_id)
    end

    -- IDENTIDADE
    function getUserIdentity(user_id)
        local identity = vRP.getUserIdentity(user_id)
        if identity.nome then
            identity.name = identity.nome
            identity.firstname = identity.sobrenome
        end

        if identity.name2 then
            identity.firstname = identity.name2
        end

        return identity
    end

    function getUserSource(user_id)
        return vRP.getUserSource(user_id)
    end

    function getUserId(source)
        return vRP.getUserId(source)
    end

    function getUsers()
        --user_id,source
        return vRP.getUsers()
    end

    function getUserMyGroups(user_id)
        return vRP.getUserGroups(user_id)
    end

    function hasGroup(user_id, group)
        return vRP.hasGroup(user_id, group)
    end

    function addUserGroup(user_id, group)
        return vRP.addUserGroup(user_id, group)
    end

    function tryFullPayment(user_id, amount)
        return vRP.tryFullPayment(user_id, amount)
    end

    function giveBankMoney(user_id, amount)
        return vRP.giveBankMoney(user_id, amount)
    end

    function getBankMoney(user_id)
        return vRP.getBankMoney(user_id)
    end

    function getItemName(item)
        return vRP.getItemName(item) or item
    end

    function request(source, text, time)
        return vRP.request(source, text, time)
    end

    function removeUserGroup(user_id, group)
        return vRP.removeUserGroup(user_id, group)
    end

    -- REMOVER BLACKLIST
    RegisterCommand('removerbl', function(source,args)
        local user_id = getUserId(source)
        if not user_id then return end

        local ply_id = tonumber(args[1])
        if not ply_id then return end

        if vRP.hasPermission(user_id,"admin.permissao") then
            TriggerClientEvent("Notify", source, "sucesso","Você removeu a blacklist do ID: "..ply_id..".",5000) 
            BLACKLIST:remUser(ply_id)
        end
    end)

    AddEventHandler('vRP:playerSpawn', function(user_id, source)
        TriggerEvent('mirtin_orgs_v2:playerSpawn', user_id, source)
    end)

    AddEventHandler('vRP:playerLeave', function(user_id)
        TriggerEvent('mirtin_orgs_v2:playerLeave', user_id)
    end)
end


--[[ 
    Como Utilizar EXPORT de Guardar / Retirar Item no Bau:
    ( Colocar Esse EXPORT na função de retirar/guardar item de seu inventario)
    
    user_id: user_id, -- ID Do Jogador,
    action: withdraw or deposit, -- Ação que foi feita Retirou/Depositou
    item: item, -- Spawn do item que foi retirado/guardado.
    amount: quantidade, -- Quantidade do item que foi depositada/retirada

    EXPORT: 
    exports.mirtin_orgs_v2:addLogChest(user_id, action, item, amount)
]]

--[[ 
    Como Utilizar EXPORT De METAS DIARIAS:
    ( Colocar esse EXPORT na função de Guardar Itens no Armazem ou Coletar Itens no Farm )

    user_id: user_id, -- ID Do Jogador,
    item: item, -- Spawn do item que foi guardado/farmado.
    amount: quantidade, -- Quantidade do item que foi guardada/farmada.

    EXPORT: 
    exports.mirtin_orgs_v2:addGoal(user_id, item, amount)
]]