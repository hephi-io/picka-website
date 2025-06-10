<template>
  <div>
    <div class="w-fit flex gap-x-2 items-center mx-auto">
      <Ellipse />
      <span class="font-medium text-13px leading-[140%] tracking-normal text-white">
        Trusted by Thousands, Delivered with Purpose
      </span>
    </div>
    <div class="mt-16">
      <TestimonialCarousel />
    </div>
    <div class="h-[528px] rounded-2xl bg-[#212121] mt-[224px]">
      <Download />
    </div>
  </div>
</template>

<script setup lang="ts">
import Ellipse from '~/components/home/about/components/ellipse.vue';
import TestimonialCarousel from '~/components/home/testimonial/components/testimonial-carousel.vue';
import Download from '~/components/home/testimonial/components/download.vue';
</script>

<style scoped></style>