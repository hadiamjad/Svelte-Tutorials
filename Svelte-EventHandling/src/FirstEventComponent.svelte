<script>

    import { createEventDispatcher } from 'svelte'

    const dispatch = createEventDispatcher()

    function eventClickMe() {
        dispatch('message', {
            text: 'Pass to main component'
        });
    }
</script>

<button on:click|preventDefault={eventClickMe}>
    Click Me
</button>