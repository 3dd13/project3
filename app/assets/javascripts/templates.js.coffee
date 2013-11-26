// @project3 =
//   eventsTemplate: Handlebars.compile "
//     <ul>
//       {{#each events}}
//         <li data-id=\"{{id}}\">{{name}}</li>
//       {{/each}}
//     </ul>
//   "

//   eventTemplate: Handlebars.compile "
//     {{#each events}}
//       <p class=\"event_name\">{{name}}</p>
//       <p><a id=\"back-to-events\" href=\"#\">Back to events</a></p>
//     {{/each}}
//   "