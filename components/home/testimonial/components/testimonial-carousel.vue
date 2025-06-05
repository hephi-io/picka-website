<template>
  <Carousel>
    <CarouselContent>
      <CarouselItem>
        <div>
          <div class="w-fit mx-auto">
            <FiveStars />
          </div>
          <h3
            class="max-w-[768px] font-bold text-2xl leading-[140%] tracking-normal text-center text-white mt-8 mx-auto"
          >
            "We went from chasing multiple dispatch riders to having full
            visibility and control over every delivery. The real-time tracking
            and seamless API integration have been game-changers for our
            business."
          </h3>
          <div class="w-fit mx-auto mt-8">
            <Avatar />
          </div>
        </div>
      </CarouselItem>
      <CarouselItem>
        <div>
          <div class="w-fit mx-auto">
            <FiveStars />
          </div>
          <h3
            class="max-w-[768px] font-bold text-2xl leading-[140%] tracking-normal text-center text-white mt-8 mx-auto"
          >
            "We went from chasing multiple dispatch riders to having full
            visibility and control over every delivery. The real-time tracking
            and seamless API integration have been game-changers for our
            business."
          </h3>
          <div class="w-fit mx-auto mt-8">
            <Avatar />
          </div>
        </div>
      </CarouselItem>
    </CarouselContent>
    <CarouselPrevious 
      class="group w-12 h-12 border-[0.5px] border-[#E5E4DE] bg-[#110E09] p-0 m-0"
      @click="prevSlide"
    >
      <div class="w-[13.41px] h-[13.41px] flex justify-center items-center fill-white group-hover:fill-black">
        <ArrowLeft />
      </div>
    </CarouselPrevious>
    <CarouselNext 
      class="group w-12 h-12 border-[0.5px] border-[#E5E4DE] bg-[#110E09] p-0 m-0"
      @click="nextSlide"
    >
      <div class="w-[13.41px] h-[13.41px] flex justify-center items-center fill-white -rotate-180 group-hover:fill-black">
        <ArrowLeft />
      </div>
    </CarouselNext>
  </Carousel>
  <div class="w-fit mx-auto mt-12">
    <SliderDots :currentSlide="currentSlide" />
  </div>
</template>

<script setup lang="ts">
import {
  Carousel,
  CarouselContent,
  CarouselItem,
  CarouselNext,
  CarouselPrevious,
} from "@/components/ui/carousel";
import FiveStars from "~/components/home/testimonial/components/five-stars.vue";
import Avatar from "~/components/home/testimonial/components/avatar.vue";
import ArrowLeft from "~/components/home/testimonial/components/arrow-left.vue";
import SliderDots from "~/components/home/testimonial/components/slider-dots.vue";

const currentSlide = ref(1)

const nextSlide = () => {
  if (currentSlide.value < 2) {
    currentSlide.value++
  }
}

const prevSlide = () => {
  if (currentSlide.value > 1) {
    currentSlide.value--
  }
}
</script>

<style scoped></style>
