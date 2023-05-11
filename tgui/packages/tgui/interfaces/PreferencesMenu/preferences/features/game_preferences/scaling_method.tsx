import { createDropdownInput, Feature } from '../base';

export const scaling_method: Feature<string> = {
  name: 'Графика. Скейлинг',
  category: 'UI',
  component: createDropdownInput({
    blur: 'Bilinear',
    distort: 'Nearest Neighbor',
    normal: 'Point Sampling',
  }),
};
