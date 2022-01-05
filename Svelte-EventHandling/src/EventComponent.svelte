<script>

    import { createEventDispatcher } from 'svelte'

    const dispatch = createEventDispatcher()

    function eventClickMe() {
        dispatch('message', {
            text: 'Pass to main component'
        });
    }
</script>

<button on:click={eventClickMe}>
    Click Me
</button>