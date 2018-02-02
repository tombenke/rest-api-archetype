const _ = require('lodash')
const expect = require('expect')
const services = require('./index')

const hasAllKeys = (obj, keys) => _.isEmpty(_.difference(keys, _.keys(obj)))

describe('rest-api', () => {

    it('#load - packageInfo', () => {
        const expectedKeys = ['name', 'description', 'version', 'authorName', 'authorEmail', 'services']
        expect(hasAllKeys(services, expectedKeys)).toEqual(true)
    })

    it('#load - URIs', () => {
        const uris = _.keys(services.services.getServices())
        expect(uris).toEqual([
            "/monitoring/isAlive"
        ])
    })
})
