/**
 * Voltre Hologram System - JavaScript API
 * API commune pour tous les hologrammes
 */

const HologramAPI = {
    events: {},
    id: null,
    duiName: null,

    /**
     * Initialise l'API avec le nom du DUI
     * @param {string} duiName - Nom du DUI (htmlTarget)
     */
    init(duiName) {
        this.duiName = duiName;
        
        // Écouter les messages du client Lua
        window.addEventListener("message", (ev) => {
            const data = ev.data;
            if (data.duiName === this.duiName || data.id) {
                this.id = data.id;
                this.emit(data.eventName, data.id, data.content);
            }
        });
    },

    /**
     * Enregistre un écouteur d'événement
     * @param {string} eventName - Nom de l'événement
     * @param {function} callback - Fonction callback (id, data)
     */
    on(eventName, callback) {
        if (!this.events[eventName]) {
            this.events[eventName] = [];
        }
        this.events[eventName].push(callback);
    },

    /**
     * Émet un événement local
     * @param {string} eventName - Nom de l'événement
     * @param {string} id - ID de l'hologramme
     * @param {any} data - Données
     */
    emit(eventName, id, data) {
        if (this.events[eventName]) {
            this.events[eventName].forEach(callback => {
                callback(id, data);
            });
        }
    },

    /**
     * Envoie des données au client Lua
     * @param {string} eventName - Nom de l'événement
     * @param {any} content - Contenu à envoyer
     */
    send(eventName, content) {
        fetch(`https://${document.location.host}/hologram:sendData`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json; charset=UTF-8',
            },
            body: JSON.stringify({
                id: this.id || this.duiName,
                eventName: eventName,
                content: content
            })
        });
    },

    /**
     * Marque le DUI comme prêt
     */
    ready() {
        fetch(`https://${document.location.host}/hologram:duiReady`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json; charset=UTF-8',
            },
            body: JSON.stringify({
                duiName: this.duiName
            })
        });
    }
};

// Raccourcis globaux pour compatibilité
function AddEventListener(duiName, eventName, callback) {
    HologramAPI.on(eventName, callback);
}

function SendData(id, eventName, content) {
    HologramAPI.id = id;
    HologramAPI.send(eventName, content);
}

function MarkDUIAsReady(duiName) {
    HologramAPI.duiName = duiName;
    HologramAPI.ready();
}
