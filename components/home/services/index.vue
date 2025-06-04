<template>
  <div class="w-full h-full flex justify-between">
    <div class="w-[48.47%] flex flex-col justify-between">
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
    </div>
    <div class="w-[45.77%] h-full rounded-[12px] overflow-hidden">
      <img class="w-full h-full" :src="DeliveryGuy" alt="" />
    </div>
  </div>
</template>

<script setup lang="ts">
import Lists from "~/components/home/services/components/lists.vue";
import Ellipse from "~/components/home/about/components/ellipse.vue";
import DeliveryGuy from "~/assets/pngs/delivery-guy.png";
</script>

<style scoped></style>
