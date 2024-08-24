<template>
    <div class="p-6 bg-white shadow rounded-lg">
        <h1 class="text-2xl font-bold mb-4">Admin Dashboard</h1>
        <Link class="text-blue-500 hover:text-blue-700" :href="route('admin.users')">
        Manage Users
        </Link>
    </div>
</template>

<script setup>
import { Link } from '@inertiajs/vue3';


</script>
