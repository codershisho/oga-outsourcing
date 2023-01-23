<template>
  <div id="section-workers" class="d-flex justify-start flex-wrap">
    <v-card v-for="(worker, i) in workers" :key="i" class="box-child pa-3" elevation="3">
      <div class="d-flex">
        <v-avatar size="150" class="worker-img">
          <img :src="worker.url" />
        </v-avatar>
        <div class="ml-5">
          <div class="worker-name">
            {{ worker.name }}
          </div>
          <!-- <div class="worker-rank">
            ランク：{{ worker.rank }}
          </div> -->
          <v-chip :class="getRankColor(worker.rank)">{{ worker.rank }}ランク</v-chip>
          <div class="worker-memo">
            {{ worker.memo }}
          </div>
        </div>
      </div>
    </v-card>
  </div>
</template>
<script>
export default {
  data() {
    return {
      workers: [
        {
          id: 1,
          name: 'Aさん',
          url: 'https://loosedrawing.com/wp/wp-content/uploads/2022/12/n1353.png',
          rank: 'S',
          status: '依頼中',
          memo: 'Laravelが得意',
        },
        {
          id: 2,
          name: 'Bさん',
          url: 'https://loosedrawing.com/wp/wp-content/uploads/2022/12/r1385.png',
          rank: 'B',
          status: 'フリー',
          memo: '簡単なのは依頼可能',
        },
        {
          id: 3,
          name: 'Cさん',
          url: 'https://loosedrawing.com/wp/wp-content/uploads/2022/12/g1394.png',
          rank: 'B',
          status: '依頼中',
          memo: '簡単なのは依頼可能',
        },
        {
          id: 4,
          name: 'Dさん',
          url: 'https://loosedrawing.com/wp/wp-content/uploads/2022/12/y1353.png',
          rank: 'B',
          status: 'フリー',
          memo: '簡単なのは依頼可能',
        },
        {
          id: 5,
          name: 'Eさん',
          url: 'https://loosedrawing.com/wp/wp-content/uploads/2022/12/r1383.png',
          rank: 'B',
          status: 'フリー',
          memo: '簡単なのは依頼可能',
        },
        {
          id: 6,
          name: 'Fさん',
          url: 'https://loosedrawing.com/wp/wp-content/uploads/2022/12/r1385.png',
          rank: 'B',
          status: 'フリー',
          memo: '簡単なのは依頼可能',
        },
      ],
    }
  },

  methods: {
    getRankColor(rankStr) {
      console.log(rankStr);
      switch (rankStr) {
        case 'S':
          return 'rank-s'

        default:
          return 'rank-default'
      }
    }
  }
}
</script>
<style>
#section-workers {
  gap: 10px 10px;
}
#section-workers .box-child {
  width: 24%;
}
.worker-img {
  border: 3px #621e0e dotted;
  cursor: pointer;
  overflow: hidden;
}
.worker-img img{
  height: auto;
  transition: transform .6s ease; /* ゆっくり変化させる */
}
.worker-img:hover img{
  height: auto;
  transform: scale(1.1); /* 拡大 */
}
.worker-name {
  padding: 5px;
  font-size: 25px;
  font-weight: bold;
  color: #333;
}
.worker-rank {
  padding: 5px;
  font-size: 16px;
  font-weight: bold;
  color: #333;
}
.worker-memo {
  padding: 5px;
  font-size: 16px;
  font-weight: bold;
  color: #333;
}

.rank-s {
  background-color: gold !important;
  color: red !important;
}
.rank-default {
  background-color: #ff587d !important;
  color: white !important;
}
</style>
