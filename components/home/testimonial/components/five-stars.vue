<template>
  <div class="flex gap-x-[3.47px] items-center md:gap-x-[2.96px] lg:gap-x-1">
    <div 
      class="w-[8.47px] h-2 fill-white md:w-[14.82px] md:h-[14px] lg:w-5 lg:h-[18.89px]"
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