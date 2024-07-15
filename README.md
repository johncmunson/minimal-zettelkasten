# Minimal Zettelkasten

Welcome to the `Minimal Zettelkasten` repository. This project aims to provide you with a streamlined and effective note-taking system based on the principles of the Zettelkasten method.

## Why Use a Zettelkasten?

The Zettelkasten method is a powerful note-taking technique that helps you build a network of interconnected ideas. It promotes deep understanding, creativity, and productivity by emphasizing the relationships between concepts. By continuously linking notes, you create a web of knowledge that can easily be expanded and navigated.

## Why Markdown and Plaintext?

Using Markdown and plaintext for your Zettelkasten notes offers numerous benefits:

- **Portability:** Your notes are future-proof and can be opened on any device without requiring special software.
- **Lightweight:** Plaintext files are small and fast to load, making them ideal for large collections of notes.
- **Quick and Simple:** Writing in Markdown is easy and intuitive, allowing you to focus on capturing your ideas.
- **Compatibility:** Markdown files work seamlessly with command-line utilities like `grep`, making it simple to search and manipulate your notes.
- **Flexibility:** You can easily integrate your notes with other tools and platforms.

## The Pragmatism of Subdirectories

While it's possible to create a Zettelkasten that relies purely on links and structure notes, allowing for subdirectories adds a layer of convenience. Subdirectories help you organize your notes without sacrificing the interconnected nature of your Zettelkasten. For example, implementing the PARA method (Projects, Areas, Resources, Archives) can help you keep related notes together, enhancing both organization and retrieval.

## Included Utility: `find_broken_links.sh`

The `.scripts/find_broken_links.sh` bash script is an essential tool for maintaining the integrity of your Zettelkasten. This script searches through your Markdown notes and lists any broken internal links, allowing you to manually fix them. Run `chmod +x .scripts/find_broken_links.sh` to make this script executable.

- The script assumes that you are using relative paths that begin with either `./` or `../`.
- It works for both Markdown link syntax, e.g. `[example note](./example.md)`, and Markdown image/multimedia syntax, e.g. `![example image](./example.jpg)`.
- The script is effective even if you are using subdirectories.

Automating the detection of broken links ensures that your Zettelkasten remains functional and reliable. This utility saves you time and effort, allowing you to focus on creating and connecting notes rather than managing errors.

## The Perfect Minimal Zettelkasten Implementation

Combining the virtues of the Zettelkasten method with the simplicity of Markdown and plaintext, along with the convenience of subdirectories and automated link validation, creates an ideal note-taking system. This implementation is minimal yet powerful, offering a balance between structure and flexibility.

## Best Practices for Using a Zettelkasten

To get the most out of your Zettelkasten, consider the following best practices:

- **Avoid Frequent Actions Leading to Broken Links:** Be mindful of renaming or moving files. If necessary, update all links accordingly.
- **Limit Nested Subdirectories:** While subdirectories are useful, avoid creating too many nested levels, which can complicate navigation and detract from the primary structural mechanisms (links and structure notes).
- **Consistent Naming Conventions:** Use clear and consistent names for your notes to make them easily identifiable.
- **Regular Maintenance:** Periodically run the `find_broken_links.sh` script to ensure all links are intact.
- **Create Structure Notes:** Use structure notes to provide overviews or tables of contents for specific topics, helping you navigate related sets of notes.
- **Link Liberally:** Make extensive use of links to connect related ideas and notes, fostering a rich network of knowledge.
- **Use Bi-directional Links:** Whenever you create a link from one note to another, consider also adding a link back from the second note to the first. This practice enhances the interconnectedness of your notes and makes it easier to navigate your Zettelkasten in both directions.

By following these practices and leveraging the tools provided in this repository, you can build a robust and efficient Zettelkasten that enhances your learning and productivity.

## Example Directory Structure

The included directories and notes in this repository are provided for example purposes. They demonstrate various principles of a Zettelkasten system and allow you to easily see the script in action. Feel free to delete them and make it your own.

## Ideas for Improvement and Expansion

While this minimal Zettelkasten system is highly effective as it stands, here are some ideas to further enhance its functionality without compromising simplicity:

### 1. Tagging System

- Implement a simple tagging system by adding `#tags` at the end of your notes. Use a script to collect and list all tags for easy reference.

### 2. Enhanced Search

- Integrate `fzf` (a command-line fuzzy finder) to create a more powerful and interactive search experience for your notes.

### 3. Note Templates

- Create Markdown templates for common types of notes (e.g., literature notes, meeting notes) to standardize and streamline your note-taking process.

### 4. Cross-link Suggestions

- Develop a script that suggests potential cross-links between notes based on common keywords, helping you discover and create new connections.

### 5. Sync and Backup

- Set up automated sync and backup using tools like `rsync` or cloud services (e.g., GitHub, Dropbox) to ensure your notes are always safe and accessible.

### 6. Visual Graph Representation

- Use a tool like `Obsidian` or `Zettlr` that can visualize your Zettelkasten as a graph, helping you see the connections between your notes more clearly.

### 7. Metadata Support

- Add YAML front matter to your Markdown files to store additional metadata, such as creation date, last modified date, and keywords, for better organization and filtering.

### 8. Mobile Access

- Set up a mobile-friendly Markdown editor (e.g., iA Writer, Markor) synced with your note directory, allowing you to capture and review notes on the go.

These enhancements can improve the usability and functionality of your minimal Zettelkasten system while keeping it simple and efficient.

---

Happy note-taking!
