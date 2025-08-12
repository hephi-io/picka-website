<template>
  <video
    class="absolute -top-6 w-[374px] h-[300.15px] object-cover md:-top-13 md:w-[990.13px] md:h-[594.87px] lg:w-[1072.03px] lg:h-[644.08px]"
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
