<template>
    <AuthenticatedLayout>

        <div class="p-6 bg-white shadow rounded-lg">
            <div class="flex items-center justify-between gap-2">
                <h1 class="text-2xl font-bold">Manage Users Mahasiswa</h1>

            </div>
            <table class="min-w-full bg-white" id="data-table">
                <thead>
                    <tr>
                        <th class="py-2">Name</th>
                        <th class="py-2">Email</th>
                        <th class="py-2">Role</th>
                        <th class="py-2">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="user in users" :key="user.id" class="border-t">
                        <td class="py-2">{{ user.name }}</td>
                        <td class="py-2">{{ user.email }}</td>
                        <td class="py-2">{{ user.role }}</td>
                        <td class="py-2 flex items-center gap-3">
                            <Link class="text-blue-500 hover:text-blue-700 bg-blue-200 rounded-md px-2"
                                :href="route('admin.users.edit', user.id)">
                            Edit Role
                            </Link>
                            <a class="text-red-500 hover:text-red-700 bg-red-200 rounded-md px-2" href="#"
                                @click="() => handleHapusUser(user.id)">
                                Hapus
                            </a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </AuthenticatedLayout>
</template>

<script setup>
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import { Link, useForm } from '@inertiajs/vue3';
import { onMounted } from 'vue';

const form = useForm({
})

const handleHapusUser = (id) => {
    Swal.fire({
        title: "Are you sure ?",
        text: "Data akan hilang selamanya.",
        icon: "warning",
        showCancelButton: true,
        cancelButtonColor: "#3085d6",
        confirmButtonColor: "#d33",
        confirmButtonText: "Hapus"
    }).then((result) => {
        if (result.isConfirmed) {
            form.delete(route('admin.users.delete', id), {
                onSuccess: () => {
                    Swal.fire({
                        title: "Berhasil !",
                        text: "Akun Berhasil Dihapus.",
                        icon: "success"
                    });
                },
                onError: () => {
                    for (const [key, message] of Object.entries(props.errors)) {
                        Swal.fire({
                            title: "Gagal!",
                            text: `Gagal: ${message}`,
                            icon: "error"
                        });
                    }
                },
            });
        }
    });
}
const props = defineProps({
    users: {
        type: Array,
        default: []
    }
})

onMounted(() => {
    $('#data-table').DataTable();
});
</script>

<style scoped>
table,
td,
th {
    text-align: left;
}
</style>
