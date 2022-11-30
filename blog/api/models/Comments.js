/**
 * Comments.js
 *
 * @description :: A model definition represents a database table/collection.
 * @docs        :: https://sailsjs.com/docs/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
    cmPostId: {
      type: 'number',
    },
    cmContent: {
      type: 'string',
    },
    cmUsername: {
      type: 'string',
    }
  },

};

