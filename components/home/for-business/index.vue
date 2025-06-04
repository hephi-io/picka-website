<template>
  <div class="w-full h-full">
    <div class="max-w-[1112px] mx-auto">
      <FlexHeading :text="text" :heading="heading" />
      <div class="grid grid-cols-4 gap-2 mt-16">
        <div
          class="h-[271.57px] rounded-xl bg-[#212121]"
          v-for="card in cards"
          :key="card.id"
        >
          <Card>
            <component :is="card.icon" />
          </Card>
        </div>
      </div>
    </div>
    <div class="flex">
      <div class="flex-[11.46%] shrink-0"></div>
      <div class="flex-[88.54%] flex justify-between items-center shrink-0 mt-[224px]">
        <div class="w-[23.37%]">
          <h2
            class="font-bold text-4xl leading-[140%] tracking-normal text-white"
          >
            Deliver Smarter. Earn More.
          </h2>
          <p class="text-base leading-[140%] tracking-normal text-white mt-4">
            Join a network of reliable, empowered riders. Get flexible hours,
            instant bookings, and real-time earnings.
          </p>
          <Button
            class="w-[138px] h-[42px] gap-x-2 border-[0.5px] border-[#E5E4DE] rounded-[7px] mt-6"
          >
            <span
              class="text-[13px] leading-[18px] -tracking-[0.25px] text-center text-white"
            >
              Join as a Rider
            </span>
            <Arrow :style="'fill-white'" />
          </Button>
        </div>
        <div class="relative w-[55%] h-[540px] rounded-s-[36px] border border-[#414141] overflow-hidden py-2">
          <DashboardLooped />
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
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
  { id: 1, icon: FocalPoint },
  { id: 2, icon: LightBox },
  { id: 3, icon: AcmeGroup },
  { id: 4, icon: Interlock },
  { id: 5, icon: Galileo },
  { id: 6, icon: Spherule },
  { id: 7, icon: Pipedrive },
  { id: 8, icon: Hourglass },
];
</script>

<style scoped>
</style>
