<template>
  <div class="w-full h-full flex justify-center items-center">
    <div class="w-[640px] h-[576px]">
      <video class="w-full h-full" autoplay muted loop>
        <source :src="EnlargingVideo" type="video/mp4">
      </video>
    </div>
  </div>
</template>

<script setup lang="ts">
import EnlargingVideo from "~/assets/mp4/enlarging-video.mp4"
</script>

<style scoped></style>
