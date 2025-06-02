<template>
  <svg :class="`${styles || 'fill-[#8E8E93]'}`" width="2" height="16" viewBox="0 0 2 16" xmlns="http://www.w3.org/2000/svg">
    <rect opacity="0.3" x="0.647705" width="1" height="16" rx="0.5"/>
  </svg>
</template>

<script setup lang="ts">
defineProps<{
  styles?: string
}>();
</script>

<style scoped>
</style>