![LOGO](http://opencompass.openxlab.space/utils/MMLB.jpg)
<div align="center"><b>A Toolkit for Evaluating Large Vision-Language Models. </b></div>

<div align="center">
[![][github-contributors-shield]][github-contributors-link]
[![][github-forks-shield]][github-forks-link]
[![][github-stars-shield]][github-stars-link]
[![][github-issues-shield]][github-issues-link]
[![][github-license-shield]][github-license-link] <br>

English | [简体中文](/docs/zh-CN/README_zh-CN.md) | [日本語](/docs/ja/README_ja.md)
</div>

<div align="center">
<a href="https://rank.opencompass.org.cn/leaderboard-multimodal">🏆 Learderboard </a> •
<a href="#-datasets-models-and-evaluation-results">📊Datasets & Models </a> •
<a href="#%EF%B8%8F-quickstart">🏗️Quickstart </a> •
<a href="#%EF%B8%8F-development-guide">🛠️Development </a> •
<a href="#-the-goal-of-vlmevalkit">🎯Goal </a> •
<a href="#%EF%B8%8F-citation">🖊️Citation </a>
</div>

<div align="center">
<a href="https://huggingface.co/spaces/opencompass/open_vlm_leaderboard">🤗 Leaderboard</a>
<a href="https://openxlab.org.cn/apps/detail/kennyutc/open_mllm_leaderboard">(🤖 OpenXlab Mirror)</a>
<a href="https://discord.gg/evDT4GZmxN">🔊 Discord Channel</a>
<a href="https://www.arxiv.org/abs/2407.11691">📝 Technical Report</a>
</div>


**VLMEvalKit** (the python package name is **vlmeval**) is an **open-source evaluation toolkit** of **large vision-language models (LVLMs)**. It enables **one-command evaluation** of LVLMs on various benchmarks, without the heavy workload of data preparation under multiple repositories. In VLMEvalKit, we adopt **generation-based evaluation** for all LVLMs, and provide the evaluation results obtained with both **exact matching** and **LLM-based answer extraction**.

## 🆕 News

- **[2024-07-19]** We have supported [**MathVision**](https://mathvision-cuhk.github.io), thanks to [**scikkk**](https://github.com/scikkk)🔥🔥🔥
- **[2024-07-19]** We have supported [**LLaVA-Next-Interleave-7B**](https://huggingface.co/lmms-lab/llava-next-interleave-qwen-7b) and [**LLaVA-Next-LLaMA-3**](https://huggingface.co/lmms-lab/llama3-llava-next-8b) 🔥🔥🔥
- **[2024-07-18]** We have supported [**BLINK**](https://zeyofu.github.io/blink/), thanks to [**zeyofu**](https://zeyofu.github.io)🔥🔥🔥
- **[2024-07-18]** We released the first version of [**VLMEvalKit Technical Report**](https://www.arxiv.org/abs/2407.11691). We greatly welcome contributions from the community and are glad to share the corresponding credit: All Contributions will be acknowledged in the report and Contributors with 3 or more major contributions (implementing an MLLM, benchmark, or major feature) can share the authorship of the tech report 🔥🔥🔥
- **[2024-07-12]** We have supported [**MMLongBench-Doc**](https://mayubo2333.github.io/MMLongBench-Doc/), a benchmark for long-context document understanding, thanks to [**mayubo2333**](https://github.com/mayubo2333) 🔥🔥🔥
- **[2024-07-12]** We have supported [**VCR**](https://github.com/tianyu-z/vcr), a benchmark for visual caption restoration evaluation, thanks to [**tianyu-z**](https://github.com/tianyu-z) and [**sheryc**](https://github.com/sheryc) 🔥🔥🔥
- **[2024-07-08]** We have supported [**InternLM-XComposer-2.5**](https://github.com/InternLM/InternLM-XComposer), thanks to [**LightDXY**](https://github.com/LightDXY) 🔥🔥🔥
- **[2024-07-08]** We have supported [**InternVL2**](https://huggingface.co/OpenGVLab/InternVL2-26B), thanks to [**czczup**](https://github.com/czczup) 🔥🔥🔥
- **[2024-06-27]** We have supported [**Cambrian**](https://cambrian-mllm.github.io/) 🔥🔥🔥
- **[2024-06-27]** We have supported [**AesBench**](https://github.com/yipoh/AesBench), thanks to [**Yipo Huang**](https://github.com/yipoh) and [**Quan Yuan**](https://github.com/dylanqyuan)🔥🔥🔥

## 📊 Datasets, Models, and Evaluation Results

**The performance numbers on our official multi-modal leaderboards can be downloaded from here!**

[**OpenVLM Leaderboard**](https://huggingface.co/spaces/opencompass/open_vlm_leaderboard): [Download All DETAILED Results](http://opencompass.openxlab.space/assets/OpenVLM.json).

**Supported Image Understanding Dataset**

- By default, all evaluation results are presented in [**OpenVLM Leaderboard**](https://huggingface.co/spaces/opencompass/open_vlm_leaderboard).

| Dataset                                                      | Dataset Names (for run.py)                             | Task | Dataset | Dataset Names (for run.py) | Task |
| ------------------------------------------------------------ | ------------------------------------------------------ | --------- | --------- | --------- | --------- |
| [**MMBench Series**](https://github.com/open-compass/mmbench/): <br>MMBench, MMBench-CN, CCBench | MMBench\_DEV\_[EN/CN] <br>MMBench\_TEST\_[EN/CN]<br>MMBench\_DEV\_[EN/CN]\_V11<br>MMBench\_TEST\_[EN/CN]\_V11<br>CCBench | Multi-choice <br>Question (MCQ) | [**MMStar**](https://github.com/MMStar-Benchmark/MMStar) | MMStar | MCQ |
| [**MME**](https://github.com/BradyFU/Awesome-Multimodal-Large-Language-Models/tree/Evaluation) | MME | Yes or No (Y/N)                                         | [**SEEDBench Series**](https://github.com/AILab-CVC/SEED-Bench) | SEEDBench_IMG <br>SEEDBench2 <br>SEEDBench2_Plus | MCQ                                                |
| [**MM-Vet**](https://github.com/yuweihao/MM-Vet)             | MMVet  | VQA                                              | [**MMMU**](https://mmmu-benchmark.github.io)  | MMMU_[DEV_VAL/TEST]                      | MCQ                                |
| [**MathVista**](https://mathvista.github.io)                 | MathVista_MINI | VQA                                         | [**ScienceQA_IMG**](https://scienceqa.github.io) | ScienceQA_[VAL/TEST]                     | MCQ                        |
| [**COCO Caption**](https://cocodataset.org)                  | COCO_VAL | Caption                                              | [**HallusionBench**](https://github.com/tianyi-lab/HallusionBench) | HallusionBench                                | Y/N                             |
| [**OCRVQA**](https://ocr-vqa.github.io)*                     | OCRVQA_[TESTCORE/TEST] | VQA                                 | [**TextVQA**](https://textvqa.org)* | TextVQA_VAL                      | VQA                              |
| [**ChartQA**](https://github.com/vis-nlp/ChartQA)*           | ChartQA_TEST | VQA                                          | [**AI2D**](https://allenai.org/data/diagrams) | AI2D_TEST                                 | MCQ                         |
| [**LLaVABench**](https://huggingface.co/datasets/liuhaotian/llava-bench-in-the-wild) | LLaVABench | VQA                                            | [**DocVQA**](https://www.docvqa.org)+       | DocVQA_[VAL/TEST]                           | VQA                                         |
| [**InfoVQA**](https://www.docvqa.org/datasets/infographicvqa)+ | InfoVQA_[VAL/TEST] | VQA | [**OCRBench**](https://github.com/Yuliang-Liu/MultimodalOCR) | OCRBench | VQA |
| [**RealWorldQA**](https://x.ai/blog/grok-1.5v)            | RealWorldQA | MCQ                                          | [**POPE**](https://github.com/AoiDragon/POPE) | POPE                                           | Y/N                                            |
| [**Core-MM**](https://github.com/core-mm/core-mm)-          | CORE_MM | VQA                                               | [**MMT-Bench**](https://mmt-bench.github.io)                 | MMT-Bench_[VAL/VAL_MI/ALL/ALL_MI]                | MCQ  |
| [**MLLMGuard**](https://github.com/Carol-gutianle/MLLMGuard) - | MLLMGuard_DS | VQA | [**AesBench**](https://github.com/yipoh/AesBench)+ | AesBench_[VAL/TEST] | MCQ |
| [**VCR-wiki**](https://huggingface.co/datasets/vcr-org/)+ | VCR\_[EN/ZH]\_[EASY/HARD]_[ALL/500/100] | VQA | [**MMLongBench-Doc**](https://mayubo2333.github.io/MMLongBench-Doc/)+ | MMLongBench_DOC | VQA |
| [**BLINK**](https://zeyofu.github.io/blink/) + | BLINK | MCQ | [**MathVision**](https://mathvision-cuhk.github.io)+ | MathVision<br>MathVision_MINI | VQA |

**\*** We only provide a subset of the evaluation results, since some VLMs do not yield reasonable results under the zero-shot setting

**\+** The evaluation results are not available yet

**\-** Only inference is supported in VLMEvalKit

VLMEvalKit will use a **judge LLM** to extract answer from the output if you set the key, otherwise it uses the **exact matching** mode (find "Yes", "No", "A", "B", "C"... in the output strings). **The exact matching can only be applied to the Yes-or-No tasks and the Multi-choice tasks.**

**Supported Video Understanding Dataset**

| Dataset                                              | Dataset Names (for run.py) | Task | Dataset | Dataset Names (for run.py) | Task |
| ---------------------------------------------------- | -------------------------- | ---- | ------- | -------------------------- | ---- |
| [**MMBench-Video**](https://mmbench-video.github.io) | MMBench-Video              | VQA  |         |                            |      |

**Supported API Models**

| [**GPT-4v (20231106, 20240409)**](https://platform.openai.com/docs/guides/vision) 🎞️🚅 | [**GPT-4o**](https://openai.com/index/hello-gpt-4o/) 🎞️🚅      | [**Gemini-1.0-Pro**](https://platform.openai.com/docs/guides/vision) 🎞️🚅 | [**Gemini-1.5-Pro**](https://platform.openai.com/docs/guides/vision) 🎞️🚅 | [**Step-1V**](https://www.stepfun.com/#step1v) 🎞️🚅 |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------- |
| [**Reka-[Edge / Flash / Core]**](https://www.reka.ai)🚅       | [**Qwen-VL-[Plus / Max]**](https://huggingface.co/spaces/Qwen/Qwen-VL-Max) 🎞️🚅 | [**Claude3-[Haiku / Sonnet / Opus]**](https://www.anthropic.com/news/claude-3-family) 🎞️🚅 | [**GLM-4v**](https://open.bigmodel.cn/dev/howuse/glm4v) 🚅    | [**CongRong**](https://mllm.cloudwalk.com/web) 🎞️🚅 |
| [**Claude3.5-Sonnet**](https://www.anthropic.com/news/claude-3-5-sonnet) 🎞️🚅 |                                                              |                                                              |                                                              |                                                   |

**Supported PyTorch / HF Models**

| [**IDEFICS-[9B/80B/v2-8B]-Instruct**](https://huggingface.co/HuggingFaceM4/idefics-9b-instruct)🎞️🚅 | [**InstructBLIP-[7B/13B]**](https://github.com/salesforce/LAVIS/blob/main/projects/instructblip/README.md) | [**LLaVA-[v1-7B/v1.5-7B/v1.5-13B]**](https://github.com/haotian-liu/LLaVA) | [**MiniGPT-4-[v1-7B/v1-13B/v2-7B]**](https://github.com/Vision-CAIR/MiniGPT-4) |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| [**mPLUG-Owl2**](https://github.com/X-PLUG/mPLUG-Owl/tree/main/mPLUG-Owl2)🎞️ | [**OpenFlamingo-v2**](https://github.com/mlfoundations/open_flamingo)🎞️ | [**PandaGPT-13B**](https://github.com/yxuansu/PandaGPT)      | [**Qwen-VL**](https://huggingface.co/Qwen/Qwen-VL)🎞️🚅, [**Qwen-VL-Chat**](https://huggingface.co/Qwen/Qwen-VL-Chat)🎞️**🚅** |
| [**VisualGLM-6B**](https://huggingface.co/THUDM/visualglm-6b)🚅 | [**InternLM-XComposer-[1/2]**](https://huggingface.co/internlm/internlm-xcomposer-7b)🚅 | [**ShareGPT4V-[7B/13B]**](https://sharegpt4v.github.io)🚅     | [**TransCore-M**](https://github.com/PCIResearch/TransCore-M) |
| [**LLaVA (XTuner)**](https://huggingface.co/xtuner/llava-internlm-7b)🚅 | [**CogVLM-[Chat/Llama3]**](https://huggingface.co/THUDM/cogvlm-chat-hf)🚅 | [**ShareCaptioner**](https://huggingface.co/spaces/Lin-Chen/Share-Captioner)🚅 | [**CogVLM-Grounding-Generalist**](https://huggingface.co/THUDM/cogvlm-grounding-generalist-hf)🚅 |
| [**Monkey**](https://github.com/Yuliang-Liu/Monkey)🚅, [**Monkey-Chat**](https://github.com/Yuliang-Liu/Monkey)🚅 | [**EMU2-Chat**](https://github.com/baaivision/Emu)🚅🎞️         | [**Yi-VL-[6B/34B]**](https://huggingface.co/01-ai/Yi-VL-6B)  | [**MMAlaya**](https://huggingface.co/DataCanvas/MMAlaya)🚅    |
| [**InternLM-XComposer-2.5**](https://github.com/InternLM/InternLM-XComposer)🚅🎞️ | [**MiniCPM-[V1/V2/V2.5]**](https://huggingface.co/openbmb/MiniCPM-V)🚅 | [**OmniLMM-12B**](https://huggingface.co/openbmb/OmniLMM-12B) | [**InternVL-Chat-[V1-1/V1-2/V1-5/V2]**](https://github.com/OpenGVLab/InternVL)🚅🎞️, <br>[**Mini-InternVL-Chat-[2B/4B]-V1-5**](https://github.com/OpenGVLab/InternVL)🚅🎞️ |
| [**DeepSeek-VL**](https://github.com/deepseek-ai/DeepSeek-VL/tree/main)🎞️ | [**LLaVA-NeXT**](https://llava-vl.github.io/blog/2024-01-30-llava-next/)🚅 | [**Bunny-Llama3**](https://huggingface.co/BAAI/Bunny-v1_1-Llama-3-8B-V)🚅 | [**XVERSE-V-13B**](https://github.com/xverse-ai/XVERSE-V-13B/blob/main/vxverse/models/vxverse.py) |
| [**PaliGemma-3B**](https://huggingface.co/google/paligemma-3b-pt-448) 🚅 | [**360VL-70B**](https://huggingface.co/qihoo360/360VL-70B) 🚅 | [**Phi-3-Vision**](https://huggingface.co/microsoft/Phi-3-vision-128k-instruct)🚅 | [**WeMM**](https://github.com/scenarios/WeMM)🚅               |
| [**GLM-4v-9B**](https://huggingface.co/THUDM/glm-4v-9b) 🚅    | [**Cambrian-[8B/13B/34B]**](https://cambrian-mllm.github.io/) | [**LLaVA-Next-[Interleave-7B/LLaMA-3/Qwen-32B]**](https://huggingface.co/lmms-lab/llava-next-interleave-qwen-7b) 🎞️ |                                                              |

🎞️: Support multiple images as inputs.

🚅: Models can be used without any additional configuration/operation.

**Transformers Version Recommendation:**

Note that some VLMs may not be able to run under certain transformer versions, we recommend the following settings to evaluate each VLM:

- **Please use** `transformers==4.33.0` **for**: `Qwen series`, `Monkey series`, `InternLM-XComposer Series`, `mPLUG-Owl2`, `OpenFlamingo v2`, `IDEFICS series`, `VisualGLM`, `MMAlaya`, `ShareCaptioner`, `MiniGPT-4 series`, `InstructBLIP series`, `PandaGPT`, `VXVERSE`, `GLM-4v-9B`.
- **Please use** `transformers==4.37.0` **for**: `LLaVA series`, `ShareGPT4V series`, `TransCore-M`, `LLaVA (XTuner)`, `CogVLM Series`, `EMU2 Series`, `Yi-VL Series`, `MiniCPM-[V1/V2]`, `OmniLMM-12B`, `DeepSeek-VL series`, `InternVL series`, `Cambrian Series`.
- **Please use** `transformers==4.40.0` **for**: `IDEFICS2`, `Bunny-Llama3`, `MiniCPM-Llama3-V2.5`, `LLaVA-Next series`, `360VL-70B`, `Phi-3-Vision`, `WeMM`.
- **Please use** `transformers==latest` **for**: `PaliGemma-3B`.

```python
# Demo
from vlmeval.config import supported_VLM
model = supported_VLM['idefics_9b_instruct']()
# Forward Single Image
ret = model.generate(['assets/apple.jpg', 'What is in this image?'])
print(ret)  # The image features a red apple with a leaf on it.
# Forward Multiple Images
ret = model.generate(['assets/apple.jpg', 'assets/apple.jpg', 'How many apples are there in the provided images? '])
print(ret)  # There are two apples in the provided images.
```

## 🏗️ QuickStart

See [[QuickStart](/docs/en/Quickstart.md) | [快速开始](/docs/zh-CN/Quickstart_zh-CN.md)] for a quick start guide.

## 🛠️ Development Guide

To develop custom benchmarks, VLMs, or simply contribute other codes to **VLMEvalKit**, please refer to [[Development_Guide](/docs/en/Development.md) | [开发指南](/docs/zh-CN/Development_zh-CN.md)].

**Call for contributions**

To promote the contribution from the community and share the corresponding credit (in the next report update):

- All Contributions will be acknowledged in the report.
- Contributors with 3 or more major contributions (implementing an MLLM, benchmark, or major feature) can join the author list of [VLMEvalKit Technical Report](https://www.arxiv.org/abs/2407.11691) on ArXiv. Eligible contributors can create an issue or dm kennyutc in [VLMEvalKit Discord Channel](https://discord.com/invite/evDT4GZmxN).

## 🎯 The Goal of VLMEvalKit

**The codebase is designed to:**

1. Provide an **easy-to-use**, **opensource evaluation toolkit** to make it convenient for researchers & developers to evaluate existing LVLMs and make evaluation results **easy to reproduce**.
2. Make it easy for VLM developers to evaluate their own models. To evaluate the VLM on multiple supported benchmarks, one just need to **implement a single `generate_inner()` function**, all other workloads (data downloading, data preprocessing, prediction inference, metric calculation) are handled by the codebase.

**The codebase is not designed to:**

1. Reproduce the exact accuracy number reported in the original papers of all **3rd party benchmarks**. The reason can be two-fold:
   1. VLMEvalKit uses **generation-based evaluation** for all VLMs (and optionally with **LLM-based answer extraction**). Meanwhile, some benchmarks may use different approaches (SEEDBench uses PPL-based evaluation, *eg.*). For those benchmarks, we compare both scores in the corresponding result. We encourage developers to support other evaluation paradigms in the codebase.
   2. By default, we use the same prompt template for all VLMs to evaluate on a benchmark. Meanwhile, **some VLMs may have their specific prompt templates** (some may not covered by the codebase at this time). We encourage VLM developers to implement their own prompt template in VLMEvalKit, if that is not covered currently. That will help to improve the reproducibility.

## 🖊️ Citation

If you find this work helpful, please consider to **star🌟** this repo. Thanks for your support!

[![Stargazers repo roster for @open-compass/VLMEvalKit](https://reporoster.com/stars/open-compass/VLMEvalKit)](https://github.com/open-compass/VLMEvalKit/stargazers)

If you use VLMEvalKit in your research or wish to refer to published OpenSource evaluation results, please use the following BibTeX entry and the BibTex entry corresponding to the specific VLM / benchmark you used.

```bib
@misc{duan2024vlmevalkit,
      title={VLMEvalKit: An Open-Source Toolkit for Evaluating Large Multi-Modality Models},
      author={Haodong Duan and Junming Yang and Yuxuan Qiao and Xinyu Fang and Lin Chen and Yuan Liu and Xiaoyi Dong and Yuhang Zang and Pan Zhang and Jiaqi Wang and Dahua Lin and Kai Chen},
      year={2024},
      eprint={2407.11691},
      archivePrefix={arXiv},
      primaryClass={cs.CV},
      url={https://arxiv.org/abs/2407.11691},
}
```

<p align="right"><a href="#top">🔝Back to top</a></p>

[github-contributors-link]: https://github.com/open-compass/VLMEvalKit/graphs/contributors
[github-contributors-shield]: https://img.shields.io/github/contributors/open-compass/VLMEvalKit?color=c4f042&labelColor=black&style=flat-square
[github-forks-link]: https://github.com/open-compass/VLMEvalKit/network/members
[github-forks-shield]: https://img.shields.io/github/forks/open-compass/VLMEvalKit?color=8ae8ff&labelColor=black&style=flat-square
[github-issues-link]: https://github.com/open-compass/VLMEvalKit/issues
[github-issues-shield]: https://img.shields.io/github/issues/open-compass/VLMEvalKit?color=ff80eb&labelColor=black&style=flat-square
[github-license-link]: https://github.com/open-compass/VLMEvalKit/blob/main/LICENSE
[github-license-shield]: https://img.shields.io/github/license/open-compass/VLMEvalKit?color=white&labelColor=black&style=flat-square
[github-stars-link]: https://github.com/open-compass/VLMEvalKit/stargazers
[github-stars-shield]: https://img.shields.io/github/stars/open-compass/VLMEvalKit?color=ffcb47&labelColor=black&style=flat-square
