<template>
  <motion.div 
    class="w-full h-full flex justify-between"
    :variants="containerVariants"
    initial="start"
    whileInView="end"
    :inViewOptions="{ once: true }"
  >
    <motion.div 
      class="w-[48.47%] flex flex-col justify-between"
      :variants="variants"
    >
      <div>
        <div class="flex gap-x-2 items-center">
          <Ellipse />
          <p
            class="font-medium text-[13px] leading-[140%] tracking-normal text-white"
          >
            Services That Move with You
          </p>
        </div>
        <h3
          class="font-medium text-2xl leading-[140%] tracking-normal text-white mt-4"
        >
          Flexible solutions built for your personal and business logistics
          needs.
        </h3>
      </div>
      <Lists />
    </motion.div>
    <motion.div 
      class="w-[45.77%] h-full rounded-[12px] overflow-hidden"
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
