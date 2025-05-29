<template>
  <div
    class="w-[25%] h-[50px] rounded-[7px] flex justify-between items-center bg-[#2D2D2D] px-1"
  >
    <Button
      class="w-[51.8%] h-[42px] rounded-md border-[0.5px] border-[#E5E4DE] bg-inherit gap-x-2 p-0 button-shadow"
    >
      Become a Rider
      <Arrow :style="'fill-white'" />
    </Button>
    <Button
      class="group w-[42.45%] h-[42px] rounded-[7px] p-0 gap-x-2 bg-[#E5E4DE] border-[0.5px] border-[#0000000A] button-shadow hover:bg-inherit"
    >
      <span
        class="text-[13px] leading-[18px] -tracking-[0.25px] text-center text-black group-hover:text-[#E5E4DE]"
      >
        Get started
      </span>
      <Arrow :style="'fill-black group-hover:fill-white'" />
    </Button>
  </div>
</template>

<script setup lang="ts">
import Button from "@/components/ui/button/Button.vue";
import Arrow from "@/components/home/navbar/components/arrow.vue";
</script>

<style scoped>
.button-shadow {
  box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.12), 0px 3px 1px rgba(0, 0, 0, 0.04);
}
</style>
