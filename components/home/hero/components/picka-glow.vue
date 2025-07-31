<template>
  <div class="w-full h-[57.42vh]">
    <img class="w-full h-full" :src="glows" alt="" />
    <div
      class="absolute w-full flex justify-center md:bottom-[10.60vh] md:h-[34.89vh] lg:bottom-[12.04vh] lg:h-[33.31vh]"
    >
      <PickaVector />
    </div>
    <div
      class="absolute right-0 left-0 rounded-[50px] border border-[#414141] bg-black overflow-hidden md:bottom-[11vh] md:w-[39.76vh] md:h-[39.76vh] lg:bottom-[13vh] lg:w-[32.26vh] lg:h-[32.26vh] mx-auto"
    >
      <MapVideo />
    </div>
  </div>
</template>

<script setup lang="ts">
import PickaVector from "~/components/home/hero/components/picka-vector.vue";
import MapVideo from "~/components/home/hero/components/map-video.vue";
import glows from "~/assets/pngs/glows.png";
</script>

<style scoped></style>
