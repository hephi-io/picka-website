<template>
  <motion.div 
    class="w-full h-full flex justify-between"
    :variants="containerVariants"
    initial="start"
    whileInView="end"
    :inViewOptions="{ once: true }"
  >
    <motion.div 
      class="flex flex-col justify-between md:w-[43.72%] lg:w-[48.47%]"
      :variants="variants"
    >
      <div>
        <div class="flex items-center md:gap-x-[6.41px] lg:gap-x-2">
          <Ellipse />
          <p
            class="font-medium leading-[140%] tracking-normal text-white md:text-[10px] lg:text-[13px]"
          >
            Services That Move with You
          </p>
        </div>
        <h3
          class="font-medium leading-[140%] tracking-normal text-white md:text-base lg:text-2xl mt-4"
        >
          Flexible solutions built for your personal and business logistics
          needs.
        </h3>
      </div>
      <Lists />
    </motion.div>
    <motion.div 
      class="h-full overflow-hidden md:w-[52.07%] md:rounded-[6.95px] lg:w-[45.77%] lg:rounded-[12px]"
      :variants="variants"
    >
      <img class="w-full h-full" :src="DeliveryGuy" alt="" />
    </motion.div>
  </motion.div>
</template>

<script setup lang="ts">
import { motion } from "motion-v";
import Lists from "~/components/home/services/components/lists.vue";
import Ellipse from "~/components/home/about/components/ellipse.vue";
import DeliveryGuy from "~/assets/pngs/delivery-guy.png";

const containerVariants = {
  start: { opacity: 0 },
  end: { opacity: 1, transition: { staggerChildren: 0.3 } },
}

const variants = {
  start: { opacity: 0, y: "100px" },
  end: { opacity: 1, y: 0 },
} 
</script>

<style scoped></style>
