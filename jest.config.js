const { pathsToModuleNameMapper } = require('ts-jest/utils');

const {
  compilerOptions: { paths: tsconfigPaths },
} = require('./tsconfig');

/** @type {import('@jest/types').Config.InitialOptions} */

module.exports = {
  roots: ['<rootDir>/src/'],
  moduleFileExtensions: ['js', 'json', 'ts'],
  moduleNameMapper: {
    ...pathsToModuleNameMapper(tsconfigPaths, { prefix: '<rootDir>/src' }),
  },
  testRegex: '\\.(test|spec)\\.ts$',
  transform: {
    '^.+\\.(t|j)s$': 'ts-jest',
  },
  collectCoverage: true,
  collectCoverageFrom: ['**/*.ts'],
  coverageReporters: ['json-summary', 'text', 'lcov'],
  coveragePathIgnorePatterns: ['/tests-related/', '.dto\\.ts'],
  coverageDirectory: './coverage',
  testEnvironment: 'node',
  testTimeout: 25000,
};