<template>
  <div class="w-full flex justify-between items-start">
    <div class="flex items-center md:gap-x-[6.64px] lg:gap-x-2">
      <Ellipse />
      <p
        class="font-medium leading-[140%] tracking-normal text-white md:text-[10px] lg:text-[13px]"
      >
        {{ text }}
      </p>
    </div>
    <h3 class="font-medium leading-[140%] tracking-normal text-white md:w-[36.61%] md:text-base lg:w-[43.17%] lg:text-2xl">
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