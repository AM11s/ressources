/**
 * Voltre UI - Application principale
 * Point d'entrée et initialisation de tous les modules
 */

const VoltreUI = {
    // Version
    version: '1.0.0',
    
    // Modules chargés
    modules: {},
    
    // État d'initialisation
    initialized: false,

    /**
     * Initialiser l'application
     */
    init() {
        if (this.initialized) {
            console.warn('[VoltreUI] Already initialized');
            return;
        }

        // Initialiser le système d'événements en premier
        VoltreEvents.init();
        
        // Initialiser les bridges
        // VoltreRageUIBridge.init(); // Désactivé: Menu maintenant intégré dans interactions
        VoltreUIBridge.init();
        VoltreInteractionsBridge.init();
        
        // Initialiser le state manager
        VoltreState.init();
        
        // Initialiser les modules
        this._initModules();
        
        // Enregistrer les handlers globaux
        this._registerGlobalHandlers();
        
        this.initialized = true;

        // Notifier le client Lua que l'UI est prête
        VoltreEvents.post('ui_ready', { version: this.version });
    },

    /**
     * Initialiser tous les modules
     */
    _initModules() {
        // HUD
        if (typeof VoltreHUD !== 'undefined') {
            VoltreHUD.init();
            this.modules.hud = VoltreHUD;
        }

        // Notifications
        if (typeof VoltreNotifications !== 'undefined') {
            VoltreNotifications.init();
            this.modules.notifications = VoltreNotifications;
        }

        // Sound
        if (typeof VoltreSound !== 'undefined') {
            VoltreSound.init();
            this.modules.sound = VoltreSound;
        }

        // Clipboard
        if (typeof VoltreClipboard !== 'undefined') {
            VoltreClipboard.init();
            this.modules.clipboard = VoltreClipboard;
        }

        // RageUI Bridge - Désactivé: Menu maintenant intégré dans interactions
        // if (typeof VoltreRageUIBridge !== 'undefined') {
        //     this.modules.rageui = VoltreRageUIBridge;
        // }

        // Unified UI Bridge (déjà initialisé plus haut, juste l'enregistrer)
        if (typeof VoltreUIBridge !== 'undefined') {
            this.modules.ui = VoltreUIBridge;
        }
        
        // Interactions Bridge (gère maintenant aussi le menu RageUI)
        if (typeof VoltreInteractionsBridge !== 'undefined') {
            this.modules.interactions = VoltreInteractionsBridge;
        }
    },

    /**
     * Enregistrer les handlers globaux
     */
    _registerGlobalHandlers() {
        // Fermeture avec ESC (sauf pour le context menu qui gère sa propre fermeture)
        VoltreEvents.on('escape', () => {
            // Ne pas fermer si le context menu est ouvert (il gère sa propre fermeture par clic extérieur)
            // Le context menu est dans l'iframe interactions
            const interactionsIframe = document.getElementById('core-nui');
            if (interactionsIframe && interactionsIframe.style.pointerEvents === 'auto') {
                console.log('[VoltreUI] Context menu is open, ignoring ESC');
                return;
            }
            this.closeAllMenus();
        });

        // Mise à jour de position du joueur
        VoltreEvents.on('position', (data) => {
            VoltreState.updatePlayerPosition(data.x, data.y, data.z);
        });

        // Afficher/Masquer l'UI globale
        VoltreEvents.on('hideComponent', (data) => {
            const element = document.getElementById(data.component);
            if (element) {
                element.style.display = data.value ? 'none' : 'block';
            }
        });

        // Mise à jour des statuts (barres de vie, faim, soif, etc.)
        VoltreEvents.on('updateStatus', (data) => {
            this._updateStatusBars(data.status);
        });

        VoltreEvents.on('setStatuts', (data) => {
            this._updateStatusBars(data.statuts);
        });
    },

    /**
     * Mettre à jour les barres de statut
     * @param {Array} statuts - Liste des statuts
     */
    _updateStatusBars(statuts) {
        if (!Array.isArray(statuts)) return;

        statuts.forEach(status => {
            const bar = document.querySelector(`.progress-${status.name}`);
            if (bar) {
                bar.style.width = `${status.percent || status.value}%`;
            }
        });
    },

    /**
     * Fermer tous les menus ouverts
     */
    closeAllMenus() {
        // Émettre un événement pour que les menus se ferment
        VoltreEvents.emit('menu:closeAll', {});
        
        // Notifier le client Lua
        VoltreEvents.post('closeMenu', {});
    },

    /**
     * Obtenir un module
     * @param {string} name - Nom du module
     * @returns {Object|null}
     */
    getModule(name) {
        return this.modules[name] || null;
    },

    /**
     * Enregistrer un nouveau module
     * @param {string} name - Nom du module
     * @param {Object} module - Instance du module
     */
    registerModule(name, module) {
        if (this.modules[name]) {
            console.warn(`[VoltreUI] Module "${name}" already registered`);
            return;
        }
        
        this.modules[name] = module;
        
        if (typeof module.init === 'function') {
            module.init();
        }
        
    }
};

// Alias pour compatibilité ESX
const ESX = {
    HUDElements: [],
    
    setHUDDisplay(opacity) {
        VoltreHUD.setDisplay(opacity);
    },
    
    insertHUDElement(name, index, priority, html, data) {
        VoltreHUD.insert(name, index, priority, html, data);
    },
    
    updateHUDElement(name, data) {
        VoltreHUD.update(name, data);
    },
    
    deleteHUDElement(name) {
        VoltreHUD.delete(name);
    },
    
    refreshHUD() {
        VoltreHUD._render();
    },
    
    inventoryNotification(add, label, count) {
        VoltreNotifications.inventory(add, label, count);
    }
};

// Initialiser au chargement de la page
window.addEventListener('load', () => {
    VoltreUI.init();
});

// Export global
window.VoltreUI = VoltreUI;
window.ESX = ESX;
