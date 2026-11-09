---
title: "HiSparse Concurrency Calculator"
date: 2026-11-09
tags: ["machine learning", "vllm", "visualization"]
summary: "An interactive calculator for estimating how many concurrent long-context requests GLM-5.3 can serve with and without Hybrid HiSparse in vLLM."
cover:
  image: /images/posts/hisparse-calculator/cover.png
  alt: "The HiSparse concurrency calculator"
  hiddenInSingle: true
---

<div style="text-align: center; margin-bottom: 1.5rem;">
<a href="/hisparse-calculator/" style="display: inline-flex; align-items: center; gap: 0.5rem; padding: 0.5rem 1.2rem; border: 1px solid var(--border); border-radius: 6px; text-decoration: none; color: var(--primary); font-size: 0.95rem;">Open full-screen →</a>
</div>

Hybrid HiSparse is a feature I built in vLLM with Lucas Wilkinson and Fares Obeid. It keeps sparse-attention KV cache on the GPU while there is room, then moves the full history to CPU memory as the GPU fills up. Only small hot buffers of recently selected tokens stay on the GPU. With less KV per request on the GPU, a deployment can run more long-context requests at once. For the design and benchmarks, see the [vLLM blog post](https://vllm.ai/blog/2026-09-08-glm53-part1-hybrid-sparse-offloading).

I wrote this calculator for that post. It estimates how many concurrent requests GLM-5.3 can serve with and without HiSparse. You choose the GPU, parallelism, sequence length and host memory. It also shows the smallest host pool that keeps CPU memory from limiting concurrency, and a breakdown of GPU and CPU memory use. The numbers are planning estimates, not guaranteed serving limits.

<iframe
  src="/hisparse-calculator/"
  title="HiSparse concurrency calculator"
  loading="lazy"
  style="display: block; width: 100%; height: 1800px; border: 0;"
></iframe>
