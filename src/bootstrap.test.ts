import { INestApplication, Logger } from '@nestjs/common';
import { NestFactory } from '@nestjs/core';

import { bootstrap } from './bootstrap';

describe('bootstrap function', () => {
  let app: INestApplication;

  afterEach(async () => {
    if (app) {
      await app.close();
    }
  });

  it('should create our nest application', async () => {
    const createSpy = jest.spyOn(NestFactory, 'create');
    Logger.overrideLogger(['error']);

    app = await bootstrap();
    expect(createSpy).toHaveBeenCalledTimes(1);

    createSpy.mockRestore();
  });
});
