<script setup>
import ApplicationLogo from '@/Components/ApplicationLogo.vue';
import { Link } from '@inertiajs/vue3';
</script>

<template>
    <div class="min-h-screen flex flex-col sm:justify-center items-center pt-6 sm:pt-0 bg-gray-100">
        <div>
            <Link href="/">
            <ApplicationLogo />
            </Link>
        </div>

        <div class="m-6 px-6 py-4 bg-white shadow-lg shadow-[#a0d7de] overflow-hidden rounded-3xl">
            <slot />
        </div>
    </div>
</template>
