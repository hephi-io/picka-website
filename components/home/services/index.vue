<template>
  <div class="py-[112px]">
    <div class="max-w-[1312px] mx-auto">
      <div class="flex justify-between items-start">
        <div class="w-[167.36px] h-[178.56px] rounded-3xl border-[0.3px] border-white p-[6px] bg-[#FF7C33]">
          <MapImage />
        </div>
        <h1
          class="w-[33.15%] font-bold text-[56px] leading-[100%] tracking-[0%] align-middle text-[#F0F0F0]"
        >
          Move Anything. Anywhere. Effortlessly.
        </h1>
      </div>
      <h3 class="w-[34.34%] font-medium text-xl leading-[100%] tracking-[0%] align-middle text-[#F0F0F0] mt-20">
        Picka makes every movement smarter, with real-time tracking, flexible options, and scalable tech at its core.
      </h3>
      <div class="w-fit h-[42px] mt-10">
        <Button class="group gap-x-2 rounded-md border-[0.5px] border-[#E5E4DE] hover:bg-[#E5E4DE]" variant="ghost">
          <span class="text-[13px] leading-[18px] -tracking-[0.25px] text-center text-white group-hover:text-black">
            Get Started
          </span>
          <Arrow :style="'fill-white group-hover:fill-black'" />
        </Button>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import MapImage from "~/components/home/services/components/map-image.vue";
import Button from "~/components/ui/button/Button.vue";
import Arrow from "~/components/home/navbar/components/arrow.vue";
</script>

<style scoped></style>
