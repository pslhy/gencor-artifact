(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     For a given string, flip lowercase characters to uppercase and uppercase to lowercase. *)
(*     >>> flip_case "Hello" *)
(*     "hELLO" *)
let rec flip_case (string : string) : string = 
  let f c = 
    if Char.is_uppercase c then Char.lowercase c 
    else if Char.is_lowercase c then Char.uppercase c 
    else c in
  let s = Array.of_list (String.to_list string) in
  Array.iteri (fun i c -> s.(i) <- f c) s;
  Array.to_list s |> String.of_list

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:8: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec flip_case (string : string) : string = 
  let f c = 
    if Char.uppercase_ascii c = c then Char.lowercase_ascii c 
    else if Char.lowercase_ascii c = c then Char.uppercase_ascii c 
    else c in
  let s = Array.of_list (String.to_list string) in
  Array.iteri (fun i c -> s.(i) <- f c) s;
  Array.to_list s |> String.of_list

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:26: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec flip_case (string : string) : string = 
  let f c = 
    if Char.uppercase_ascii c = c then Char.lowercase_ascii c 
    else if Char.lowercase_ascii c = c then Char.uppercase_ascii c 
    else c in
  let s = Array.of_list (String.fold_left (fun acc c -> c :: acc) [] string |> List.rev) in
  Array.iteri (fun i c -> s.(i) <- f c) s;
  Array.to_list s |> String.of_list

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:22: Unbound value "String.of_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec flip_case (string : string) : string = 
  let f c = 
    if Char.uppercase_ascii c = c then Char.lowercase_ascii c 
    else if Char.lowercase_ascii c = c then Char.uppercase_ascii c 
    else c in
  let s = Array.of_list (String.fold_left (fun acc c -> c :: acc) [] string |> List.rev) in
  Array.map f s |> Array.to_list |> String.of_list

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:37: Unbound value "String.of_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec flip_case (string : string) : string = 
  let f c = 
    if Char.uppercase_ascii c = c then Char.lowercase_ascii c 
    else if Char.lowercase_ascii c = c then Char.uppercase_ascii c 
    else c in
  Array.map f (String.to_array string) |> Array.to_list |> String.of_list

