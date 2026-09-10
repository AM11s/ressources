/**
 * Voltre UI - Module Clipboard
 * Gestion du presse-papiers et ouverture d'URLs
 */

const VoltreClipboard = {
    /**
     * Initialiser le module
     */
    init() {
        // Enregistrer les handlers d'événements
        VoltreEvents.on('copy', (data) => this.copy(data.text || data.tool || data.coords));
        VoltreEvents.on('openUrl', (data) => this.openUrl(data.link || data.url));
    },

    /**
     * Copier du texte dans le presse-papiers
     * @param {string} text - Texte à copier
     * @returns {boolean} - Succès
     */
    copy(text) {
        if (!text) return false;

        try {
            // Méthode moderne (Clipboard API)
            if (navigator.clipboard && navigator.clipboard.writeText) {
                navigator.clipboard.writeText(text).then(() => {
                    VoltreEvents.emit('clipboard:copied', { text });
                }).catch(() => {
                    this._fallbackCopy(text);
                });
                return true;
            }
            
            // Fallback pour les anciens navigateurs
            return this._fallbackCopy(text);
        } catch (e) {
            console.error('[VoltreClipboard] Error copying:', e);
            return false;
        }
    },

    /**
     * Méthode de copie fallback
     * @param {string} text - Texte à copier
     * @returns {boolean} - Succès
     */
    _fallbackCopy(text) {
        const textarea = document.createElement('textarea');
        textarea.value = text;
        textarea.style.position = 'fixed';
        textarea.style.left = '-9999px';
        textarea.style.top = '-9999px';
        
        document.body.appendChild(textarea);
        textarea.select();
        
        try {
            const success = document.execCommand('copy');
            if (success) {
                VoltreEvents.emit('clipboard:copied', { text });
            }
            return success;
        } catch (e) {
            console.error('[VoltreClipboard] Fallback copy failed:', e);
            return false;
        } finally {
            document.body.removeChild(textarea);
        }
    },

    /**
     * Ouvrir une URL externe
     * @param {string} url - URL à ouvrir
     */
    openUrl(url) {
        if (!url) return;

        try {
            // Utiliser l'API native FiveM si disponible
            if (window.invokeNative) {
                window.invokeNative('openUrl', url);
            } else {
                // Fallback: ouvrir dans un nouvel onglet (ne fonctionnera pas en NUI)
                window.open(url, '_blank');
            }
            
            VoltreEvents.emit('url:opened', { url });
        } catch (e) {
            console.error('[VoltreClipboard] Error opening URL:', e);
        }
    }
};

// Export global
window.VoltreClipboard = VoltreClipboard;
