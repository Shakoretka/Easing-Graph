# Easing Graph for Unity

**Easing Graph** is a collection of reusable easing functions designed for real-time performance, simplifying the creation of procedural animations and visual effects in Unity.

The library includes **30 of the most common easing functions**, implemented as optimized GPU solutions for both Shader Graph and VFX Graph.

---

## Key Features

* **Sub Graphs:** Individual nodes for every easing function in Shader Graph and VFX Graph.
* **Universal Selector:** A specialized `easeSelector` node that allows switching between easing types dynamically without rebuilding the graph.
* **HLSL Implementation:** Includes `easeSelectorFloat` for **VFX Graph**, designed for use within **Custom HLSL** nodes.
* **GPU Optimized:** Mathematical definitions are identical across all tools and tailored for high-performance execution.

---

## Package Contents

### Shader Graph
* **Individual Nodes:** Dedicated Sub Graphs for each easing type.
* **Unified Interface:** A selector node to access all modes via a single dropdown/index.
* **Gallery Scene:** A demonstration graph featuring a grid view of all functions with dynamic previews directly within the node editor.

### Visual Effect Graph
* **VFX Sub Graphs:** Native support for easing within particle systems.
* **Custom HLSL Support:** An HLSL reference file for advanced logic integration.
* **Demo Scene:** A showcase of curves applied to dynamic particles with synchronized animations and labels.

---

## Technical Details & Usage

### Important Notes
* **Scalar Input:** Easing functions accept only **scalar values** (float).
* **Normalized Range:** Input values are expected to be in the **[0, 1]** range. Use *Remap*, *Clamp*, or *Frac* operations if your input exceeds this range.
* **Overshoot:** Functions such as **Back** and **Elastic** may return values **greater than 1 or less than 0**. Be mindful of this when driving parameters like Opacity or Scale, as it may cause visual artifacts.

### Installation
1. Purchase/Add to My Assets: Visit the Easing Graph Asset Store Page and click "Add to My Assets".
2. Open Unity Project: Launch the Unity Editor and open your project.
3. Package Manager: Navigate to Window > Package Manager.
    * Change the filter (top left) to "Packages: My Assets".
4. Download & Import:
    * Find Easing Graph in the list.
    * Click Download, then click Import.
5. In the "Import Unity Package" window, ensure all files are selected and click Import.

---

**Author:** [SwiftFX](https://github.com/shakoretka)  
**Contact:** [swiftfxtools@gmail.com](mailto:swiftfxtools@gmail.com)

---
*Designed as a lightweight, self-contained library compatible with all Unity Render Pipelines (URP/HDRP) 6.0+ supporting Shader Graph and VFX Graph.*