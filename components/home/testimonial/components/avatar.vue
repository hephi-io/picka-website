<template>
  <div class="flex gap-x-[6.92px] items-center md:gap-x-[11.58px] lg:gap-x-5">
    <div class="w-6 h-6 rounded-full overflow-hidden md:w-[32.43px] md:h-[32.43px] lg:w-14 lg:h-14">
      <img :src="Avatar" alt="Avatar" class="w-full h-full">
    </div>
    <div>
      <div class="font-bold text-[11px] leading-[150%] tracking-normal text-white lg:text-base">
        Wade Warren
      </div>
      <div class="text-[9px] leading-[150%] tracking-normal text-white md:text-[8px] lg:text-xs">
        COO, Webflow
      </div>
    </div>
    <div class="h-[21.12px] border-l-[0.35px] border-l-white md:h-[35.33px] md:border-l-[0.58px] lg:h-[61px] lg:border-l"></div>
    <div class="w-[89.67px] h-[14.95px] md:w-[78.18px] md:h-[13.03px] lg:w-[134.98px] lg:h-[22.5px] fill-white">
      <WebflowLogo />
    </div>
  </div>
</template>

<script setup lang="ts">
import Avatar from "~/assets/svgs/avatar.svg"
import WebflowLogo from "~/components/home/testimonial/components/webflow-logo.vue";
</script>

<style scoped></style>