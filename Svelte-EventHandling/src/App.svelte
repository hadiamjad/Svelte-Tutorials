<script>
    import SecondEventComponent from './SecondEventComponent.svelte';

    function handleMessage(event) {
        alert(event.detail.text)
    }

</script>

<main>
    <p> Event communication. </p>
    <hr/>

    <SecondEventComponent on:message={handleMessage}/>

</main>

<style>
	main {
		text-align: center;
		padding: 1em;
		max-width: 240px;
		margin: 0 auto;
	}


	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>