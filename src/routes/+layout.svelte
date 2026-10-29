<script lang="ts">
	import './layout.css';
	import favicon from '$lib/assets/favicon.svg';
	import { site } from '$lib/site';

	let { children } = $props();

	const title = 'William Groc – Lead Développeur Fullstack · Web, IA, Cloud, Mobile';
	const description =
		'William Groc, Lead Développeur Fullstack et Architecte L1 chez Sogeti (Capgemini). Web, IA (LLM, RAG), Cloud et Mobile : des produits de bout en bout, sans limite de technologie.';
</script>

<svelte:head>
	<title>{title}</title>
	<meta name="description" content={description} />
	<link rel="icon" href={favicon} />
	<link rel="canonical" href="{site}/" />
	<meta property="og:type" content="website" />
	<meta property="og:url" content={site} />
	<meta property="og:title" content={title} />
	<meta property="og:description" content={description} />
	<meta property="og:image" content="{site}/og.png" />
	<meta property="og:image:width" content="1200" />
	<meta property="og:image:height" content="630" />
	<meta property="og:locale" content="fr_FR" />
	<meta name="twitter:card" content="summary_large_image" />
</svelte:head>
{@render children()}
