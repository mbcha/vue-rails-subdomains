import Vue from 'vue';
import Router from 'vue-router';
import MicroSite from '../components/MicroSite';

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: '/',
      name: 'micro-site',
      component: MicroSite,
    },
  ],
});
