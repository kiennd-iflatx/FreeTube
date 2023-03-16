<!-- eslint-disable vuejs-accessibility/mouse-events-have-key-events -->
<!-- eslint-disable vuejs-accessibility/media-has-caption -->

<template>
  <div
    class="relative"
    :class="{
      'vjs-using-touch': usingTouch,
      'vjs-hide-play-button': !displayVideoPlayButton
    }"
    @mouseover="handleMouseOver"
  >
    <video
      ref="video"
      class="ftVideoPlayer video-js vjs-default-skin dark"
      :poster="thumbnail"
      controls
      preload="auto"
      :data-setup="JSON.stringify(dataSetup)"
      crossorigin="anonymous"
      @touchstart="handleTouchStart"
    >
     
    </video>
  </div>
</template>

<script src="./ft-video-player.js" />
<style scoped src="./ft-video-player.css" />
