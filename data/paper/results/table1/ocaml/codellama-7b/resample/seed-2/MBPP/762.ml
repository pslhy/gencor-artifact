(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given month number contains 30 days or not. Months are given as number from 1 to 12. *)
let rec check_monthnumber_number (monthnum3 : int) : bool =
 match monthnum3 with
 | 4 | 6 | 9 | 11 -> true
 | 2 -> let daynum <- is_leap_year (get_current_year ()) in
 match daynum with
 | 31 -> true
 | _ -> false
 | _ -> false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:20: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_monthnumber_number (monthnum3 : int) : bool =
  match monthnum3 with
  | 4 | 6 | 9 | 11 -> true
  | 2 -> let daynum = is_leap_year (get_current_year ()) in
    match daynum with
    | 31 -> true
    | _ -> false
    | _ -> false

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:23: Unbound value "is_leap_year" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_monthnumber_number (monthnum3 : int) : bool =
  match monthnum3 with
  | 4 | 6 | 9 | 11 -> true
  | 2 -> let daynum : Weekday.weekday = get_weekday (get_current_year (), monthnum3, 1) in
    match daynum with
    | Weekday.Tue | Weekday.Thu -> true
    | _ -> false
    | _ -> false

let get_weekday (year, month, day) =
  let ms = month * 30 in (* TODO: fix this *)
  let ds = day * 4 - 1 in
  Weekday.of_int
    (ds + (year - 1) * 365 + ms / 12 + ms mod 12 * 16 + (if is_leap_year year then 1 else 0))

let is_leap_year (year : int) : bool =
  year mod 4 = 0 && (year mod 100 <> 0 || year mod 400 = 0)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:23: Unbound module "Weekday" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_monthnumber_number (monthnum3 : int) : bool =
  match monthnum3 with
  | 4 | 6 | 9 | 11 -> true
  | 2 -> let daynum : int = get_weekday (get_current_year (), monthnum3, 1) in
    match daynum with
    | 2 | 4 -> true
    | _ -> false
    | _ -> false

let get_weekday (year, month, day) =
  let ms = month * 30 in (* TODO: fix this *)
  let ds = day * 4 - 1 in
  (ds + (year - 1) * 365 + ms / 12 + ms mod 12 * 16 + (if is_leap_year year then 1 else 0)) mod 7

let is_leap_year (year : int) : bool =
  year mod 4 = 0 && (year mod 100 <> 0 || year mod 400 = 0)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:29: Unbound value "get_weekday" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_monthnumber_number (monthnum3 : int) : bool =
  match monthnum3 with
  | 4 | 6 | 9 | 11 -> true
  | 2 -> let daynum : int = get_weekday (get_current_year (), monthnum3, 1) in
    match daynum with
    | 2 | 4 -> true
    | _ -> false
    | _ -> false

let get_weekday (year, month, day) =
  let ms = month * 30 in (* TODO: fix this *)
  let ds = day * 4 - 1 in
  (ds + (year - 1) * 365 + ms / 12 + ms mod 12 * 16 + (if is_leap_year year then 1 else 0)) mod 7

let is_leap_year (year : int) : bool =
  year mod 4 = 0 && (year mod 100 <> 0 || year mod 400 = 0)

