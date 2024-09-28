<script setup>
const infos = ref([
  {
    id: 1,
    item: "About us",
    href: "#",
  },
  {
    id: 2,
    item: "Careers",
    href: "#",
  },
  {
    id: 3,
    item: "Terms of service",
    href: "#",
  },
  {
    id: 4,
    item: "Join as a Rider",
    href: "#",
  },
]);

const resources = ref([
  {
    id: 1,
    item: "Pricing",
    href: "#",
  },

  {
    id: 2,
    item: "Help center",
    href: "#",
  },

  {
    id: 3,
    item: "Track delivery",
    href: "#",
  },
]);

const contacts = ref([
  {
    id: 1,
    item: "07036949054",
  },
  {
    id: 2,
    item: "08165993209",
  },
  {
    id: 3,
    item: "07053052215",
  },
  {
    id: 4,
    item: "hello@zipkod.ng",
  },
  {
    id: 5,
    item: "Lagos, Nigeria",
  },
]);

const message = ref({
  name: "",
  phoneNumber: "",
});

const handleSendARequest = () => {
  console.log(message.value);
};
</script>

<template>
  <div class="flex justify-center pt-20 pb-16 bg-[#22242A] lg:justify-start">
    <!-- <div class="hidden lg:block lg:w-[12.5%]"></div> -->

    <div
      class="w-[90%] 2xl:w-[1344px] mx-auto lg:flex lg:justify-between lg:gap-x-32"
    >
      <div
        id="support"
        class="h-[425px] bg-[#17181C] px-6 py-10 rounded-3xl mb-9 md:h-[476px] lg:w-[40%] lg:h-[677px] lg:mb-0 lg:px-9"
      >
        <div class="h-[98%]">
          <div
            class="space-grotesk font-medium text-[10px] leading-[14px] tracking-[4%] text-[#FF7830] mb-5"
          >
            SUPPORT
          </div>

          <div
            class="space-grotesk text-2xl leading-[26px] tracking-[-2%] text-[#ffffff40] mb-6 md:w-1/2 md:text-2xl md:leading-[31.2px] lg:w-full"
          >
            Seeking personalized support?
            <span class="text-white">Request a call from our team</span>
          </div>

          <div class="mb-4">
            <input
              type="text"
              placeholder="YOUR NAME"
              class="w-full h-14 rounded-xl border px-3 py-[9px] text-[#FFFFFF60] bg-[#17181C] border-[#FFFFFF60] tt-firs-neue-normal font-normal text-sm leading-[19.6px]"
              v-model="message.name"
            />
          </div>

          <div class="mb-6">
            <input
              type="text"
              placeholder="PHONE NUMBER"
              class="w-full h-14 rounded-xl border px-3 py-[9px] text-[#FFFFFF60] bg-[#17181C] border-[#FFFFFF60] tt-firs-neue-normal font-normal text-sm leading-[19.6px]"
              v-model="message.phoneNumber"
            />
          </div>

          <button
            class="rounded-full px-6 py-3 bg-gradient-to-r from-[#FF7C33] to-[#FA3105] tt-firs-neue-semibold font-semibold text-[15px] leading-[19.35px] text-[#FFFAF8]"
            @click="handleSendARequest"
          >
            Send a request
          </button>
        </div>

        <nuxt-link
          to="/privacy-policy"
          class="self-baseline tt-firs-neue-normal font-normal text-[10px] leading-[14px] text-[#FFFFFF40]"
        >
          Privacy Policy
        </nuxt-link>
      </div>

      <div class="py-9 md:py-10 lg:w-[60%]">
        <!-- FOR MOBILE -->
        <div class="mb-16 md:hidden">
          <div class="mb-16">
            <img
              src="/images/transparent-zipkod-logo.svg"
              alt="Transparent ZipKod Logo"
              class="h-[44.86px]"
            />
          </div>

          <div class="mb-16">
            <div
              class="tt-firs-neue-medium font-medium text-[10px] leading-[14px] tracking-[4%] text-[#FF7830] mb-6"
            >
              INFO
            </div>

            <div class="flex-col-reverse gap-y-[5px]">
              <a
                class="tt-firs-neue-normal font-normal text-sm leading-[19.6px] text-white"
                v-for="info in infos"
                :key="info.id"
                :href="info.href"
              >
                {{ info.item }}
              </a>
            </div>
          </div>

          <div class="mb-16">
            <div
              class="tt-firs-neue-medium font-medium text-[10px] leading-[14px] tracking-[4%] text-[#FF7830] mb-6"
            >
              RESOURCES
            </div>

            <div class="flex-col-reverse gap-y-[5px]">
              <a
                class="tt-firs-neue-normal font-normal text-sm leading-[19.6px] text-white"
                v-for="resource in resources"
                :key="resource.id"
                :href="resource.href"
              >
                {{ resource.item }}
              </a>
            </div>
          </div>

          <div>
            <div
              class="tt-firs-neue-medium font-medium text-[10px] leading-[14px] tracking-[4%] text-[#FF7830] mb-6"
            >
              CONTACT US
            </div>

            <div class="flex-col-reverse gap-y-[5px]">
              <div
                class="tt-firs-neue-normal font-normal text-sm leading-[19.6px] text-white"
                v-for="contact in contacts"
                :key="contact.id"
              >
                {{ contact.item }}
              </div>
            </div>
          </div>
        </div>

        <!-- GRID -->
        <div
          class="hidden md:grid md:grid-cols-3 md:gap-x-4 md:gap-y-16 md:mb-16"
        >
          <div>
            <div
              class="space-grotesk font-medium text-[10px] leading-[14px] tracking-[4%] text-[#FF7830] mb-6"
            >
              INFO
            </div>

            <div class="flex flex-col gap-y-1">
              <div
                class="font-normal text-sm text-white"
                v-for="info in infos"
                :key="info.id"
              >
                {{ info.item }}
              </div>
            </div>
          </div>

          <div>
            <div
              class="space-grotesk font-medium text-[10px] tracking-[4%] text-[#FF7830] mb-6"
            >
              RESOURCES
            </div>

            <div class="flex flex-col gap-y-1">
              <div
                class="font-normal text-sm leading-[19.6px] text-white"
                v-for="resource in resources"
                :key="resource.id"
              >
                {{ resource.item }}
              </div>
            </div>
          </div>

          <div class="flex justify-end">
            <img
              src="/images/transparent-zipkod-logo.svg"
              alt="Transparent ZipKod Logo"
              class="h-[44.86px]"
            />
          </div>

          <div>
            <div
              class="tt-firs-neue-medium font-medium text-[10px] leading-[14px] tracking-[4%] text-[#FF7830] mb-6"
            >
              CONTACT US
            </div>

            <div class="flex flex-col gap-y-1">
              <div
                class="font-normal text-sm leading-[19.6px] text-white"
                v-for="contact in contacts"
                :key="contact.id"
              >
                {{ contact.item }}
              </div>
            </div>
          </div>
        </div>

        <!-- SUBSCRIPTION -->
        <div class="mb-[86px] md:mb-32">
          <div
            class="tt-firs-neue-medium font-medium text-[10px] leading-[14px] tracking-[4%] text-[#FF7830] mb-6"
          >
            SUBSCRIPTION
          </div>

          <div class="flex">
            <input
              type="text"
              placeholder="E-mail"
              class="w-full rounded-xl rounded-e-none border border-r-0 px-3 py-[9px] text-[#FFFFFF60] bg-[#17181C] border-[#FFFFFF60] tt-firs-neue-normal font-normal text-sm leading-[19.6px]"
            />
            <div
              class="flex items-center pr-4 bg-[#17181C] border border-[#FFFFFF60] border-l-0 rounded-e-xl"
            >
              <button>
                <img src="/images/btn.svg" alt="Email Input" />
              </button>
            </div>
          </div>
        </div>

        <!-- SOCIALS -->
        <div class="flex justify-between">
          <div class="flex justify-between gap-x-3">
            <div>
              <img src="/images/facebook-logo.svg" alt="Facebook Logo" />
            </div>

            <div>
              <img src="/images/instagram-logo.svg" alt="Instagram Logo" />
            </div>

            <div>
              <img src="/images/youtube-logo.svg" alt="Youtube Logo" />
            </div>

            <div>
              <img src="/images/twitter-logo.svg" alt="Twitter Logo" />
            </div>
          </div>

          <div class="flex items-end">
            <div
              class="tt-firs-neue-normal font-normal text-[10px] leading-[14px] text-[#FFFFFF40]"
            >
              © 2024 — Copyright
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped></style>
