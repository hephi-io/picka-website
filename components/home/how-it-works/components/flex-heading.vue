<template>
  <div class="w-full md:flex md:justify-between md:items-start">
    <div class="flex gap-x-1.5 items-center md:gap-x-[6.64px] lg:gap-x-2">
      <Ellipse />
      <p
        class="font-semibold text-[9px] leading-[140%] tracking-normal text-white md:text-[10px] lg:text-[13px]"
      >
        {{ text }}
      </p>
    </div>
    <h3 class="text-sm leading-[120%] tracking-normal text-white md:w-[36.61%] md:font-medium md:text-base md:leading-[140%] lg:w-[43.17%] lg:text-2xl mt-3 md:mt-0">
      {{ heading }}
    </h3>
  </div>
</template>

<script setup lang="ts">
import Ellipse from "~/components/home/about/components/ellipse.vue";

defineProps<{
  text: string;
  heading: string;
}>()
</script>

<style scoped>

</style>