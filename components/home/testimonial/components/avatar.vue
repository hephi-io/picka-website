<template>
  <div class="flex items-center md:gap-x-[11.58px] lg:gap-x-5">
    <div class="rounded-full overflow-hidden md:w-[32.43px] md:h-[32.43px] lg:w-14 lg:h-14">
      <img :src="Avatar" alt="Avatar" class="w-full h-full">
    </div>
    <div>
      <div class="font-bold leading-[150%] tracking-normal text-white md:text-[11px] lg:text-base">
        Wade Warren
      </div>
      <div class="leading-[150%] text-white md:text-[8px] md:tracking-normal lg:text-xs">
        COO, Webflow
      </div>
    </div>
    <div class="border-l-white md:h-[35.33px] md:border-l-[0.58px] lg:h-[61px] lg:border-l"></div>
    <div class="md:w-[78.18px] md:h-[13.03px] lg:w-[134.98px] lg:h-[22.5px] fill-white">
      <WebflowLogo />
    </div>
  </div>
</template>

<script setup lang="ts">
import Avatar from "~/assets/svgs/avatar.svg"
import WebflowLogo from "~/components/home/testimonial/components/webflow-logo.vue";
</script>

<style scoped></style>
