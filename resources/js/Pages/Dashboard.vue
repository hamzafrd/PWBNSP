<script setup>
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import { Head, Link } from '@inertiajs/vue3';
import { onMounted } from 'vue';

const props = defineProps({
    listForm: {
        type: Object,
        default: {
            id: '',
            nama_lengkap: '',
            alamat_ktp: '',
            alamat_lengkap: '',
            region_pribadi_id: '',
            region_tempat_lahir_id: '',
            nomor_telepon: '',
            nomor_handphone: '',
            email: '',
            kewarganegaraan: '',
            negara_wna: '',
            tanggal_lahir: '',
            tempat_lahir: '',
            jenis_kelamin: '',
            status_menikah: '',
            agama: '',
            status: '',
            nem: '',
        }
    },
    role: String,
})

onMounted(() => {
    $('#data-table').DataTable();
});
</script>

<template>

    <Head title="Dashboard" />

    <AuthenticatedLayout>
        <div class="p-6 bg-white shadow rounded-lg">
            <h1 class="text-2xl font-bold">Verifikasi Dokumen</h1>

            <table id="data-table">
                <thead>
                    <tr>
                        <th>Nama Lengkap</th>
                        <th>Kewarganegaraan</th>
                        <th>NEM</th>
                        <th>Nomor Telepon</th>
                        <th>Nomor HP</th>
                        <th>Email</th>
                        <th>Status</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-if="props.listForm.length" v-for="(form, index) in props.listForm" :key="index">
                        <td>{{ form.nama_lengkap }}</td>
                        <td>{{ form.kewarganegaraan }}</td>
                        <td>{{ form.nem }}</td>
                        <td>{{ form.nomor_telepon }}</td>
                        <td>{{ form.nomor_handphone }}</td>
                        <td>{{ form.email }}</td>

                        <td>
                            <p class="text-center capitalize rounded-xl"
                                :class="form.status == 'pending' ? 'bg-yellow-500' : form.status == 'accepted' ? 'bg-blue-500' : form.status == 'user' ? 'bg-green-500' : 'bg-red-500'">
                                {{ form.status }}</p>
                        </td>
                        <td class="flex">
                            <Link type="button" :href="route('admin.dokumen.show', form.id)" v-if="role == 'admin'"
                                class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800">
                            Tinjau Dokumen
                            </Link>

                            <Link v-if="
                                form.status == 'accepted' &&
                                props.role == 'admin'" type="button" :href="route('admin.users.show', form.id)"
                                class="text-white bg-green-700 hover:bg-green-800 focus:ring-4 focus:ring-green-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:bg-green-600 dark:hover:bg-green-700 focus:outline-none dark:focus:ring-green-800">
                            Buat Akun
                            </Link>


                            <Link v-else-if="form.status != 'user'" type="button"
                                :href="route('admin.dokumen.delete', form.id)"
                                class="focus:outline-none text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-900">
                            Delete
                            </Link>

                            <Link type="button" v-if="
                                form.status == 'accepted' || form.status == 'user'
                            " :href="route('admin.dokumen.print', form.id)"
                                class="text-white bg-yellow-700 hover:bg-yellow-800 focus:ring-4 focus:ring-yellow-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:bg-yellow-600 dark:hover:bg-yellow-700 focus:outline-none dark:focus:ring-yellow-800">
                            Print Bukti
                            </Link>
                        </td>
                    </tr>
                </tbody>
            </table>

        </div>
    </AuthenticatedLayout>
</template>

<style scoped>
/* Make sure table layout is fixed */
#data-table {
    width: 100% !important;
    table-layout: fixed;
    /* Ensures table columns are fixed */
}

/* Ensure that each cell takes up available width */
#data-table th,
#data-table td {
    padding: 8px;
    /* Adjust padding as needed */
    overflow: hidden;
    /* Prevents overflow issues */
    text-overflow: ellipsis;
    /* Truncates text with ellipsis if too long */
    white-space: nowrap;
    /* Prevents text from wrapping */
}

/* Specific styling for the Aksi column */
.aksi-column {
    flex: 1;
    /* Allows this column to expand and fill remaining space */
    width: 1%;
    /* Ensures column does not collapse */
}

/* Optional: Add some styles for better readability */
#data-table thead th {
    background-color: #f4f4f4;
    text-align: start;
}


#data-table tbody tr:nth-child(even) {
    background-color: #f9f9f9;
    /* Alternate row color */
}
</style>
