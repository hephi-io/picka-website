<template>
  <div class="mt-12 md:mt-20 lg:mt-[112px]">
    <!-- <motion.div
      :variants="containerVariants"
      initial="start"
      whileInView="end"
      :inViewOptions="{ once: true }"
    >
      <motion.div 
        class="w-fit flex gap-x-[4.14px] items-center md:gap-x-[5.56px] lg:gap-x-2 mx-auto"
        :variants="variants"
      >
        <Ellipse />
        <span class="font-medium text-[9px] leading-[140%] tracking-normal text-white md:text-[10px] lg:text-13px">
          Trusted by Thousands, Delivered with Purpose
        </span>
      </motion.div>
      <motion.div 
        class="mt-12 md:mt-16"
        :variants="variants"
      >
        <TestimonialCarousel />
      </motion.div>
    </motion.div> -->
    <motion.div 
      class="h-[478.82px] rounded-[7.48px] bg-[#212121] md:h-[787.8px] md:rounded-2xl lg:h-[528px]"
      :variants="variants"
      initial="start"
      whileInView="end"
      :transition="{ ease: 'easeOut' }"
      :inViewOptions="{ once: true }"
    >
      <Download />
    </motion.div>
  </div>
</template>

<script setup lang="ts">
import { motion } from 'motion-v';
import Ellipse from '~/components/home/about/components/ellipse.vue';
import TestimonialCarousel from '~/components/home/testimonial/components/testimonial-carousel.vue';
import Download from '~/components/home/testimonial/components/download.vue';

const containerVariants = {
  start: { opacity: 0 },
  end: { opacity: 1, transition: { staggerChildren: 1 } },
};

const variants = {
  start: { y: 100 },
  end: { y: 0 },
};
</script>

<style scoped></style>