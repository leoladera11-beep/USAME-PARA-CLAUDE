import { test, expect } from '@playwright/test';
import path from 'node:path';

test('fullscreen survives touch, settings and visibility changes without pausing', async ({ page }) => {
  await page.setViewportSize({ width: 390, height: 844 });
  await page.goto('/');
  await page.locator('#mobileVideosBtn').click();
  await page.locator('#videoInput').setInputFiles(path.resolve('tests/fixtures/h264.mp4'));
  await expect(page.locator('#videosList')).toContainText('h264.mp4');
  await page.locator('[data-video-play]').first().click();
  await expect(page.locator('#localVideo')).toBeVisible();
  await page.evaluate(() => { document.querySelector('#localVideo').loop = true; });
  await page.getByRole('button', { name: 'Pantalla completa', exact: true }).click();
  await expect.poll(() => page.evaluate(() => document.fullscreenElement?.id)).toBe('videoViewer');
  await page.locator('#localVideo').dispatchEvent('pointerdown', { clientX: 60, clientY: 60 });
  await expect.poll(() => page.evaluate(() => document.fullscreenElement?.id)).toBe('videoViewer');
  await page.getByRole('button', { name: 'Ajustes del vídeo', exact: true }).click();
  await expect(page.locator('#videoSettings')).toBeVisible();
  await page.locator('#videoSpeed').selectOption('1.5');
  await expect.poll(() => page.locator('#localVideo').evaluate(v => v.playbackRate)).toBe(1.5);
  await page.getByRole('button', { name: 'Cerrar ajustes', exact: true }).click();
  await page.getByRole('button', { name: 'Ajustes del vídeo', exact: true }).click();
  await page.locator('#videoSound').click();
  await expect(page.locator('#soundDialog')).toBeVisible();
  await page.getByRole('button', { name: 'Cerrar ajustes de sonido', exact: true }).click();
  await expect.poll(() => page.evaluate(() => document.getElementById('soundDialog').parentElement.tagName)).toBe('BODY');
  await page.evaluate(() => {
    Object.defineProperty(document, 'hidden', { configurable: true, value: true });
    document.dispatchEvent(new Event('visibilitychange'));
  });
  await expect.poll(() => page.locator('#localVideo').evaluate(v => v.paused)).toBe(false);
  await expect(page.locator('.video-viewer-head')).toBeHidden();
  await page.getByRole('button', { name: 'Salir de pantalla completa', exact: true }).click();
  await expect.poll(() => page.evaluate(() => document.fullscreenElement)).toBe(null);
});

test('Windows fullscreen uses native window and exits explicitly', async ({ page }) => {
  await page.goto('/');
  await page.evaluate(() => {
    window.fullscreenCalls = [];
    window.BrisaDesktop = { fullscreen: async value => window.fullscreenCalls.push(value) };
    document.querySelector('#musicView').hidden = true;
    document.querySelector('#videosPane').hidden = false;
    document.querySelector('#videoViewer').hidden = false;
    document.documentElement.style.overflowY='scroll';
    document.body.style.overflowY='scroll';
    document.body.style.minHeight='3000px';
    document.documentElement.style.scrollbarGutter='stable';
  });
  await page.getByRole('button', { name: 'Pantalla completa', exact: true }).click();
  await expect(page.locator('#videoViewer')).toHaveClass(/video-fullscreen/);
  await expect(page.locator('html')).toHaveClass(/brisa-video-fullscreen/);
  expect(await page.evaluate(()=>{
    const v=document.querySelector('#videoViewer'),r=v.getBoundingClientRect();
    const ancestors=[];for(let p=v.parentElement;p;p=p.parentElement)ancestors.push(p);
    return ancestors.every(p=>getComputedStyle(p).overflowY==='hidden')&&getComputedStyle(document.documentElement).scrollbarGutter==='auto'&&r.top===0&&r.left===0&&Math.abs(r.width-innerWidth)<1&&Math.abs(r.height-innerHeight)<1;
  })).toBe(true);
  await page.locator('#localVideo').dispatchEvent('pointerdown');
  await expect(page.locator('#videoViewer')).toHaveClass(/video-fullscreen/);
  await page.keyboard.press('Escape');
  await expect(page.locator('#videoViewer')).not.toHaveClass(/video-fullscreen/);
  await expect(page.locator('html')).not.toHaveClass(/brisa-video-fullscreen/);
  expect(await page.evaluate(()=>document.querySelectorAll('.brisa-video-scroll-lock').length)).toBe(0);
  expect(await page.evaluate(()=>getComputedStyle(document.documentElement).overflowY)).toBe('scroll');
  expect(await page.evaluate(() => window.fullscreenCalls)).toEqual([true, false]);
});
