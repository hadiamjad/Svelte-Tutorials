<script>
    import FirstEventComponent from './FirstEventComponent.svelte'
    import { createEventDispatcher } from 'svelte';
    
    const dispatch = createEventDispatcher();
    
    function forward(event) {
      dispatch('message', event.detail);
    }
  </script>
  
  <FirstEventComponent on:message={forward} />