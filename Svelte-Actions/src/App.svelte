<script>
    let show = true;

    function showAndHideNode(node) {
        node.setAttribute("style", "color: red;")
    }
</script>

<main>

    <input type="checkbox" bind:checked={show}>

    {#if show}
        <p id="svelte-paragraph" class="svelte-class" use:showAndHideNode> Svelte is cool to go with!!! </p>
    {:else }
        <p>
            <strong class="svelte-class" > Svelte element Destroyed </strong>
        </p>

    {/if}
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
