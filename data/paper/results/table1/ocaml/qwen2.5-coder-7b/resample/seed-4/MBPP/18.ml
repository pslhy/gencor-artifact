(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove characters from the first string which are present in the second string. *)
let rec remove_dirty_chars (string : string) (second_string : string) : string = 
  let rec helper chars to_remove result = 
    match chars with
    | [] -> List.rev result
    | c :: cs -> 
        if List.mem c to_remove then 
          helper cs to_remove result
        else 
          helper cs to_remove (c :: result)
  in 
  let to_remove = List.of_string second_string in
  helper (List.of_string string) to_remove []

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:19: Unbound value "List.of_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_dirty_chars (string : string) (second_string : string) : string = 
  let rec helper chars to_remove result = 
    match chars with
    | [] -> List.rev result
    | c :: cs -> 
        if List.mem c to_remove then 
          helper cs to_remove result
        else 
          helper cs to_remove (c :: result)
  in 
  let to_remove = String.to_list second_string in
  helper (String.to_list string) to_remove []

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:19: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_dirty_chars (string : string) (second_string : string) : string = 
  let rec helper chars to_remove result = 
    match chars with
    | [] -> List.rev result
    | c :: cs -> 
        if List.mem c to_remove then 
          helper cs to_remove result
        else 
          helper cs to_remove (c :: result)
  in 
  let to_remove = List.of_string second_string in
  helper (List.of_string string) to_remove []

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:19: Unbound value "List.of_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_dirty_chars (string : string) (second_string : string) : string = 
  let rec helper chars to_remove result = 
    match chars with
    | [] -> List.rev result
    | c :: cs -> 
        if List.mem c to_remove then 
          helper cs to_remove result
        else 
          helper cs to_remove (c :: result)
  in 
  let to_remove = List.of_string second_string in
  helper (String.to_list string) to_remove []

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:19: Unbound value "List.of_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_dirty_chars (string : string) (second_string : string) : string = 
  let rec helper chars to_remove result = 
    match chars with
    | [] -> List.rev result
    | c :: cs -> 
        if List.mem c to_remove then 
          helper cs to_remove result
        else 
          helper cs to_remove (c :: result)
  in 
  let to_remove = List.of_string second_string in
  helper (String.to_list string) to_remove []

