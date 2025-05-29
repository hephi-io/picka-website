<template>
  <video
    class="w-full h-full"
    autoplay
    muted
    loop
  >
    <source :src="MapLooped" type="video/mp4">
  </video>
</template>

<script setup lang="ts">
import MapLooped from "@/assets/mp4/map-looped.mp4"
</script>

<style scoped></style>
