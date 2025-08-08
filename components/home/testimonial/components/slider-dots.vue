<template>
  <div class="flex items-center md:gap-x-[5.21px] lg:gap-x-[9px]">
    <div :class="`w-2 h-2 rounded-full ${currentSlide === 1 ? 'bg-white' : 'bg-white opacity-20'}`"></div>
    <div :class="`w-2 h-2 rounded-full ${currentSlide === 2 ? 'bg-white' : 'bg-white opacity-20'}`"></div>
  </div>
</template>

<script setup lang="ts">
defineProps<{
  currentSlide: number
}>()
</script>

<style scoped></style>
