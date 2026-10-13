(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Input are two strings a and b consisting only of 1s and 0s. *)
(*     Perform binary XOR on these inputs and return result also as a string. *)
(*     >>> string_xor "010" "110" *)
(*     "100" *)
let rec string_xor (a : string) (b : string) : string =
  if a = "" || b = "" then ""
  else (int_of_char a) lxor (int_of_char b) |> char_of_int :: string_xor (List.tl a) (List.tl b)
|> String.of_list

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:4: Unbound value "String.of_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_xor (a : string) (b : string) : string =
  if a = "" || b = "" then ""
  else (String.of_list @@ List.map2 (fun x y -> if x = y then '0' else '1') (String.to_list a) (String.to_list b)) @@ List.nth a 0
  else ""
  else ""
|> String.of_list

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_xor (a : string) (b : string) : string =
  if a = "" || b = "" then ""
  else (String.of_list @@ List.map2 (fun x y -> if x = y then '0' else '1') (String.to_list a) (String.to_list b)) @@ List.nth a 0
  else ""
|> String.of_list

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_xor (a : string) (b : string) : string =
  if a = "" || b = "" then ""
  else (String.of_list @@ List.map2 (fun x y -> if x = y then '0' else '1') (String.to_list a) (String.to_list b)) @| (List.nth a 0)
  else ""
|> String.of_list

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_xor (a : string) (b : string) : string =
  if a = "" || b = "" then ""
  else (String.of_list @@ List.map2 (fun x y -> if x = y then '0' else '1') (String.to_list a) (String.to_list b)) @| (List.nth a 0)
  else ""
|> String.of_list

