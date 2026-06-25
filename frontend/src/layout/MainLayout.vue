<template>
  <div class="main-layout">
    <el-container style="height: 100vh">
      <el-header class="layout-header" height="60px">
        <NavHeader />
      </el-header>
      <el-container style="height: calc(100vh - 60px)">
        <el-aside width="220px" class="layout-aside">
          <NavSide />
        </el-aside>
        <el-main class="layout-main">
          <router-view />
        </el-main>
      </el-container>
    </el-container>
  </div>
</template>

<script setup>
import NavHeader from './NavHeader.vue'
import NavSide from './NavSide.vue'
</script>

<style scoped>
.main-layout {
  height: 100vh;
  overflow: hidden;
}
.layout-header {
  background: #fff;
  border-bottom: 1px solid #e4e7ed;
  padding: 0 20px;
  display: flex;
  align-items: center;
  box-shadow: 0 1px 4px rgba(0, 0, 0, 0.05);
  z-index: 100;
}
.layout-aside {
  background: #fff;
  border-right: 1px solid #e4e7ed;
  overflow-y: auto;
}
.layout-main {
  background: #f5f7fa;
  padding: 0;
  overflow-y: auto;
}
</style>
