voltre = {}
-- Namespaces
voltre.fct = {} -- Functions
voltre.fct.draw = {}
voltre.fct.game = {}
voltre.fct.format = {}
voltre.fct.math = {}
voltre.fct.utils = {}
voltre.fct.safe = {}

voltre.data = {}           -- Données globales des modules
voltre.data.server = {     -- Données liées au serveur
    days = 0,
    mounts = 0,
    years = 0,
    maxplayers = 0,
}
voltre.data.jobs = {       -- Données liées aux jobs/entreprises
    polices = {
        list = {},
        loaded = false,
    },
    ambulances = {
        list = {},
        loaded = false,
    },
    restaurants = {
        list = {},
        loaded = false,
    },
    farms = {
        list = {},
        loaded = false,
    },
    mecanos = {
        list = {},
        loaded = false,
    },
    bars = {
        list = {},
        loaded = false,
    },
}
voltre.data.illegals = {   -- Données liées à l'illégals (laboratoires, groupe illégaux)
    laboratories = {
        list = {},
        loaded = false,
    },
    groups = {
        list = {},
        loaded = false,
    },
}
voltre.data.world = {}     -- Données monde (météo, temps, etc.) 
voltre.data.markers = {}
voltre.data.system = {}
voltre.data.afk = {}

voltre.modules = {}

voltre.loader = {
    resources = {},
}

exports("getData", function(keys)
    if voltre.data[keys] then
        return voltre.data[keys]
    else
        return nil
    end
end)