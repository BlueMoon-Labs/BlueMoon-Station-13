import { FeatureDropdownInput, Feature, FeatureNumberInput, FeatureNumeric, FeatureChoiced, FeatureToggle, FeatureValueProps, FeatureTriColorInput, FeatureTriBoolInput, CheckboxInput, FeatureChoicedServerData } from '../../base';

export const feature_butt: Feature<string> = {
  name: 'Половые Органы. Попа. Тип',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const butt_size: FeatureNumeric = {
  name: 'Половые Органы. Попа. Размер',
  component: FeatureNumberInput,
};

export const butt_skin_tone: FeatureToggle = {
  name: 'Половые Органы. Попа. Под цвет кожи',
  component: CheckboxInput,
};

export const butt_skin_color: FeatureToggle = {
  name: 'Половые Органы. Попа. Под цвет тела',
  component: CheckboxInput,
};

export const butt_color: Feature<string[]> = {
  name: 'Половые Органы. Попа. Цвет',
  component: FeatureTriColorInput,
};

export const butt_emissive: Feature<boolean[]> = {
  name: 'Половые Органы. Попа. Светится',
  component: FeatureTriBoolInput,
};

export const feature_belly: Feature<string> = {
  name: 'Половые Органы. Живот. Тип',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const belly_size: FeatureNumeric = {
  name: 'Половые Органы. Живот. Размер',
  component: FeatureNumberInput,
};

export const belly_skin_tone: FeatureToggle = {
  name: 'Половые Органы. Живот. Под цвет кожи',
  component: CheckboxInput,
};

export const belly_skin_color: FeatureToggle = {
  name: 'Половые Органы. Живот. Под цвет тела',
  component: CheckboxInput,
};

export const belly_color: Feature<string[]> = {
  name: 'Половые Органы. Живот. Цвет',
  component: FeatureTriColorInput,
};

export const belly_emissive: Feature<boolean[]> = {
  name: 'Половые Органы. Живот. Светится',
  component: FeatureTriBoolInput,
};

export const body_size: FeatureNumeric = {
  name: 'Размер Тела Персонажа',
  component: FeatureNumberInput,
};

export const erp_status_pref: FeatureChoiced = {
  name: 'ЕРП Статус',
  component: FeatureDropdownInput,
};

export const erp_status_pref_nc: FeatureChoiced = {
  name: 'ЕРП Нонкон-Статус',
  component: FeatureDropdownInput,
};

export const erp_status_pref_v: FeatureChoiced = {
  name: 'ЕРП Вор-Статус',
  component: FeatureDropdownInput,
};

export const erp_status_pref_mechanics: FeatureChoiced = {
  name: 'ЕРП Механика-Статус',
  component: FeatureDropdownInput,
};
