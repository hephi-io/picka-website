<template>
  <div class="flex gap-x-1 items-center">
    <div 
      class="w-5 h-[18.89px] fill-white"
      v-for="star in stars"
      :key="star"
    >
      <Star />
    </div>
  </div>
</template>

<script setup lang="ts">
import Star from '~/components/home/testimonial/components/star.vue';

const stars = [1, 2, 3, 4, 5]
</script>

<style scoped></style>