<template>
  <div class="flex gap-x-[9px] items-center">
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
