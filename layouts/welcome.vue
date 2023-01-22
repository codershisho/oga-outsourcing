<template>
  <v-app>
    <div class="d-flex wel-base">
      <div class="wel-base--left">
        <v-img
          src="https://picsum.photos/id/180/1920/1080"
          gradient="to top right, rgba(67,20,255,.9), rgba(114,255,242,.8)"
          height="100%"
        >
          <div class="d-flex justify-center align-center" style="height:100%">
            <div class="text-h4 white--text font-weight-bold">
              クラウドソーシング管理ツール
              <div class="text-h6 white--text font-weight-bold text-center">
                Cloud Sourcing Management Tool
              </div>
            </div>
          </div>
        </v-img>
      </div>
      <div class="wel-base--right">
        <!-- <div class="d-flex justify-center align-center" style="height:100%">
          <div id="signin-form">
            <dvi class="text-h4 font-weight-bold text-left">Sign In</dvi>
          </div>
        </div> -->
        <div class="d-flex justify-center align-center" style="height:100%;width:50%">
          <v-card flat>
            <div class="text-h4 font-weight-bold text-left">Sign In</div>
            <div>
              <sign-in />
            </div>
          </v-card>
        </div>
      </div>
    </div>
  </v-app>
</template>
<style>
.wel-base {
  height: 100%;
  width: 100%;
}
.wel-base--left {
  width: 50%;
}
.wel-base--right {
  width: 50%;
}
</style>
