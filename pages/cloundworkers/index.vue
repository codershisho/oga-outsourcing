<template>
  <div id="section-workers" class="d-flex justify-start align-center flex-wrap">
    <div v-for="(worker, i) in workers" :key="i" class="box-child">
      <v-avatar size="150" class="worker-img">
        <img :src="worker.url" />
      </v-avatar>
      <div class="worker-name">
        {{ worker.name }}
      </div>
      <div class="worker-memo">
        {{ worker.memo }}
      </div>
    </div>
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
          memo: 'Laravelが得意',
        },
        {
          id: 2,
          name: 'Bさん',
          url: 'https://loosedrawing.com/wp/wp-content/uploads/2022/12/r1385.png',
          memo: '簡単なのは依頼可能',
        },
        {
          id: 2,
          name: 'Bさん',
          url: 'https://loosedrawing.com/wp/wp-content/uploads/2022/12/r1385.png',
          memo: '簡単なのは依頼可能',
        },
        {
          id: 2,
          name: 'Bさん',
          url: 'https://loosedrawing.com/wp/wp-content/uploads/2022/12/r1385.png',
          memo: '簡単なのは依頼可能',
        },
        {
          id: 2,
          name: 'Bさん',
          url: 'https://loosedrawing.com/wp/wp-content/uploads/2022/12/r1385.png',
          memo: '簡単なのは依頼可能',
        },
        {
          id: 2,
          name: 'Bさん',
          url: 'https://loosedrawing.com/wp/wp-content/uploads/2022/12/r1385.png',
          memo: '簡単なのは依頼可能',
        },
        {
          id: 2,
          name: 'Bさん',
          url: 'https://loosedrawing.com/wp/wp-content/uploads/2022/12/r1385.png',
          memo: '簡単なのは依頼可能',
        },
        {
          id: 2,
          name: 'Bさん',
          url: 'https://loosedrawing.com/wp/wp-content/uploads/2022/12/r1385.png',
          memo: '簡単なのは依頼可能',
        },
        {
          id: 2,
          name: 'Bさん',
          url: 'https://loosedrawing.com/wp/wp-content/uploads/2022/12/r1385.png',
          memo: '簡単なのは依頼可能',
        },
      ],
    }
  },
}
</script>
<style>
#section-workers .box-child {
  width: calc(100% / 5);
  height: auto;
  text-align: center;
  padding: 10px;
  position: relative;
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
.worker-memo {
  padding: 5px;
  font-size: 16px;
  font-weight: bold;
  color: #333;
}
</style>
