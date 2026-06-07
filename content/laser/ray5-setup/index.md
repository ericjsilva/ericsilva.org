---
title: "Longer Ray5 10W Laser Setup & Configuration"
date: 2026-06-07T19:00:00-04:00
draft: false
tags:
  - laser
  - engraving
  - setup
  - air-assist
  - honeycomb
categories:
  - laser
description: "A comprehensive guide to setting up and configuring the Longer Ray5 10W diode laser with an air assist kit, honeycomb table, and custom alignment jigs."
---

![Longer Ray5 10W Laser Setup](ray5-setup-hero.webp)

Getting clean, professional-looking results from a diode laser requires more than just assembling the machine and pressing "start". When I first set up my **Longer Ray5 10W**, I quickly realized that to make high-quality, repeatable cuts and detailed engravings without messy charring, I needed to integrate a few essential accessories into my workflow: a honeycomb working bed, an air assist kit, and custom alignment jigs.

This guide covers my physical hardware setup, the configuration settings in LightBurn, and how I handle alignment with and without the honeycomb bed.

---

## My Hardware Stack

Here is the hardware I'm using in my laser workstation. If you are setting up a similar system, these components work together seamlessly:

* **Laser Engraver:** [Longer Ray5 10W Diode Laser Engraver](https://amzn.to/4tPZTbn) – A highly capable, budget-friendly diode laser featuring a 400x400 mm workspace and a built-in touch screen for offline engraving.
* **Air Assist:** [Longer Laser Air Assist Kit](https://amzn.to/4dvPhtm) – An adjustable airflow pump that blows smoke and debris away from the laser nozzle.
* **Working Bed:** [Longer Honeycomb Working Bed (17.3" x 17.3")](https://amzn.to/42XpjZx) – An open metal grid that elevates your material, providing airflow beneath for cleaner cuts and heat dissipation.

## Design Files

* **Alignment Jig File:** [longer-ray5-alignment-jig-10w.lbrn2](longer-ray5-alignment-jig-10w.lbrn2) – This LightBurn project file contains two pre-configured layouts to help with material alignment:
  * **Honeycomb Jig:** A grid-aligned corner stop template designed to help position the honeycomb grid relative to the laser's origin.
  * **No Honeycomb Jig:** A layout designed to score alignment borders directly onto a wasteboard or target piece when not using the honeycomb table.

---

## 1. Honeycomb Working Bed Setup

The honeycomb bed is crucial for cutting projects. When you cut wood or acrylic directly on a flat surface, smoke gets trapped underneath the material, causing heavy charring and soot stains on the back side.

### Installation Tips

1. **Workbench Protection:** Always place the included thin aluminum sheet directly on your workbench *first*, and then place the honeycomb bed on top of it. This aluminum sheet acts as a barrier, preventing the laser from burning your workbench when it cuts through workpieces.
2. **Squaring the Bed:** Align the edges of the honeycomb table so they are perfectly square to the frame of your Longer Ray5. If the bed is crooked, alignment lines on the honeycomb grid won't match the movements of your laser axes.
3. **Hold-Down Pins:** The honeycomb bed comes with plastic automotive trim clips that can be used as hold-downs to keep thin, warped sheets of wood flat against the grid.
   * > [!WARNING]
     > Make sure to remove all plastic clips from the table's active cutting and engraving path before using the table for the first time (and before every job). If they are left in the laser's path, the laser beam will melt the plastic, creating toxic fumes and ruining the clips.

---

## 2. Air Assist Integration

Adding air assist is the single biggest upgrade you can make to a diode laser. The stream of compressed air serves two critical functions:

* **Extinguishes Flare-Ups & Charring:** By blowing away combustion gases and heat, it prevents wood from charring or catching fire, yielding clean, bright cut edges.
* **Protects the Lens:** It creates positive pressure at the nozzle, keeping smoke, dust, and vaporized resins from settling on the laser module's protective glass lens.

### Routing the Air Line

When routing the air hose from the pump to the laser head:

* Use zip ties or hook-and-loop straps to bundle the hose along the main wiring harness and cable drag chains.
* **Crucial:** Manually move the laser head to all four corners of the 400x400 mm workspace before turning on the power. Ensure that the air hose has enough slack and does not pull tight, bind, or snag on the frame at the outer limits of travel.

---

## 3. Alignment Jigs (The Secret to Repeatability)

Aligning a workpiece manually with the laser head's red framing light is slow and prone to errors. To solve this, I use two types of alignment jigs depending on whether the honeycomb table is on the bed or not.

### A. Alignment on the Honeycomb Bed

The honeycomb grid has built-in rulers along the edges, but aligning a piece precisely still takes work.

* **The Honeycomb Jig:** I use the **Honeycomb Jig template** included in the LightBurn project file. This template helps score or cut a perfect corner-aligned jig that has pins projecting from the bottom to slot directly into the honeycomb cells.
* **How it works:** Once the L-bracket is pressed into the honeycomb grid, it acts as a perfect physical corner stop. You slide your material (like a wood plaque or slate coaster) into the corner of the bracket. Because the jig fits securely into the grid, you can run batch projects knowing every piece is in the exact same coordinates.
* **Software Setup:** In LightBurn, you can save a specific coordinate offset (e.g., $X=10, Y=10$) matching the corner of your jig so your designs line up automatically.

### B. Alignment Without the Honeycomb Bed

Sometimes you need to engrave thick objects that require removing the honeycomb table to gain vertical clearance under the laser module. In these cases, you can use a wasteboard-based alignment jig:

1. **Secure a Wasteboard:** Secure a piece of scrap cardboard or thin MDF directly to your workbench or laser base plate using double-sided tape or clamps.
2. **Engrave the Outline:** Open the **No Honeycomb Jig template** from the project file to create a scored boundary matching your workpiece.
3. **Run a Test Cut:** Set the laser to a very low power (e.g., 2% power at high speed) to score/burn the outline of the shape directly onto the scrap cardboard.
4. **Place the Workpiece:** Without moving the cardboard wasteboard, place your actual workpiece inside the scored outline.
5. **Run the Job:** Run your engraving design. Because the wasteboard hasn't moved, the engraving will align perfectly to the workpiece inside the template.

---

## 4. Software Configuration (LightBurn)

For the best experience, I recommend using **LightBurn** over LaserGRBL. It provides much better control over layer settings and machine configuration.

### Device Profile Settings

When setting up your Longer Ray5 10W in LightBurn, use these settings:

* **Controller Type:** GRBL
* **Connection Type:** Serial/USB
* **Working Area:** `400.0 mm x 400.0 mm`
* **Origin:** Front-Left (Bottom-Left)
* **Baud Rate:** `115200`
* **Auto-Home on Startup:** Enabled (the Ray5 has physical limit switches)

### Critical Settings

* **S-Value Max:** Go to **Edit > Device Settings** and ensure **S-Value Max** is set to `1000`. Diode lasers expect GRBL power scale commands from 0 to 1000. If this is set to another number (like 255), the laser will either run underpowered or fire at full power constantly.
* **Baud Rate:** If you experience connection drops, ensure you are using a high-quality USB cable and that the baud rate is locked to `115200`.

---

## 5. Focusing Procedure

The Longer Ray5 10W has a fixed focal length of **50mm**. Setting the focus height is quick using the metal cylinders/blocks provided by Longer:

1. Place your workpiece (and honeycomb bed if using one) under the laser head.
2. Loosen the thumbscrew on the side of the laser module carriage.
3. Place the focus spacer cylinder on top of your workpiece, directly beneath the metal nozzle.
4. Gently lower the laser module until its metal base rests flush on top of the cylinder.
5. Tighten the thumbscrew to lock the laser module in position.
6. **Important:** Remove the focusing cylinder before starting the job!

By combining proper focusing, air assist cooling, a honeycomb bed, and alignment templates, you'll see a massive increase in detail and a reduction in scorched surfaces. Happy making!
