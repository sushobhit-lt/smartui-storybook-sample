# SmartUI Storybook Sample

## Installation

1. Clone this repository
    ```
    git clone https://github.com/pinanks/smartui-storybook.git
    ```

2. Change directory to the downloaded git repo and install packages
    ```
    npm install
    ```

3. Start Storybook 
    ```
    npm run storybook 
    ```

## Running SmartUI storybook tests on a Docker container.

1. Clone this repository
    ```
    git clone https://github.com/pinanks/smartui-storybook.git
    ```

2. Create SmartUI Config JSON
    ```
    smartui config create .smartui.json
    ```

3. Create a docker Image
    ```
    docker build -t <image_name> .
    ```
4. Run a Docker container and test in it
    ```
    docker run -e PROJECT_TOKEN="your_project_token" <image_name>
    ```

