<template>
  <div class="w-full h-full">
    <motion.div
      class="md:w-[91.37%] lg:max-w-[1112px] mx-auto"
      :variants="containerVariants"
      initial="start"
      whileInView="end"
      :inViewOptions="{ once: true }"
    >
      <motion.div :variants="variants">
        <FlexHeading :text="text" :heading="heading" />
      </motion.div>
      <motion.div class="grid grid-cols-4 gap-2 md:mt-[37.07px] lg:mt-16" :variants="variants">
        <div
          class="h-[271.57px] rounded-xl bg-[#212121]"
          v-for="card in cards"
          :key="card.id"
        >
          <Card>
            <div :class="`${card.iconWidth} md:h-[27.8px] lg:h-12`">
              <component :is="card.icon" />
            </div>
          </Card>
        </div>
      </motion.div>
    </motion.div>
    <div class="flex md:mt-40 lg:mt-[224px]">
      <div class="shrink-0 md:flex-[4.32%] lg:flex-[11.46%]"></div>
      <div
        class="md:flex-[95.68%] lg:flex-[88.54%] lg:flex lg:justify-between lg:items-center lg:shrink-0"
      >
        <div class="lg:w-[23.37%]">
          <h2
            class="font-bold leading-[140%] tracking-normal text-white md:w-[25.94%] md:text-[25px] lg:w-full lg:text-4xl"
          >
            Deliver Smarter. Earn More.
          </h2>
          <p class="text-base leading-[140%] tracking-normal text-white md:w-[53%] lg:w-full md:mt-[9.27px] lg:mt-4">
            Join a network of reliable, empowered riders. Get flexible hours,
            instant bookings, and real-time earnings.
          </p>
          <Button
            class="w-[138px] h-[42px] gap-x-2 border-[0.5px] border-[#E5E4DE] rounded-[7px] hover:cursor-pointer mt-6"
          >
            <span
              class="text-[13px] leading-[18px] -tracking-[0.25px] text-center text-white"
            >
              Join as a Rider
            </span>
            <Arrow :style="'fill-white'" />
          </Button>
        </div>
        <div class="md:flex md:justify-end lg:block lg:w-[55%]">
          <div
            class="relative border-[#414141] overflow-hidden md:w-[72.7%] md:h-[497px] md:rounded-s-[31.63px] md:border-[0.88px] lg:w-full lg:h-[540px] lg:rounded-s-[36px] lg:border py-2 md:mt-10 lg:mt-0"
          >
            <DashboardLooped />
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { motion } from "motion-v";
import FlexHeading from "~/components/home/how-it-works/components/flex-heading.vue";
import Card from "~/components/home/for-business/components/card.vue";
import FocalPoint from "~/components/home/for-business/components/focal-point.vue";
import LightBox from "~/components/home/for-business/components/light-box.vue";
import AcmeGroup from "~/components/home/for-business/components/acme-group.vue";
import Interlock from "~/components/home/for-business/components/interlock.vue";
import Galileo from "~/components/home/for-business/components/galileo.vue";
import Spherule from "~/components/home/for-business/components/spherule.vue";
import Pipedrive from "~/components/home/for-business/components/pipedrive.vue";
import Hourglass from "~/components/home/for-business/components/hourglass.vue";
import Button from "~/components/ui/button/Button.vue";
import Arrow from "~/components/home/navbar/components/arrow.vue";
import DashboardLooped from "~/components/home/for-business/components/dashboard-looped.vue";

const text = "Power Your Operations with Picka";
const heading =
  "Streamline fulfillment, reduce delivery bottlenecks, and scale with confidence. Picka’s logistics API and business portal give you control.";

const cards = [
  { id: 1, icon: FocalPoint, iconWidth: "md:w-[115.25px] lg:w-[199px]", },
  { id: 2, icon: LightBox, iconWidth: "md:w-[96.72px] lg:w-[167px]", },
  { id: 3, icon: AcmeGroup, iconWidth: "md:w-[116.99px] lg:w-[202px]", },
  { id: 4, icon: Interlock, iconWidth: "md:w-[94.4px] lg:w-[163px]", },
  { id: 5, icon: Galileo, iconWidth: "md:w-[86.88px] lg:w-[150px]", },
  { id: 6, icon: Spherule, iconWidth: "md:w-[96.14px] lg:w-[166px]", },
  { id: 7, icon: Pipedrive, iconWidth: "md:w-[93.82px] lg:w-[162px]", },
  { id: 8, icon: Hourglass, iconWidth: "md:w-[112.36px] lg:w-[194px]", },
];

const containerVariants = {
  start: { opacity: 0 },
  end: { opacity: 1, transition: { staggerChildren: 1 } },
};

const variants = {
  start: { opacity: 0, y: "300px" },
  end: { opacity: 1, y: 0 },
};
</script>

<style scoped></style>
