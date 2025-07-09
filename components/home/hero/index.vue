<template>
  <div class="h-screen pt-[26.34vh]">
    <motion.div
      class="relative max-w-[976px] h-[61.61vh] mx-auto"
      :variants="divVariants"
      initial="start"
      animate="end"
    >
      <motion.h1
        class="max-w-[832px] flex flex-wrap gap-x-1 justify-center font-bold text-5xl leading-[120%] -tracking-[0.08px] text-center text-[#E5E4DE] mx-auto"
        :variants="headingVariants"
      >
        <motion.span
          v-for="(word, index) in wordArray"
          :key="index"
          :variants="textVariants"
        >
          {{ word }}
        </motion.span>
      </motion.h1>
      <motion.div :variants="displayVariants">
        <motion.p
          class="max-w-[832px] text-base leading-[120%] -tracking-[0.08px] text-center text-[#E5E4DE] mt-[2.58vh] mx-auto"
          :variants="childrenVariants"
        >
          From real-time, Uber-like deliveries to API-driven logistics
          solutions, Picka makes sending and receiving items effortless for
          individuals and businesses.
        </motion.p>
        <motion.div 
          class="absolute bottom-0 w-full"
          :variants="childrenVariants"
        >
          <PickaGlow />
        </motion.div>
      </motion.div>
    </motion.div>
  </div>
</template>

<script setup lang="ts">
import { motion } from "motion-v";
import PickaGlow from "~/components/home/hero/components/picka-glow.vue";

const divVariants = {
  start: { opacity: 0 },
  end: {
    opacity: 1,
    transition: { delay: 0.4, staggerChildren: 2 },
  },
};

const headingVariants = {
  start: { opacity: 0, y: "22px" },
  end: {
    opacity: 1,
    y: 0,
    transition: { staggerChildren: 0.1 },
  },
};

const displayVariants = {
  start: { opacity: 0 },
  end: { opacity: 1, transition: { staggerChildren: 2.5 } },
};

const textVariants = {
  start: { opacity: 0, y: "100%" },
  end: { opacity: 1, y: 0, x: 0 },
};

const childrenVariants = {
  start: { opacity: 0, y: "22px" },
  end: { opacity: 1, y: 0 },
}

const sentence =
  "Effortless Logistics. Seamless Deliveries. Powered by Technology.";

const wordArray = sentence.split(/(\s+)/);
</script>

<style scoped></style>
