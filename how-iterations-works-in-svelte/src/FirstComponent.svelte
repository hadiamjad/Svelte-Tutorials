<script>
    let fruits = ['Apple', 'Banana', 'Oranges']
</script>


{#each fruits as fruit}
    <div style="color: red">{fruit} </div> <br/>
{/each}

<style>
  p {
		text-align: center;
		padding: 1em;
		max-width: 240px;
		margin: 0 auto;
	}
</style>
