# SmartUI Storybook Sample

## Installation

1. Clone this repository
    ```
    git clone https://github.com/LambdaTest/smartui-storybook-sample
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
    git clone https://github.com/LambdaTest/smartui-storybook-sample
    ```
2. Navigate to project directory
    ```
    cd smartui-storybook-sample
    ```
3. Create SmartUI Config JSON
    ```
    smartui config create .smartui.json
    ```
4. Create a docker Image
    ```
    docker build -t <image_name> .
    ```
5. Run a Docker container and test in it
    ```
    docker run -e PROJECT_TOKEN="your_project_token" <image_name>
    ```

