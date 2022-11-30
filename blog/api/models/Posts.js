/**
 * Posts.js
 *
 * @description :: A model definition represents a database table/collection.
 * @docs        :: https://sailsjs.com/docs/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
    pUsername: {
      type: 'string',
    },
    pCategoryname: {
      type: 'string',
    },
    pTitle: {
      type: 'string',
    },
    pContent: {
      type: 'string',
    }
  },

};

