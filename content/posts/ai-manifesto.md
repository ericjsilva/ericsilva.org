---
title: "The Software Engineer's AI Manifesto: A Declaration of Accountability"
date: 2026-03-15T12:00:00-04:00
tags:
  - "AI"
  - "Software Engineering"
  - "Ethics"
categories:
  - "Technology"
---

Software engineering is the systematic, disciplined, and quantifiable approach to developing, operating, and maintaining software systems. It applies engineering principles—such as structured design, testing, and project management—_beyond just writing code_ to ensure software is reliable, scalable, and efficient. Software engineering is, at its core, an exercise in human creativity and intent. Beginning in 2023, we have reached an inflection point in the [Generative AI hype-cycle](https://www.gartner.com/en/articles/hype-cycle-for-genai) curve. Generative AI offers unprecedented velocity, but velocity without understanding is a liability. Power and speed without discipline is dangerous... and in some cases **[outright destructive](https://www.businessinsider.com/meta-ai-alignment-director-openclaw-email-deletion-2026-2)**.

Building resilient software platforms and infrastructure requires absolute clarity. When we surrender our understanding of the systems we build, we sacrifice their future. We welcome tools that accelerate our hands and spark creativity in our minds, but we must fiercely reject the outsourcing of human comprehension.

This manifesto draws a hard line. While it is 100% my personal opinion, I hope it inspires others to think about the role of AI in their work. It establishes the boundaries of ethical AI use in development, design, and research; while calling attention to the pitfalls of using AI in our profession. It is a declaration that while AI can be a brilliant catalyst, the human mind must remain the architect and the controller.

To protect the integrity of our code, the reliability of our systems, and the craftsmanship of our trade, I declare the following:

## AI is a Catalyst, Not a Creator

Generative AI provides genuine value when it acts as a lever for human intent. It is a tool for exploration, not a substitute for expertise. The following applications are ethical, productive, and encouraged:

* **Ideation and the Blank Page:** AI is an acceptable sparring partner. Using it to break creative blocks, surface alternative perspectives, and accelerate the initial spark of an idea is a valid exercise in rapid brainstorming.
* **Accelerated Research:** Utilizing AI to synthesize large volumes of information, summarize dense documentation, or map out potential technical pathways is acceptable, provided the human rigorously verifies the source truth.

## Prototypes Are Not Foundations

We embrace AI for rapid scaffolding and throwing together proof-of-concept code to test viability. However, we acknowledge that AI-generated prototypes are sandboxes. They exist to prove a concept, not to run in production.

* **Visual and Structural Prototyping:** Generating images for visualizing concepts, generating CSS color schemes, or scaffolding "throwaway" code to test a proof-of-concept are valid uses of the technology. 
* **The Golden Rule of Prototyping:** AI-generated prototypes exist solely to prove viability. They are sandboxes, not foundations. A prototype is meant to be studied, understood, and then rewritten.

## The Mental Model is Non-Negotiable

We reject the deployment of any code we do not intimately understand. It is unacceptable to commit logic to a codebase without a complete, internalized mental model of its architecture.

* **The Surrender of the Mental Model:** It is strictly forbidden to commit code to production that you cannot mentally map, explain, and rebuild from scratch. If you do not have a comprehensive mental model of the system's architecture, you cannot effectively secure it, scale it, or fix it. If you do not understand the code, you do not own it.

## Autonomous Agents are a Dereliction of Duty

We fundamentally oppose the use of autonomous AI agents operating without a human strictly in the loop. Systems that write, test, and deploy code without human validation guarantee an exponential increase in technical debt.

* **The Autonomous Threat:** Deploying autonomous AI agents to write, test, and deploy code without strict human oversight is dangerous. It exponentially increases technical debt and results in fragile systems that are nearly impossible to support.

## The Illusion of Competency Plants Hidden Land Mines

We recognize the extreme danger of GenAI in the hands of inexperienced developers. Code that looks structurally sound on the surface but lacks foundational integrity is a hidden land mine just waiting to explode. Surface-level solutions obscure edge cases, security flaws, and performance bottlenecks. 

* **The Illusion of Competency:** We reject the practice of using Generative AI to mask a lack of foundational knowledge. In the hands of inexperienced developers, GenAI produces code that looks structurally sound on the surface but lacks foundational integrity. These are hidden land mines.
* **"Workslop" and Diminishing Returns:** For those same inexperienced hands, using GenAI often yields low-quality results that require significant time to understand, refactor, and improve. Accepting this "workslop" is a waste of time and resources.

## The Erosion of Knowledge and Creativity

We must also consider the long-term impact of AI on the very fabric of our profession. The technology is driving us toward a future filled with mediocre, uninspired, and repetitive content, and an acceptace of "good enough" code that takes less time to write, but more exponentially more time to maintain. We must also take into consideration the reduction and potentially destruction of essential software development skills, problem solving, and critical thinking.

* **Destruction of Critical Thinking:** The over-reliance on AI tools for simple tasks erodes our ability to think critically and solve problems independently. In several studies, researchers have found that students who use GenAI to complete writing and research tasks experience reduced cognitive load, but demonstrated poorer reasoning and argumentation skills compared to students using traditional methods.
* **Erosion of Creativity:** Creativity has always been an important part of software development. It is the ability to think outside the box and come up with new ideas. However, with the rise of GenAI, we are seeing a decline in creativity. Developer are more quick to accept the output of AI tools rather than take time to think creatively and come up with their own ideas on how to solve a particular task. The result is code that the developer doesn't own. It's not theirs, and there is no emotional connection to the result.
* **Erosion of Basic Software Engineering Skills:** The over-reliance on GenAI continues to erode and may lead to the extinction of basic software engineering skills. Skills like creative thinking, debugging, problem solving, contextual understanding, architecture and design, security, and ethics are all at risk of being lost. With the next generation of developers not having to learn these skills, exercise and hone these skills, and continue to practice proper software engineering, we may be heading toward a future where we have a generation of developers who are unable to build or maintain software without the help of AI. 

## Vigilance Fatigue

Having to constantly "babysit" the AI, continuously iterate on prompts, and meticulously try to get the results out of the AI that you expect can only be done for so long before things slip through the cracks. This phenomenon, known as **vigilance fatigue**, occurs when the cognitive load of verifying generated code exhausts our attention to detail. As fatigue sets in, the urge to accept "good enough" output grows, and developers become more likely to approve flawed logic, missing edge cases, and subtle vulnerabilities. The human reviewer eventually becomes a passive rubber stamp for the machine's confident mistakes.

* **Brain Fry:** When Steve Yegge launched Gas Town, an open-source platform that allows users to orchestrate swarms of AI agents simultaneously, building a complex system in a matter of minutes. While impressive on the surface, the reality is that there is really too much going on for a single person to reasonably comprehend. This constant cognative load, saturated attention and mental fatigue is what leads to "brain fry"; not from developers writing code, but from having to "manage" the AI agents and their output.

## The Code of Conduct

To operate ethically in an AI-augmented landscape, developers and creators must adhere to strict rules of engagement.

| Domain | The Copilot (Acceptable) | The Autopilot (Unacceptable) |
| :--- | :--- | :--- |
| **Software Development** | Scaffolding boilerplate and rapid proofs-of-concept. | Pushing generated code to a planned production system without a full mental map. |
| **System Architecture** | Exploring alternative design patterns and infrastructure options. | Allowing autonomous agents to deploy or modify systems unmonitored. |
| **Maintenance** | Generating test coverage for human-authored logic. | Delegating debugging to an AI when the original logic is not understood. |
| **Content & Design** | Brainstorming and mocking up low-fidelity concepts. | Presenting generated, unverified output as finished, expert work. |

## The Burden of the Builder

Surface-level AI solutions hide edge cases, security flaws, and performance bottlenecks. Eventually, those land mines will explode in production. When they do, the AI will not be there to debug the system, and without a mental model, analysis and recovery will be excruciatingly difficult. 

The human who pressed "deploy" is solely responsible. 

The systems we build still need human oversight, intuition, and accountability to survive in the real world. We must pledge to: treat AI as an eager but naive tool; maintain strict ownership over our mental models; and commit entirely to the craftsmanship of our trade.

## Beyond Software Development

These principles are not limited to software development. They apply to any field where AI is used to augment human creativity and productivity. Generating logos, infographics, and other visual assets may be acceptable, but presenting them as finished, expert work without proper attribution or disclosure is unacceptable. We must also consider the ethics of generating content that may infringe on the creative rights of others. Using AI to generate technical documentation can be a very effective way to ensure that documentation is accurate and up-to-date, but it is critically important to ensure that the documentation is still reviewed and approved by a human before it is published. Using AI in scientific research must always have an educated and trained human in the loop to ensure that the scientific results are accurate and that the research is conducted ethically.

## Conclusion

Generative AI can be a powerful tool that can accelerate our work and spark new ideas, but it cannot replace the foundational skills, critical thinking, and mental models required for true craftsmanship in software engineering. By embracing AI as an assistant rather than a substitute, we can build more resilient, secure, and maintainable systems.

The core tenets of this manifesto are clear: maintain a complete mental model of your code, treat AI prototypes as disposable sandboxes, and refuse to surrender accountability to autonomous agents. The future of software engineering, and our broader creative endeavors, depends on our commitment to human oversight and the ethical application of these powerful technologies. The burden of the builder remains entirely on us.
