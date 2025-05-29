<template>
  <div class="absolute bottom-0 w-full h-[57.42vh]">
    <img class="w-full h-full" :src="glows" alt="" />
    <div class="absolute bottom-3 w-full h-[33.31vh] flex justify-center">
      <PickaVector />
    </div>
    <div class="w-[32.26vh] h-[32.26vh] absolute bottom-4 right-0 left-0 rounded-[50px] border border-[#414141] bg-black overflow-hidden mx-auto">
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
