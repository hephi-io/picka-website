<template>
  <motion.div :variants="containerVariants" initial="start" whileInView="end" :inViewOptions="{ once: true }">
    <motion.div class="max-w-[1112px] mx-auto" :variants="childrenVariants">
      <FlexHeading :text="text" :heading="heading" />
    </motion.div>
    <motion.div class="mt-16 overflow-hidden" :variants="childrenVariants">
      <motion.div class="w-full h-[410px]">
        <HorizontalSlide />
      </motion.div>
    </motion.div>
  </motion.div>
</template>

<script setup lang="ts">
import { motion, useScroll, useTransform } from "motion-v";
import HorizontalSlide from "~/components/home/how-it-works/components/horizontal-slide.vue";
import FlexHeading from "~/components/home/how-it-works/components/flex-heading.vue";

const text = "How Picka Delivers Smarter";
const heading =
  "Experience end-to-end logistics automation—from instant bookings to real-time tracking and reverse pickups.";

const containerVariants = {
  start: { opacity: 0 },
  end: { opacity: 1, transition: { staggerChildren: 0.5 } },
};

const childrenVariants = {
  start: { opacity: 0, y: "200px" },
  end: { opacity: 1, y: 0 },
};

const { scrollYProgress } = useScroll();

const scale = useTransform(scrollYProgress, [0.29, 0.33], [1, 1.2])
</script>

<style scoped></style>
