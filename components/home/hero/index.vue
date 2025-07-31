<template>
  <div class="h-screen md:pt-[23.59vh] lg:pt-[26.34vh]">
    <motion.div
      class="relative h-full md:w-[91.37%] lg:max-w-[976px] mx-auto"
      :variants="divVariants"
      initial="start"
      animate="end"
    >
      <motion.h1
        class="flex flex-wrap gap-x-1 justify-center font-bold leading-[120%] text-center text-[#E5E4DE] md:w-[97.65%] md:text-[39px] md:-tracking-[0.07px] md:align-bottom lg:max-w-[832px] lg:text-5xl lg:-tracking-[0.08px] mx-auto"
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
          class="text-base leading-[120%] text-center text-[#E5E4DE] md:w-[97.65%] md:-tracking-[0.07px] md:align-bottom lg:max-w-[832px] lg:-tracking-[0.08px] mx-auto md:mt-[2.72vh] lg:mt-[2.58vh]"
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

<style scoped>
/*
font-family: Filson Pro;
font-weight: 700;
font-style: Bold;
font-size: 39px;
leading-trim: NONE;
line-height: 120%;
letter-spacing: -0.07px;
text-align: center;
vertical-align: bottom;
*/
</style>
