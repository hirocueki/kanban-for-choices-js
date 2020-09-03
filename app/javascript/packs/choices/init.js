import * as Choices from 'choices.js'

document.addEventListener('DOMContentLoaded', function () {

  new Choices('#choices-multiple-remove-button', {
    delimiter: ',',
    maxItemCount: 5,
    removeItemButton: true,
    noChoicesText: '選択されていません',
    itemSelectText: '選択してください',
    maxItemText: (maxItemCount) => {
      return `タスクにアサインできるのは ${maxItemCount} 人までです`;
    },
  });
});
