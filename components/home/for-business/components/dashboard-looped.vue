<template>
  <video
    class="absolute -top-13 w-[1072.03px] h-[644.08px] outline outline-white object-cover"
    autoplay
    loop
    muted
  >
    <source :src="DashboardLooped" type="video/mp4" />
  </video>
</template>

<script setup lang="ts">
import DashboardLooped from "~/assets/mp4/dashboard-looped.mp4"
</script>

<style scoped></style>
