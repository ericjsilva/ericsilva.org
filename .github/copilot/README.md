# GitHub Copilot Configuration

This directory contains custom GitHub Copilot configurations for the ericsilva.org website project.

# GitHub Copilot Configuration

This directory contains custom GitHub Copilot configurations for the ericsilva.org website project.

## Files Overview

### `copilot-instructions.md` (root .github level)
Main Copilot instructions that provide context about the project, content guidelines, and technical preferences. This helps Copilot understand the site's purpose, structure, and Eric's writing style.

### `instructions/` directory
Specialized instruction files that automatically apply to specific file types:
- `recipes.instructions.md` - For recipe blog posts with personal stories
- `woodworking.instructions.md` - For project documentation
- `photography.instructions.md` - For photography posts with technical details
- `scouting.instructions.md` - For Scouting leadership content

### `chatmodes/beast-blogger.chatmode.md`
Custom chat mode optimized for creating personal blog content. This mode is specifically designed for:
- Recipe posts with personal stories and practical tips
- Woodworking project documentation
- Photography posts with technical and artistic insights
- Personal musings and reflections

## Using the Beast Blogger Chat Mode

To activate the beast-blogger mode in GitHub Copilot Chat:

1. Select "beast-blogger" from the chat mode dropdown in VS Code
2. The mode will guide you through creating authentic, engaging blog content
3. It follows a structured approach from discovery to polished final content

## Instruction Files Auto-Application

The instruction files in the `instructions/` directory automatically apply based on file patterns:
- Recipe files in `content/recipes/` get recipe-specific guidance
- Woodworking posts get project documentation standards
- Photography posts get technical and creative guidance
- Scouting content gets leadership and character development focus

## Additional Configuration

This workspace follows VS Code's official Copilot customization structure:
- `.github/copilot-instructions.md` for workspace-wide guidance
- `.github/instructions/*.instructions.md` for file-type-specific instructions
- `.github/chatmodes/*.chatmode.md` for custom chat modes

## Benefits

These configurations help GitHub Copilot:
- Understand the personal blog context and tone
- Suggest appropriate content structures for different post types
- Maintain consistency with Eric's writing style and technical preferences
- Optimize for both reader engagement and technical performance

Use these configurations to enhance content creation while maintaining the authentic, helpful voice that characterizes Eric's blog.
