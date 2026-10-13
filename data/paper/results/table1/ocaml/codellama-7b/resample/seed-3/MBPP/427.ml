(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format. *)
let rec change_date_format (dt : string) : string =
  if dt = "" then ""
  else
    let date_parts = String.split_on_char '-' dt in
    let day = List.nth date_parts 2 in
    let month = List.nth date_parts 1 in
    let year = List.nth date_parts 0 in
    day ^ "-" ^ month ^ "-" ^ year


// Tests:
assert ((change_date_format "2023-02-28") = "28-02-2023");
assert ((change_date_format "2022-11-04") = "04-11-2022");
assert ((change_date_format "2010-03-15") = "15-03-2010");
assert ((change_date_format "1999-02-28") = "28-02-1999")

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec change_date_format (dt : string) : string =
  if String.contains dt '-' then
    let date_parts = String.split_on_char '-' dt in
    let day = List.nth date_parts in
    let month = List.nth date_parts in
    let year = List.nth date_parts in
    day ^ "-" ^ month ^ "-" ^ year
  else
    dt

// Tests:
assert ((change_date_format "2023-02-28") = "28-02-2023");
assert ((change_date_format "2022-11-04") = "04-11-2022");
assert ((change_date_format "2010-03-15") = "15-03-2010");
assert ((change_date_format "1999-02-28") = "28-02-1999")

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec change_date_format (dt : string) : string =
  if String.contains dt '-' then
    let date_parts = String.split_on_char '-' dt in
    let day = List.nth date_parts 0 in
    let month = List.nth date_parts 1 in
    let year = List.nth date_parts 2 in
    day ^ "-" ^ month ^ "-" ^ year
  else
    dt

// Tests:
assert ((change_date_format "2023-02-28") = "28-02-2023");
assert ((change_date_format "2022-11-04") = "04-11-2022");
assert ((change_date_format "2010-03-15") = "15-03-2010");
assert ((change_date_format "1999-02-28") = "28-02-1999")

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec change_date_format (dt : string) : string =
  if List.mem "-" dt then
    let date_parts = String.split_on_char '-' dt in
    let day = List.nth date_parts 0 in
    let month = List.nth date_parts 1 in
    let year = List.nth date_parts 2 in
    day ^ "-" ^ month ^ "-" ^ year
  else
    dt

// Tests:
assert ((change_date_format "2023-02-28") = "28-02-2023");
assert ((change_date_format "2022-11-04") = "04-11-2022");
assert ((change_date_format "2010-03-15") = "15-03-2010");
assert ((change_date_format "1999-02-28") = "28-02-1999")

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec change_date_format (dt : string) : string =
  let date_parts = String.split_on_char '-' dt in
  let day = List.hd date_parts in
  let month = List.nth date_parts 1 in
  let year = List.nth date_parts 2 in
  day ^ "-" ^ month ^ "-" ^ year

// Tests:
assert ((change_date_format "2023-02-28") = "28-02-2023");
assert ((change_date_format "2022-11-04") = "04-11-2022");
assert ((change_date_format "2010-03-15") = "15-03-2010");
assert ((change_date_format "1999-02-28") = "28-02-1999")

