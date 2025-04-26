<script>
import {Source} from "../model/source.entity.js";
import SourceItem from "./source-item.component.vue";

export default {
  name: "source-list",
  components: {SourceItem},
  props: { sources: Array[Source], visible: Boolean},
  methods: {
    onSourceSelected(source) {
      this.$emit("source-selected", source);
    }
  }
}
</script>

<template>
  <pv-drawer v-bind:visible="visible">
    <source-item v-for="source in sources" 
                 :key="source.name" 
                 :source="source"
                 @source-selected="onSourceSelected(source)"/>
  </pv-drawer>
</template>

<style scoped>

</style>