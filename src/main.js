import { createApp } from 'vue'
import './style.css'
import App from './App.vue'
import i18n from "./i18n.js";
import PrimeVue from 'primevue/config';
import Material from '@primeuix/themes/material';
import 'primeicons/primeicons.css';
import 'primeflex/primeflex.css';
import {Avatar, Button, Card, Drawer, Menu, Menubar, Toolbar, Tooltip} from "primevue";

const app = createApp(App);

app.use(i18n)
    .use(PrimeVue, { ripple: true, theme: { preset: Material } })
    .component('pv-button', Button)
    .component('pv-card', Card)
    .component('pv-select-button', Button)
    .component('pv-drawer', Drawer)
    .component('pv-avatar', Avatar)
    .component('pv-menu', Menu)
    .component('pv-menubar', Menubar)
    .component('pv-toolbar', Toolbar)
    .component('pv-tooltip', Tooltip)
    .component('pv-image', Image)
    .mount('#app');
