<template>
  <div>
    <motion.div
      :variants="containerVariants"
      initial="start"
      whileInView="end"
      :inViewOptions="{ once: true }"
    >
      <motion.div 
        class="w-fit flex gap-x-2 items-center mx-auto"
        :variants="variants"
      >
        <Ellipse />
        <span class="font-medium text-13px leading-[140%] tracking-normal text-white">
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
      class="h-[528px] rounded-2xl bg-[#212121] mt-[224px]"
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