<script lang="ts">
	import { site } from '$lib/site';

	// Calcul de l'expérience depuis février 2016 (figé au build car la page est prérendue : rebuilder chaque année)
	const startDate = new Date(2016, 1); // Février 2016 (mois 1 car index 0)
	const now = new Date();
	const yearsDiff = now.getFullYear() - startDate.getFullYear();
	const monthsDiff = now.getMonth() - startDate.getMonth();
	const yearsExperience = monthsDiff < 0 ? yearsDiff - 1 : yearsDiff;

	const proof = [`${yearsExperience}+ ans d'expérience`, 'Architecte L1 Capgemini'];
	const sectors = ['Aéronautique', 'Bancaire', 'Énergie', 'Pharmaceutique'];

	const skills = [
		{
			title: 'Frontend',
			items: ['React', 'Angular', 'Svelte', 'SvelteKit'],
			iconPath: 'M10 20l4-16m4 4l4 4-4 4M6 16l-4-4 4-4'
		},
		{
			title: 'Backend',
			items: ['Node.js', 'NestJS', 'Express', 'Bun', 'Java', 'Spring Boot', 'Golang'],
			iconPath:
				'M5 12h14M5 12a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v4a2 2 0 01-2 2M5 12a2 2 0 00-2 2v4a2 2 0 002 2h14a2 2 0 002-2v-4a2 2 0 00-2-2m-2-4h.01M17 16h.01'
		},
		{
			title: 'Mobile',
			items: ['React Native', 'PWA'],
			iconPath: 'M12 18h.01M8 21h8a2 2 0 002-2V5a2 2 0 00-2-2H8a2 2 0 00-2 2v14a2 2 0 002 2z'
		},
		{
			title: 'IA',
			items: ['LLM', 'RAG', 'Claude Code'],
			iconPath:
				'M9 3v2m6-2v2M9 19v2m6-2v2M5 9H3m2 6H3m18-6h-2m2 6h-2M7 19h10a2 2 0 002-2V7a2 2 0 00-2-2H7a2 2 0 00-2 2v10a2 2 0 002 2zM9 9h6v6H9V9z'
		},
		{
			title: 'Cloud',
			items: ['AWS', 'Serverless', 'Azure', 'GCP', 'Railway', 'Docker'],
			iconPath:
				'M3 15a4 4 0 004 4h9a5 5 0 10-.1-9.999 5.002 5.002 0 10-9.78 2.096A4.001 4.001 0 003 15z'
		}
	];

	const experience = [
		{
			company: 'Sogeti (Capgemini)',
			period: "2021 - Aujourd'hui",
			role: 'Lead Développeur Fullstack',
			note: "Suite au rachat d'Altran par Capgemini",
			highlights: [
				"Développement et déploiement d'une application mobile React Native sur Android et iOS",
				"Conception d'un centre d'accès serverless sur AWS pour accorder et révoquer les droits sur plus de 20 applications",
				"Réalisation d'une application multi-tenant React / Java de conception d'avions avec options financières",
				"Encadrement technique de l'équipe de développement",
				'Architecture logicielle pour les avant-ventes',
				'Conduite des entretiens techniques de recrutement',
				'Certification Architecte L1 Capgemini'
			]
		},
		{
			company: 'Altran',
			period: 'Février 2016 - 2021',
			role: 'Développeur Fullstack',
			note: 'Début de carrière',
			highlights: [
				"Développement d'une marketplace React permettant aux centrales énergétiques de revendre leurs stocks inutilisés"
			]
		}
	];

	const portfolio = [
		{
			name: 'Oniway',
			url: 'https://www.oniway.app',
			image: '/projects/oniway.webp',
			description:
				'Organiser des événements entre amis : invitations, chat en temps réel, photos et sondages au même endroit.',
			tags: ['SvelteKit', 'Bun', 'Temps réel']
		},
		{
			name: 'Calcul Prêt',
			url: 'https://www.calcul-pret.com',
			image: '/projects/calcul-pret.webp',
			description:
				"Simuler un prêt immobilier : mensualités, tableau d'amortissement et plans de financement, installable hors ligne.",
			tags: ['PWA', 'Finance']
		},
		{
			name: 'Reglomatic',
			id: 'reglomatic',
			url: 'https://www.reglomatic.fr',
			image: '/projects/reglomatic.webp',
			description:
				'Poser une question en langage naturel et obtenir la réponse tirée des règles officielles, sur plus de 100 jeux de société.',
			tags: ['RAG', 'LLM', 'Svelte', 'Golang']
		},
		{
			name: 'Budgetix',
			url: 'https://budgetix-production.up.railway.app',
			image: '/projects/budgetix.webp',
			description:
				"Savoir dès aujourd'hui combien il restera en fin de mois sur chaque compte, avec comptes communs et répartition des dépenses en couple.",
			tags: ['SvelteKit', 'Finance']
		}
	];

	const contact = {
		email: 'william.groc@proton.me',
		github: 'https://github.com/GrocWilliam?tab=repositories'
	};

	const ai = [
		{
			title: "Construire avec l'IA",
			subtitle: 'RAG + LLM en production',
			items: [
				'Conception de Reglomatic, un RAG (Retrieval-Augmented Generation) couplé à un LLM pour interroger les règles de jeux de plateau',
				'Déploiement et exploitation en production sur Railway'
			],
			link: { href: '#reglomatic', label: 'Voir le projet Reglomatic' }
		},
		{
			title: "Travailler avec l'IA",
			subtitle: 'Claude Code, au quotidien',
			items: [
				'Rédaction et affinage des user stories',
				'Développement de nouvelles fonctionnalités',
				'Revue de code',
				'Assistance sur les tâches du quotidien'
			]
		}
	];

	const nav = [
		{ id: 'stack', label: '~/stack' },
		{ id: 'ia', label: '~/ia' },
		{ id: 'xp', label: '~/xp' },
		{ id: 'projets', label: '~/projets' },
		{ id: 'contact', label: '~/contact' }
	];

	const pitch =
		"Je conçois et livre des produits de bout en bout, de l'interface à l'infrastructure, de l'application mobile au LLM. Aucune limite de technologie : je choisis le bon outil et je reste à la pointe.";

	// Structured data so search engines and AI tools read the profile as facts
	const jsonLd = {
		'@context': 'https://schema.org',
		'@type': 'Person',
		name: 'William Groc',
		url: `${site}/`,
		jobTitle: experience[0].role,
		description: pitch,
		email: `mailto:${contact.email}`,
		worksFor: { '@type': 'Organization', name: experience[0].company },
		hasCredential: {
			'@type': 'EducationalOccupationalCredential',
			name: 'Architecte L1 Capgemini'
		},
		knowsAbout: skills.flatMap((group) => group.items),
		sameAs: [contact.github.split('?')[0]]
	};
	// Split closing tag so it does not end this <script> block; escape < so data cannot either
	const jsonLdTag =
		`<script type="application/ld+json">${JSON.stringify(jsonLd).replace(/</g, '\\u003c')}<` +
		'/script>';
