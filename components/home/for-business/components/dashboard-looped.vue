<template>
  <video
    class="absolute md:-top-13 lg:-top-13 object-cover md:w-[990.13px] md:h-[594.87px] lg:w-[1072.03px] lg:h-[644.08px]"
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
