<template>
  <div class="w-full flex justify-between items-start">
    <div class="flex gap-x-2 items-center">
      <Ellipse />
      <p
        class="font-medium text-[13px] leading-[140%] tracking-normal text-white"
      >
        {{ text }}
      </p>
    </div>
    <h3 class="w-[43.17%] font-medium text-2xl leading-[140%] tracking-normal text-white">
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