</script>

<svelte:head>
	<!-- eslint-disable-next-line svelte/no-at-html-tags -- static data, < escaped above -->
	{@html jsonLdTag}
</svelte:head>

<div class="relative min-h-screen overflow-x-clip bg-black text-slate-300">
	<!-- Animated Grid Background -->
	<div class="grid-background"></div>
	<div class="scan-line"></div>

	<nav class="sticky top-0 z-20 border-b border-slate-800 bg-black/90">
		<div
			class="mx-auto flex max-w-5xl items-center justify-between gap-4 px-4 py-3 font-mono text-xs sm:text-sm"
		>
			<a href="#top" class="font-semibold text-emerald-400"
				>wg<span class="text-slate-500">:~$</span></a
			>
			<ul class="flex gap-3 sm:gap-6">
				{#each nav as item (item.id)}
					<li>
						<a href="#{item.id}" class="text-slate-400 transition-colors hover:text-emerald-400"
							>{item.label}</a
						>
					</li>
				{/each}
			</ul>
		</div>
	</nav>

	<!-- Hero Section -->
	<section id="top" class="relative z-10 mx-auto max-w-5xl px-4 py-10 md:py-16">
		<div class="terminal-window">
			<div class="terminal-header">
				<div class="flex gap-2">
					<div class="h-3 w-3 rounded-full bg-red-500"></div>
					<div class="h-3 w-3 rounded-full bg-yellow-500"></div>
					<div class="h-3 w-3 rounded-full bg-green-500"></div>
				</div>
				<span class="font-mono text-xs text-slate-400">william-groc.profile</span>
				<div></div>
			</div>
			<div class="p-5 md:p-10">
				<p class="mb-4 flex items-center gap-2 font-mono text-sm text-emerald-400">
					<span class="animate-pulse">▶</span> cat profile.json
				</p>
				<h1 class="cursor animate-fade-in text-5xl font-bold tracking-tight text-white md:text-7xl">
					William Groc
				</h1>
				<p class="mt-4 text-2xl font-semibold text-cyan-400 md:text-3xl">
					Lead Développeur Fullstack
				</p>
				<p class="mt-2 font-mono text-emerald-400 md:text-lg">web · ia · cloud · mobile</p>
				<p class="mt-6 max-w-2xl text-lg leading-relaxed text-slate-300">
					{pitch}
				</p>
				<div class="mt-8 flex flex-wrap gap-3">
					<a href="mailto:{contact.email}" class="btn-primary">Me contacter</a>
					<a href={contact.github} target="_blank" rel="noopener noreferrer" class="btn-secondary">
						<svg class="h-5 w-5" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
							<path
								fill-rule="evenodd"
								d="M12 2C6.477 2 2 6.484 2 12.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.202 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0022 12.017C22 6.484 17.522 2 12 2z"
								clip-rule="evenodd"
							/>
						</svg>
						GitHub
					</a>
				</div>
				<ul class="mt-8 flex flex-wrap gap-2 border-t border-slate-800 pt-6">
					{#each proof as item (item)}
						<li class="chip text-emerald-300">{item}</li>
					{/each}
					{#each sectors as sector (sector)}
						<li class="chip text-slate-300">{sector}</li>
					{/each}
				</ul>
			</div>
		</div>
	</section>

	<!-- Skills Section -->
	<section id="stack" class="section">
		<p class="section-prompt"><span class="animate-pulse">▶</span> ./skills --list-all</p>
		<h2 class="section-title">Stack Technique</h2>

		<div class="grid gap-4 sm:grid-cols-2 lg:grid-cols-5">
			{#each skills as group (group.title)}
				<div class="card card-hover">
					<div class="mb-4 flex items-center gap-3">
						<div class="tech-icon">
							<svg
								class="h-5 w-5 text-emerald-400"
								fill="none"
								stroke="currentColor"
								viewBox="0 0 24 24"
								aria-hidden="true"
							>
								<path
									stroke-linecap="round"
									stroke-linejoin="round"
									stroke-width="2"
									d={group.iconPath}
								/>
							</svg>
						</div>
						<h3 class="font-mono text-lg font-semibold text-cyan-400">{group.title}</h3>
					</div>
					<ul class="flex flex-wrap gap-2">
						{#each group.items as skill (skill)}
							<li class="chip text-slate-200">{skill}</li>
						{/each}
					</ul>
				</div>
			{/each}
		</div>
	</section>

	<!-- AI Section -->
	<section id="ia" class="section">
		<p class="section-prompt"><span class="animate-pulse">▶</span> ./ai --workflow</p>
		<h2 class="section-title">L'IA au quotidien</h2>
		<p class="mx-auto mb-8 max-w-2xl text-center text-lg leading-relaxed">
			L'IA ne reste pas un sujet de veille : je construis des produits avec, et je travaille avec
			elle tous les jours.
		</p>

		<div class="grid gap-6 md:grid-cols-2">
			{#each ai as block (block.title)}
				<div class="card">
					<h3 class="text-xl font-semibold text-white">{block.title}</h3>
					<p class="mt-1 mb-4 font-mono text-sm text-cyan-400">{block.subtitle}</p>
					<ul class="space-y-2">
						{#each block.items as item (item)}
							<li class="flex gap-2 leading-relaxed">
								<span class="font-mono text-emerald-400" aria-hidden="true">→</span>
								{item}
							</li>
						{/each}
					</ul>
					{#if block.link}
						<a
							href={block.link.href}
							class="mt-4 inline-flex font-mono text-sm text-emerald-400 hover:underline"
							>→ {block.link.label}</a
						>
					{/if}
				</div>
			{/each}
		</div>
	</section>

	<!-- Experience Section -->
	<section id="xp" class="section">
		<p class="section-prompt"><span class="animate-pulse">▶</span> git log --experience</p>
		<h2 class="section-title">Parcours</h2>

		<ol class="space-y-4">
			{#each experience as exp, i (exp.company)}
				<li class="card flex gap-5">
					<div class="flex flex-col items-center">
						<div class="timeline-dot"></div>
						{#if i < experience.length - 1}
							<div class="timeline-line"></div>
						{/if}
					</div>
					<div class="flex-1">
						<div class="flex flex-col gap-1 md:flex-row md:items-baseline md:justify-between">
							<h3 class="text-xl font-semibold text-white">{exp.company}</h3>
							<span class="font-mono text-sm text-emerald-400">{exp.period}</span>
						</div>
						<p class="mt-1 font-semibold text-cyan-400">{exp.role}</p>
						<p class="mt-1 text-sm text-slate-400">{exp.note}</p>
						{#if exp.highlights.length}
							<ul class="mt-4 space-y-2">
								{#each exp.highlights as item (item)}
									<li class="flex gap-2 leading-relaxed">
										<span class="font-mono text-emerald-400" aria-hidden="true">→</span>
										{item}
									</li>
								{/each}
							</ul>
						{/if}
					</div>
				</li>
			{/each}
		</ol>
	</section>

	<!-- Portfolio Section -->
	<section id="projets" class="section">
		<p class="section-prompt"><span class="animate-pulse">▶</span> npm run projects --public</p>
		<h2 class="section-title">Projets</h2>

		<div class="grid gap-6 md:grid-cols-3">
			{#each portfolio as project (project.name)}
				<a
					id={project.id}
					href={project.url}
					target="_blank"
					rel="noopener noreferrer"
					class="card card-flush card-hover group flex scroll-mt-16 flex-col overflow-hidden"
				>
					<img
						src={project.image}
						alt="Aperçu de {project.name}"
						width="800"
						height="235"
						loading="lazy"
						class="aspect-[800/235] w-full border-b border-slate-800 object-cover"
					/>
					<div class="flex flex-1 flex-col p-5">
						<div class="mb-3 flex items-center justify-between gap-2">
							<h3
								class="text-xl font-semibold text-white transition-colors group-hover:text-emerald-400"
							>
								{project.name}
							</h3>
							<svg
								class="h-5 w-5 text-slate-400 transition-all group-hover:translate-x-1 group-hover:text-emerald-400"
								fill="none"
								stroke="currentColor"
								viewBox="0 0 24 24"
								aria-hidden="true"
							>
								<path
									stroke-linecap="round"
									stroke-linejoin="round"
									stroke-width="2"
									d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14"
								/>
							</svg>
						</div>
						<p class="mb-4 flex-1 leading-relaxed">{project.description}</p>
						<ul class="flex flex-wrap gap-2">
							{#each project.tags as tag (tag)}
								<li class="font-mono text-xs text-cyan-400">#{tag}</li>
							{/each}
						</ul>
					</div>
				</a>
			{/each}
		</div>
	</section>

	<!-- Contact Section -->
	<section id="contact" class="section pb-16">
		<p class="section-prompt"><span class="animate-pulse">▶</span> ./contact.sh</p>
		<h2 class="section-title">Contact</h2>

		<div class="card mx-auto max-w-2xl text-center">
			<p class="mb-6 text-lg">Un projet, une mission, une idée à pousser plus loin ? Parlons-en.</p>
			<a href="mailto:{contact.email}" class="btn-primary flex-wrap justify-center">
				<span class="font-mono">$ mail</span>
				<span class="font-mono break-all">{contact.email}</span>
			</a>
		</div>
	</section>

	<footer class="relative z-10 border-t border-slate-800 bg-black">
		<div
			class="mx-auto flex max-w-5xl flex-col items-center justify-between gap-3 px-4 py-6 font-mono text-sm text-slate-400 sm:flex-row"
		>
			<span>© {now.getFullYear()} William Groc</span>
			<div class="flex gap-6">
				<a href="mailto:{contact.email}" class="hover:text-emerald-400">Email</a>
				<a
					href={contact.github}
					target="_blank"
					rel="noopener noreferrer"
					class="hover:text-emerald-400">GitHub</a
				>
			</div>
		</div>
	</footer>
</div>

<style>
	@keyframes fade-in {
		from {
			opacity: 0;
			transform: translateY(20px);
		}
		to {
			opacity: 1;
			transform: translateY(0);
		}
	}

	@keyframes scan {
		0% {
			top: -100%;
		}
		100% {
			top: 100%;
		}
	}

	@keyframes grid-move {
		0% {
			transform: translateY(0);
		}
		100% {
			transform: translateY(50px);
		}
	}

	.animate-fade-in {
		animation: fade-in 1s ease-out;
	}

	/* Grid Background */
	.grid-background {
		position: fixed;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		background-image:
			linear-gradient(rgba(6, 182, 212, 0.08) 1px, transparent 1px),
			linear-gradient(90deg, rgba(6, 182, 212, 0.08) 1px, transparent 1px);
		background-size: 50px 50px;
		animation: grid-move 20s linear infinite;
		z-index: 0;
	}

	/* Scan Line Effect */
	.scan-line {
		position: fixed;
		left: 0;
		width: 100%;
		height: 2px;
		background: linear-gradient(90deg, transparent, rgba(16, 185, 129, 0.5), transparent);
		animation: scan 8s linear infinite;
		z-index: 1;
		pointer-events: none;
	}

	/* Sections */
	.section {
		position: relative;
		z-index: 10;
		margin-inline: auto;
		max-width: 64rem;
		padding: 2.5rem 1rem;
		scroll-margin-top: 3rem;
	}

	.section-prompt {
		margin-bottom: 0.5rem;
		text-align: center;
		font-family: ui-monospace, monospace;
		font-size: 0.875rem;
		color: rgb(52 211 153);
	}

	.section-title {
		margin-bottom: 2rem;
		text-align: center;
		font-size: 1.875rem;
		font-weight: 700;
		color: white;
	}

	/* Terminal Window */
	.terminal-window {
		overflow: hidden;
		border-radius: 0.5rem;
		border: 1px solid rgb(51 65 85 / 0.5);
		background-color: rgb(0 0 0 / 0.6);
		box-shadow: 0 0 40px rgba(6, 182, 212, 0.15);
	}

	.terminal-header {
		display: flex;
		align-items: center;
		justify-content: space-between;
		border-bottom: 1px solid rgb(51 65 85 / 0.5);
		background-color: rgb(15 23 42 / 0.8);
		padding: 0.75rem 1rem;
	}

	/* Cards */
	.card {
		position: relative;
		border-radius: 0.5rem;
		border: 1px solid rgb(51 65 85 / 0.5);
		background-color: rgb(0 0 0 / 0.6);
		padding: 1.5rem;
		transition: all 300ms;
	}

	.card-flush {
		padding: 0;
	}

	.card-hover:hover {
		border-color: rgb(16 185 129 / 0.5);
		box-shadow: 0 0 30px rgba(16, 185, 129, 0.15);
		transform: translateY(-4px);
	}

	.tech-icon {
		display: flex;
		height: 2.5rem;
		width: 2.5rem;
		flex-shrink: 0;
		align-items: center;
		justify-content: center;
		border-radius: 0.5rem;
		border: 1px solid rgb(16 185 129 / 0.3);
		background-color: rgb(16 185 129 / 0.1);
	}

	.chip {
		border-radius: 0.25rem;
		border: 1px solid rgb(71 85 105 / 0.6);
		background-color: rgb(30 41 59 / 0.5);
		padding: 0.25rem 0.625rem;
		font-family: ui-monospace, monospace;
		font-size: 0.75rem;
	}

	/* Buttons */
	.btn-primary,
	.btn-secondary {
		display: inline-flex;
		align-items: center;
		gap: 0.5rem;
		border-radius: 0.5rem;
		padding: 0.75rem 1.25rem;
		font-weight: 600;
		transition: all 300ms;
	}

	.btn-primary {
		background-color: rgb(16 185 129);
		color: black;
	}

	.btn-primary:hover {
		background-color: rgb(52 211 153);
		box-shadow: 0 0 30px rgba(16, 185, 129, 0.4);
	}

	.btn-secondary {
		border: 1px solid rgb(71 85 105);
		color: rgb(226 232 240);
	}

	.btn-secondary:hover {
		border-color: rgb(16 185 129 / 0.6);
		color: white;
	}

	/* Timeline */
	.timeline-dot {
		height: 1rem;
		width: 1rem;
		border-radius: 9999px;
		border: 2px solid rgb(16 185 129);
		background-color: rgb(0 0 0);
		box-shadow: 0 0 10px rgba(16, 185, 129, 0.5);
	}

	.timeline-line {
		margin-top: 0.5rem;
		width: 0.125rem;
		flex: 1;
		background: linear-gradient(to bottom, rgb(16 185 129 / 0.5), transparent);
	}

	/* Decorative cursor in CSS so it stays out of the heading text */
	.cursor::after {
		content: '_' / '';
		color: rgb(52 211 153);
		animation: pulse 2s cubic-bezier(0.4, 0, 0.6, 1) infinite;
	}

	@media (prefers-reduced-motion: reduce) {
		.grid-background,
		.scan-line,
		.animate-fade-in,
		.cursor::after,
		:global(.animate-pulse) {
			animation: none;
		}
	}
</style>
