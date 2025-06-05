<template>
  <div class="flex gap-x-5 items-center">
    <div class="w-14 h-14 rounded-full overflow-hidden">
      <img :src="Avatar" alt="Avatar" class="w-full h-full">
    </div>
    <div>
      <div class="font-bold text-base leading-[150%] tracking-normal text-white">
        Wade Warren
      </div>
      <div class="text-xs leading-[150%] text-white">
        COO, Webflow
      </div>
    </div>
    <div class="h-[61px] border-l border-l-white"></div>
    <div class="w-[134.98px] h-[22.5px] fill-white">
      <WebflowLogo />
    </div>
  </div>
</template>

<script setup lang="ts">
import Avatar from "~/assets/svgs/avatar.svg"
import WebflowLogo from "~/components/home/testimonial/components/webflow-logo.vue";
</script>

<style scoped></style>
