<template>
  <div class="flex gap-x-[9px] items-center">
    <div class="w-2 h-2 bg-white rounded-full"></div>
    <div class="w-2 h-2 bg-white opacity-20 rounded-full"></div>
  </div>
</template>

<script setup lang="ts">
defineProps<{
  currentSlide: number
}>()
</script>

<style scoped></style>
