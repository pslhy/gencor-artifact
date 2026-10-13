(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise. *)
let rec text_lowercase_underscore (text : string) : bool = 
  let rec helper (chars : char list) : bool = 
    match chars with
    | [] -> true
    | '_' :: rest -> 
        let lower_rest = List.filter (fun c -> Char.is_lowercase c) rest in
        helper lower_rest
    | c :: rest -> if Char.is_lowercase c then helper rest else false
  in
  helper (String.to_list text)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:48: Unbound value "Char.is_lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_lowercase_underscore (text : string) : bool = 
  let rec helper (chars : char list) : bool = 
    match chars with
    | [] -> true
    | '_' :: rest -> 
        let lower_rest = List.filter (fun c -> Char.lowercase_ascii c = c) rest in
        helper lower_rest
    | c :: rest -> if Char.lowercase_ascii c = c then helper rest else false
  in
  helper (String.to_list text)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:11: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_lowercase_underscore (text : string) : bool = 
  let rec helper (chars : char array) (index : int) (len : int) : bool = 
    if index = len then true
    else if chars.(index) = '_' then 
      let rec filter_rest (filter_index : int) = 
        if filter_index = len then true
        else if chars.(filter_index) = '_' then false
        else if Char.lowercase_ascii chars.(filter_index) = chars.(filter_index) then filter_rest (filter_index + 1)
        else filter_rest (filter_index + 1)
      in
      filter_rest (index + 1)
    else if Char.lowercase_ascii chars.(index) = chars.(index) then helper chars (index + 1) len
    else false
  in
  helper (String.to_array text) 0 (String.length text)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:11: Unbound value "String.to_array" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_lowercase_underscore (text : string) : bool = 
  let rec helper (chars : char array) (index : int) (len : int) : bool = 
    if index = len then true
    else if chars.(index) = '_' then 
      let rec filter_rest (filter_index : int) = 
        if filter_index = len then true
        else if chars.(filter_index) = '_' then false
        else if Char.lowercase_ascii chars.(filter_index) = chars.(filter_index) then filter_rest (filter_index + 1)
        else filter_rest (filter_index + 1)
      in
      filter_rest (index + 1)
    else if Char.lowercase_ascii chars.(index) = chars.(index) then helper chars (index + 1) len
    else false
  in
  helper (Caml.Strings.String.to_array text) 0 (String.length text)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:11: Unbound module "Caml" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_lowercase_underscore (text : string) : bool = 
  let rec helper (chars : char array) (index : int) (len : int) : bool = 
    if index = len then true
    else if chars.(index) = '_' then 
      let rec filter_rest (filter_index : int) = 
        if filter_index = len then true
        else if chars.(filter_index) = '_' then false
        else if Char.lowercase_ascii chars.(filter_index) = chars.(filter_index) then filter_rest (filter_index + 1)
        else filter_rest (filter_index + 1)
      in
      filter_rest (index + 1)
    else if Char.lowercase_ascii chars.(index) = chars.(index) then helper chars (index + 1) len
    else false
  in
  helper (String.to_array text) 0 (String.length text)

