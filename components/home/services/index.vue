<template>
  <motion.div 
    id="services"
    class="w-full h-full md:flex md:justify-between"
    :variants="containerVariants"
    initial="start"
    whileInView="end"
    :inViewOptions="{ once: true }"
  >
    <motion.div 
      class="md:flex md:flex-col md:justify-between md:w-[43.72%] lg:w-[48.47%]"
      :variants="variants"
      :transition="{ease: 'easeOut'}"
    >
      <div>
        <div class="flex gap-x-1.5 items-center md:gap-x-[6.41px] lg:gap-x-2">
          <Ellipse />
          <p
            class="font-medium text-[9px] leading-[140%] tracking-normal text-white md:text-[10px] lg:text-[13px]"
          >
            Services That Move with You
          </p>
        </div>
        <h3
          class="font-medium text-sm leading-[140%] tracking-normal text-white md:text-base lg:text-2xl mt-3 md:mt-4"
        >
          Flexible solutions built for your personal and business logistics
          needs.
        </h3>
      </div>
      <Lists />
    </motion.div>
    <motion.div 
      class="w-full h-[360px] rounded-[3.25px] overflow-hidden object-cover md:w-[52.07%] md:h-full md:rounded-[6.95px] lg:w-[45.77%] lg:rounded-[12px] mt-10 md:mt-0"
      :variants="variants"
      :transition="{ease: 'easeOut'}"      
    >
      <img class="w-full h-full object-cover md:hidden" :src="DeliveryGuySmall" alt="" />
      <img class="hidden md:block md:w-full md:h-full" :src="DeliveryGuy" alt="" />
    </motion.div>
  </motion.div>
</template>

<script setup lang="ts">
import { motion } from "motion-v";
import Lists from "~/components/home/services/components/lists.vue";
import Ellipse from "~/components/home/about/components/ellipse.vue";
import DeliveryGuy from "~/assets/pngs/delivery-guy.png";
import DeliveryGuySmall from "~/assets/pngs/delivery-guy-small.png";

const containerVariants = {
  start: { opacity: 0 },
  end: { opacity: 1, transition: { when: "beforeChildren", staggerChildren: 0.3 } },
}

const variants = {
  start: { opacity: 0, y: "100px" },
  end: { opacity: 1, y: 0 },
} 
</script>

<style scoped></style>
