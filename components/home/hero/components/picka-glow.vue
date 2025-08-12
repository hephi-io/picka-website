<template>
  <div class="w-full h-full">
    <img class="w-full h-full" :src="glows" alt="" />
    <div
      class="absolute bottom-[17vh] w-full h-[16.97vh] md:bottom-[10.60vh] md:h-[34.89vh] lg:bottom-[12.04vh] lg:h-[33.31vh]"
    >
      <div class="w-[97.10%] md:w-[89.96%] mx-auto">
        <PickaVector />
      </div>
    </div>
    <div
      class="absolute right-0 left-0 bottom-[1.67vh] w-[38.94vh] h-[38.94vh] rounded-[50px] border border-[#414141] bg-black overflow-hidden md:bottom-[11vh] md:w-[39.76vh] md:h-[39.76vh] lg:bottom-[13vh] lg:w-[32.26vh] lg:h-[32.26vh] mx-auto"
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
