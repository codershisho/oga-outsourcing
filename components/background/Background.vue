<template>
  <div class="particle">
    <Particles
      id="tsparticles"
      :particlesInit="particlesInit"
      :options="config"
    />
  </div>
</template>

<script>
import { loadFull } from 'tsparticles'
export default {
  data() {
    return {
      config: require('./config.json'),
    }
  },

  methods: {
    particlesInit: async function (engine) {
      await loadFull(engine)
    },
  },
}
</script>

<style>
.particle {
  background: white;
  height: 100%;
  width: 100%;
  top: 0;
  left: 0;
  position: absolute;
  z-index: 0;
}
</style>
