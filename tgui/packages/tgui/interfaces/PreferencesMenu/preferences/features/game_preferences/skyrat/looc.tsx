import { CheckboxInput, FeatureToggle } from '../../base';

export const looc_admin_pref: FeatureToggle = {
  name: 'Видеть LOOC',
  category: 'ADMIN',
  description:
    'Toggles whether you want to see LOOC anywhere as an admin or not.',
  component: CheckboxInput,
};
