import 'bootstrap'
import Turbolinks from 'turbolinks'
import Vue from 'vue'
import VueCompositionApi from '@vue/composition-api'
import VueI18n from 'vue-i18n'

import WorkDetail from './v3/components/pages/WorkDetail.vue'

import escape from './v3/filters/escape'
import formatDomain from './v3/filters/formatDomain'
import newLine from './v3/filters/newLine'


import messages from './v3/messages'
import { FetchViewerQuery } from './v3/queries'

Vue.config.productionTip = false
Vue.use(VueCompositionApi)
Vue.use(VueI18n)

const i18n = new VueI18n({
  locale: 'ja',
  fallbackLocale: 'en',
  messages,
})

Vue.filter('escape', escape)
Vue.filter('formatDomain', formatDomain)
Vue.filter('newLine', newLine)

Vue.component('c-work-detail', WorkDetail)

document.addEventListener('turbolinks:load', _event => {
  new Vue({
    i18n,
    el: '#app',
    data() {
      return {
        viewer: null,
      }
    },

    async created() {
      const result = await new FetchViewerQuery().execute()
      this.viewer = result.data.viewer
    },

    methods: {
      isSignedIn() {
        return !!this.viewer
      },
    },
  })
})

Turbolinks.start()
