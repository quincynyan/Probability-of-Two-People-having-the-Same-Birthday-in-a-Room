# Probability of Two People having the Same Birthday in a Room

This project explores the probability of two individuals sharing the same birthday in a room of `n` people, commonly known as the "birthday paradox." The analysis includes traditional proofs, exact probability calculations, and considerations for leap years.

## Prerequisites

To compile the Typst files into a PDF, you need to have Typst installed on your system. You can download and install Typst from [Typst's official website](https://typst.app/).

## Project Structure

-   `main.typ`: The main Typst file containing the document content.
-   `bibliography.bib`: The bibliography file containing references.
-   `assets/`: Directory containing images used in the document.

## Editing the Document

1. **Open the Typst file**: Open `main.typ` in your preferred text editor.
2. **Make your changes**: Edit the content as needed. You can modify the text, add new sections, or update existing ones.
3. **Update bibliography**: If you add new references, update the `bibliography.bib` file accordingly.

## Working in VSCode

To enhance your workflow, you can use Visual Studio Code (VSCode) with the following extensions:

1. **Typst Language Support**: Provides syntax highlighting and other features for Typst files.
    - Install from the VSCode marketplace: [Tinymist](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist)
2. **BibTeX Language Support**: Provides syntax highlighting for `.bib` files.
    - Install from the VSCode marketplace: [BibTeX Language Support](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)

## Compiling the Document

To compile the Typst files into a PDF, follow these steps:

1. **Navigate to the project directory**: Open a terminal and navigate to the project directory.
    ```sh
    cd /D:/projects/Probability of Two People having the Same Birthday in a Room
    ```
2. **Compile the Typst file**: Run the Typst compiler to generate the PDF.
    ```sh
    typst compile main.typ
    ```
3. **View the PDF**: The compiled PDF will be generated in the same directory. You can open it with any PDF viewer.

## Adding Images

To add images to the document:

1. **Place the image**: Save your image in the `assets/` directory.
2. **Reference the image**: Add a reference to the image in the `main.typ` file using the `#figure` command.
    ```typst
    #figure(image("assets/your_image.png"), caption: [Your Image Caption], placement: {none})
    ```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For any questions or suggestions, please contact the author at `quinc@nekonyan.fun`.
