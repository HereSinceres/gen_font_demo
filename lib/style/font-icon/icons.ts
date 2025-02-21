export type IconsId =
  | "translate"
  | "shopping-bag"
  | "person"
  | "location-marker"
  | "information-circle";

export type IconsKey =
  | "Translate"
  | "ShoppingBag"
  | "Person"
  | "LocationMarker"
  | "InformationCircle";

export enum Icons {
  Translate = "translate",
  ShoppingBag = "shopping-bag",
  Person = "person",
  LocationMarker = "location-marker",
  InformationCircle = "information-circle",
}

export const ICONS_CODEPOINTS: { [key in Icons]: string } = {
  [Icons.Translate]: "61697",
  [Icons.ShoppingBag]: "61698",
  [Icons.Person]: "61699",
  [Icons.LocationMarker]: "61700",
  [Icons.InformationCircle]: "61701",
};
