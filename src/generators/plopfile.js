module.exports = function (plop) {
  plop.setGenerator('component', {
    description: 'Create a component',

    // inquirer prompts
    prompts: [
      {
        type: 'input',
        name: 'name',
        message: 'What is yr component name?'
      }
    ],

    // actions to perform
    actions: [
      {
        type: 'add',
        path: '../components/{{pascalCase name}}/index.tsx',
        templateFile: 'templates/Component.tsx.hbs'
      },
      {
        type: 'add',
        path: '../components/{{pascalCase name}}/styles.ts',
        templateFile: 'templates/styles.ts.hbs'
      }
    ]
  })
}
