<template>
  <div>
    <motion.div
      :variants="containerVariants"
      initial="start"
      whileInView="end"
      :inViewOptions="{ once: true }"
    >
      <motion.div 
        class="w-fit flex items-center md:gap-x-[5.56px] lg:gap-x-2 mx-auto"
        :variants="variants"
      >
        <Ellipse />
        <span class="font-medium leading-[140%] tracking-normal text-white md:text-[10px] lg:text-13px">
          Trusted by Thousands, Delivered with Purpose
        </span>
      </motion.div>
      <motion.div 
        class="mt-16"
        :variants="variants"
      >
        <TestimonialCarousel />
      </motion.div>
    </motion.div>
    <motion.div 
      class="rounded-2xl bg-[#212121] md:h-[787.8px] lg:h-[528px] md:mt-40 lg:mt-[224px]"
      :variants="variants"
      initial="start"
      whileInView="end"
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
  start: { opacity: 0, y: "200px" },
  end: { opacity: 1, y: 0 },
};
</script>

<style scoped></style>