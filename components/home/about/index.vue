<template>
  <div class="h-[530.72px] flex justify-center items-center">
    <div class="max-w-[1112px] h-[306.72px] flex flex-col items-center">
      <div class="flex gap-x-[10px] items-center">
        <Ellipse />
        <span class="text-[13px] leading-[150%] tracking-[0%] text-white">
          Picka-The Fastest in Africa
        </span>
      </div>
      <div class="flex gap-x-1 items-center mt-4">
        <Icon>
          <Package />
        </Icon>
        <DurationIcon />
        <Icon>
          <HomeIcon />
        </Icon>
      </div>
      <h2 class="w-[78.24%] font-bold text-[32px] leading-[120%] -tracking-[0.08px] text-center text-[#E5E4DE] mt-[44px]">
        We are a tech-driven logistics company redefining delivery experiences for individuals and businesses. Whether you need on-demand deliveries or full-scale logistics automation, we simplify the process with fast, reliable, and seamless solutions.
      </h2>
    </div>
  </div>
</template>

<script setup lang="ts">
import Ellipse from "~/components/home/about/components/ellipse.vue";
import Icon from "~/components/home/about/components/icon.vue";
import Package from "~/components/home/about/components/package.vue";
import HomeIcon from "~/components/home/about/components/home-icon.vue";
import DurationIcon from "~/components/home/about/components/duration-icon.vue";
</script>

<style scoped></style>
