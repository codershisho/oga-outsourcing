<template>
  <div id="work-in-progress">
    <div class="dashboard-card--title">進行中の案件</div>
    <div>
      <v-data-table :headers="headers" :items="projects" class="com-data-table pa-5">
        <template v-slot:[`item.project_manage_id`]="{ item }">
          <div style="color: #2b8c19">{{ item.project_manage_id }}</div>
        </template>
        <template v-slot:[`item.status`]="{ item }">
          <v-chip v-if="item.status=='開発依頼中'" color="#2b8c19" class="white--text">{{ item.status }}</v-chip>
          <v-chip v-else color="#ffae4a" class="white--text">{{ item.status }}</v-chip>
        </template>
        <template v-slot:[`item.worker_name`]="{ item }">
          <div>
            <v-avatar size="40">
              <img :src="item.worker_img" alt="alt" />
            </v-avatar>
            <span class="ml-2">{{ item.worker_name }}</span>
          </div>
        </template>
      </v-data-table>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      headers: [
        { text: '管理番号', value: 'project_manage_id' },
        { text: 'ステータス', value: 'status' },
        { text: '案件名', value: 'name' },
        { text: 'ワーカー', value: 'worker_name' },
        { text: '納期', value: 'fix_date' },
        { text: '一次納期', value: 'pre_fix_date' },
      ],
      projects: [
        {
          id: 1,
          project_manage_id: 'ma-01-01',
          name: 'LP構成簡単くん',
          status: '開発依頼中',
          worker_id: 1,
          worker_name: 'Aさん',
          worker_img:
            'https://loosedrawing.com/wp/wp-content/uploads/2022/12/n1353.png',
          fix_date: '2023-02-01',
          pre_fix_date: '2023-01-27',
        },
        {
          id: 2,
          project_manage_id: 'ma-02-01',
          name: 'ogaRia請求書',
          status: '打診予定',
          worker_id: 1,
          worker_name: 'Bさん',
          worker_img:
            'https://loosedrawing.com/wp/wp-content/uploads/2022/12/r1385.png',
          fix_date: '2023-02-01',
          pre_fix_date: '2023-01-27',
        },
      ],
    }
  },
}
</script>

<style>
.dashboard-card--title {
  color: #6c6c6c;
  font-size: 18px;
  font-weight: bold;
  padding: 10px 20px;
  letter-spacing: 1.15px;
}

.com-data-table table > thead > tr {
  background-color: #5e959d;
}
.com-data-table table > thead > tr > th > span {
  color: white !important;
  font-size: 14px;
  letter-spacing: 1.15px;
}
</style>
