// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "flowbite/dist/flowbite.turbo.js";

require('./scripts/theme_mode');
require('./scripts/add_jquery');
require('./scripts/add_alpine');
